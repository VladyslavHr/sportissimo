<?php

declare(strict_types=1);

namespace App\Presenters;

use Nette;
use App\Model\BrandFacade;
use Nette\Application\UI\Form;
use Nette\Utils\Paginator;
use Nette\Http\Request;
use Nette\Database\Explorer;

final class HomePresenter extends Nette\Application\UI\Presenter
{
    private const ITEMS_PER_PAGE = 5; 
    private int $itemsPerPage;
    
	public function __construct(
		private BrandFacade $facade,
        private Nette\Database\Explorer $database
	) {
        $this->itemsPerPage = self::ITEMS_PER_PAGE;
	}

    public function renderDefault(int $page = 1, int $itemsPerPage = null, string $sort = null): void
	{

        if ($itemsPerPage !== null) {
            $this->itemsPerPage = $itemsPerPage;
        }
        
        $brandsCount = $this->facade->getBrandsCount();
        $brands = $this->facade->getPublicBrands();
        
        $lastPage = (int) ceil($brandsCount / $this->itemsPerPage);
        
        if ($page > $lastPage) {
            $this->redirect('this', ['page' => $lastPage, 'itemsPerPage' => $this->itemsPerPage]);
        }
        
        $offset = ($page - 1) * $this->itemsPerPage;
        $limit = $this->itemsPerPage;

        if ($sort === 'asc') {
            $brands->order('title');
        } elseif ($sort === 'desc') {
            $brands->order('title DESC');
        } else {
            $brands->order('title ASC'); 
        }
        
        $this->template->brands = $brands->limit($limit, $offset);
        $this->template->brandsCount = $brandsCount;
        $this->template->page = $page;
        $this->template->lastPage = $lastPage;
        $this->template->itemsPerPage = $this->itemsPerPage;
        $this->template->sort = $sort;
	}

    protected function createComponentItemsPerPageForm(): Form
    {
        $form = new Form();
        $form->addSelect('itemsPerPage', 'Items Per Page', [5 => 5, 10 => 10, 20 => 20])
            ->setDefaultValue($this->itemsPerPage)
            ->setHtmlAttribute('onchange', 'this.form.submit()');
        $form->onSuccess[] = [$this, 'itemsPerPageFormSucceeded'];
        return $form;
    }

    protected function createComponentSortForm(): Form
    {
        $form = new Form();
        $form->addSelect('sort', 'Sort', ['asc' => 'Ascending', 'desc' => 'Descending'])
            ->setDefaultValue('')
            ->setHtmlAttribute('onchange', 'this.form.submit()');
        return $form;
    }

    public function itemsPerPageFormSucceeded(Form $form, \stdClass $values): void
    {
        $this->redirect('this', ['itemsPerPage' => $values->itemsPerPage, 'page' => $values->getParameter('page')]);
    }

    protected function createComponentBrandForm(): Form
    {
        $form = new Form;
        $form->addText('title', 'Titulek:')
            ->setRequired()
            ->setHtmlAttribute('class', 'input-field');
        $form->addTextArea('description', 'Obsah:')
            ->setRequired()
            ->setHtmlAttribute('class', 'materialize-textarea');

        $form->addSubmit('send', 'Uložit a publikovat')
        ->setHtmlAttribute('class', 'waves-effect waves-light btn');
        $form->onSuccess[] = $this->brandFormSucceeded(...);

        return $form;
    }


    private function brandFormSucceeded(array $data): void
    {
        $brandId = $this->getParameter('brandId');

        if ($brandId) {
            $brand = $this->database
                ->table('brands')
                ->get($brandId);
            $brand->update($data);

            $this->flashMessage("Příspěvek byl úspěšně upraven.", 'success');

            $this->redirect('this');
        } else {
            $brand = $this->database
                ->table('brands')
                ->insert($data);

            $this->flashMessage("Příspěvek byl úspěšně publikován.", 'success');

            $this->redirect('this');
        }
    }

    public function renderEdit(int $brandId): void
    {
        $brand = $this->database
            ->table('brands')
            ->get($brandId);

        if (!$brand) {
            $this->error('Brand not found');
        }

        $this->getComponent('brandForm')
            ->setDefaults($brand->toArray());
    }

}
