<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
// auth





// $routes->get('auth', 'Api\ExhibitionController::index');
// $routes->get('auth/(:segment)', 'Api\ExhibitionController::show/$1');
$routes->post('auth/register', 'Api\AuthController::register');
$routes->post('auth/login', 'Api\AuthController::login');
$routes->get('auth/me', 'Api\AuthController::me', ['filter' => 'auth']);
// $routes->put('auth/(:segment)', 'Api\ExhibitionController::update/$1');
// $routes->delete('auth/(:segment)', 'Api\ExhibitionController::destroy/$1');


$routes->get('exhibitions', 'Api\ExhibitionController::index', ['filter' => 'auth']);
$routes->get('exhibitions/(:segment)', 'Api\ExhibitionController::show/$1',  ['filter' => 'auth']);
$routes->post('exhibitions/', 'Api\ExhibitionController::create',  ['filter' => 'auth']);
$routes->put('exhibitions/(:segment)', 'Api\ExhibitionController::update/$1',  ['filter' => 'auth']);
$routes->delete('exhibitions/(:segment)', 'Api\ExhibitionController::destroy/$1',  ['filter' => 'auth']);


$routes->get('categories/', 'Api\CategoryController::index', ['filter' => 'auth']);
$routes->get('categories/(:segment)', 'Api\CategoryController::show/$1', ['filter' => 'auth']);
$routes->post('categories/', 'Api\CategoryController::create', ['filter' => 'auth']);
$routes->put('categories/(:segment)', 'Api\CategoryController::update/$1', ['filter' => 'auth']);
$routes->delete('categories/(:segment)', 'Api\CategoryController::destroy/$1', ['filter' => 'auth']);


$routes->get('badges/collections/', 'Api\BadgeCollectionController::index', ['filter' => 'auth']);
$routes->get('badges/collections/(:segment)', 'Api\BadgeCollectionController::show/$1', ['filter' => 'auth']);
$routes->post('badges/collections/', 'Api\BadgeCollectionController::create', ['filter' => 'auth']);
$routes->put('badges/collections/(:segment)', 'Api\BadgeCollectionController::update/$1', ['filter' => 'auth']);
$routes->delete('badges/collections/(:segment)', 'Api\BadgeCollectionController::destroy/$1', ['filter' => 'auth']);


$routes->get('badges/inventories/', 'Api\BadgeInventoryController::index', ['filter' => 'auth']);
$routes->get('badges/inventories/(:segment)', 'Api\BadgeInventoryController::show/$1', ['filter' => 'auth']);
$routes->post('badges/inventories/', 'Api\BadgeInventoryController::create', ['filter' => 'auth']);
$routes->put('badges/inventories/(:segment)', 'Api\BadgeInventoryController::update/$1', ['filter' => 'auth']);
$routes->delete('badges/inventories/(:segment)', 'Api\BadgeInventoryController::destroy/$1', ['filter' => 'auth']);



$routes->get('products/members/', 'Api\ProductMemberController::index', ['filter' => 'auth']);
$routes->get('products/members/(:segment)', 'Api\ProductMemberController::show/$1', ['filter' => 'auth']);
$routes->post('products/members/', 'Api\ProductMemberController::create', ['filter' => 'auth']);
$routes->put('products/members/(:segment)', 'Api\ProductMemberController::update/$1', ['filter' => 'auth']);
$routes->delete('products/members/(:segment)', 'Api\ProductMemberController::destroy/$1', ['filter' => 'auth']);



$routes->get('guestbooks/', 'Api\GuestBookController::index', ['filter' => 'auth']);
$routes->get('guestbooks/(:segment)', 'Api\GuestBookController::show/$1', ['filter' => 'auth']);
$routes->post('guestbooks/', 'Api\GuestBookController::create', ['filter' => 'auth']);
$routes->put('guestbooks/(:segment)', 'Api\GuestBookController::update/$1', ['filter' => 'auth']);
$routes->delete('guestbooks/(:segment)', 'Api\GuestBookController::destroy/$1', ['filter' => 'auth']);


$routes->get('products/thumbnails', 'Api\ProductThumbnailController::index', ['filter' => 'auth']);
$routes->get('products/thumbnails/(:segment)', 'Api\ProductThumbnailController::show/$1', ['filter' => 'auth']);
$routes->post('products/thumbnails', 'Api\ProductThumbnailController::create', ['filter' => 'auth']);
$routes->put('products/thumbnails/(:segment)', 'Api\ProductThumbnailController::update/$1', ['filter' => 'auth']);
$routes->delete('products/thumbnails/(:segment)', 'Api\ProductThumbnailController::destroy/$1', ['filter' => 'auth']);



$routes->get('/', 'Home::index');

$routes->get('products', 'Api\Product::index', ['filter' => 'auth']);
$routes->get('products/(:segment)/author', 'Api\Product::getAuthor/$1');
$routes->post('products', 'Api\Product::create');
$routes->get('products/(:segment)', 'Api\Product::show/$1');
$routes->put('/products/(:segment)', 'Api\Product::update/$1');
$routes->delete('/products/(:segment)', 'Api\Product::destroy/$1');

$routes->get('/products/add', 'ProductController::add');
$routes->get('/badges/inventory', 'BadgeInventory::index');
$routes->get('/users', 'Users::index', ['filter' => 'auth']);
$routes->get('/users/find/(:any)', 'Users::find', ['filter' => 'auth']);




/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
