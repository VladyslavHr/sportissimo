<?php
namespace App\Presenters;

use Nette;
use Nette\Application\UI\Form;

final class EditPresenter extends Nette\Application\UI\Presenter
{
	public function __construct(
		private Nette\Database\Explorer $database,
	) {
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

        $form->addSubmit('send', 'Uložit')
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

            $this->flashMessage("Značka byl úspěšně upravena.", 'success');

        } else {
            $brand = $this->database
                ->table('brands')
                ->insert($data);

            $this->flashMessage("Značka byla úspěšně vytvořena.", 'success');
        }

        $this->redirect('Home:default');
    }

    public function renderEdit(int $brandId): void
    {
        $brand = $this->database
            ->table('brands')
            ->get($brandId);

        if (!$brand) {
            $this->error('Značka ne existuje');
        }

        $this->getComponent('brandForm')
            ->setDefaults($brand->toArray());
    }

    public function actionDelete(int $brandId): void
    {
        $brand = $this->database
            ->table('brands')
            ->get($brandId);

        if (!$brand) {
            $this->error('Značka ne existuje');
        }

        $brand->delete();
        $this->flashMessage("Značka úspěšně vymazana.", 'danger');
        $this->redirect('Home:default');
    }
}