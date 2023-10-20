<?php
namespace App\Model;

use Nette;

final class BrandFacade
{

	public function __construct(
		private Nette\Database\Explorer $database,
	) {

	}

    private const ITEMS_PER_PAGE = 5; // количество брендов на странице

	public function getPublicBrands(): Nette\Database\Table\Selection
	{
		return $this->database->table('brands');
	}


	public function getBrandsCount(): int
	{
		return $this->database->table('brands')->count('*');
	}

    public function saveBrand(Brand $brand): void
    {
        $this->database->table('brands')->insert([
            'title' => $brand->getTitle(),
            'description' => $brand->getDescription(),
        ]);
    }
}