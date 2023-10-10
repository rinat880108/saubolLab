<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

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
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
// $routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');
//$routes->group("api", /*["namespace" => "MIS\API\v1"] ,*/ static function($routes){

   $routes->get("api/persons/get", "Persons::getOne");
   $routes->post("api/persons/get", "Persons::getOne");
   
   $routes->get("api/persons/save", "Persons::saveOne"); 
   $routes->post("api/persons/save", "Persons::saveOne");


   $routes->get("api/addresses/list", "Addresses::getList");
   $routes->post("api/addresses/list", "Addresses::getList");

   $routes->get("api/addresses/get", "Addresses::getOne");
   $routes->post("api/addresses/get", "Adresses::getOne");
   
   $routes->get("api/addresses/save", "Addresses::saveOne"); 
   $routes->post("api/addresses/save", "Addresses::saveOne");

   $routes->get("api/emails/list", "Emails::getList");
   $routes->post("api/emails/list", "Emails::getList");

   $routes->get("api/emails/get", "Emails::getOne");
   $routes->post("api/emails/get", "Emails::getOne");
   
   $routes->get("api/emails/save", "Emails::saveOne"); 
   $routes->post("api/emails/save", "Emails::saveOne");
   
   $routes->get("api/phones/list", "Phones::getList");
   $routes->post("api/phones/list", "Phones::getList");

   $routes->get("api/phones/get", "Phones::getOne");
   $routes->post("api/phones/get", "Phones::getOne");
   
   $routes->get("api/phones/save", "Phones::saveOne"); 
   $routes->post("api/phones/save", "Phones::saveOne");

   $routes->get("api/patients/list", "Patients::getList");
   $routes->post("api/patients/list", "Patients::getList");

   $routes->get("api/patients/get", "Patients::getOne");
   $routes->post("api/patients/get", "Patients::getOne");
   
   $routes->get("api/patients/save", "Patients::saveOne"); 
   $routes->post("api/patients/save", "Patients::saveOne");


   $routes->get("api/heights/list", "Heights::getList");
   $routes->post("api/heights/list", "Heights::getList");

   $routes->get("api/heights/get", "Heights::getOne");
   $routes->post("api/heights/get", "Heights::getOne");
   
   $routes->get("api/heights/save", "Heights::saveOne"); 
   $routes->post("api/heights/save", "Heights::saveOne");

   $routes->get("api/weights/list", "Weights::getList");
   $routes->post("api/weights/list", "Weights::getList");

   $routes->get("api/weights/get", "Weights::getOne");
   $routes->post("api/weights/get", "Weights::getOne");
   
   $routes->get("api/weights/save", "Weights::saveOne"); 
   $routes->post("api/weights/save", "Weights::saveOne");

   $routes->get("api/dispancer/list", "Dispancer::getList");
   $routes->post("api/dispancer/list", "Dispancer::getList");

   $routes->get("api/dispancer/get", "Dispancer::getOne");
   $routes->post("api/dispancer/get", "Dispancer::getOne");
   
   $routes->get("api/dispancer/save", "Dispancer::saveOne"); 
   $routes->post("api/dispancer/save", "Dispancer::saveOne");

   $routes->get("api/disabled/list", "Disabled::getList");
   $routes->post("api/disabled/list", "Disabled::getList");

   $routes->get("api/disabled/get", "Disabled::getOne");
   $routes->post("api/disabled/get", "Disabled::getOne");
   
   $routes->get("api/disabled/save", "Disabled::saveOne"); 
   $routes->post("api/disabled/save", "Disabled::saveOne");

   $routes->get("api/smoke/list", "Smoke::getList");
   $routes->post("api/smoke/list", "Smoke::getList");

   $routes->get("api/smoke/get", "Smoke::getOne");
   $routes->post("api/smoke/get", "Smoke::getOne");
   
   $routes->get("api/smoke/save", "Smoke::saveOne"); 
   $routes->post("api/smoke/save", "Smoke::saveOne");

   $routes->get("api/activ/list", "Activ::getList");
   $routes->post("api/activ/list", "Activ::getList");

   $routes->get("api/activ/get", "Activ::getOne");
   $routes->post("api/activ/get", "Activ::getOne");
   
   $routes->get("api/activ/save", "Activ::saveOne"); 
   $routes->post("api/activ/save", "Activ::saveOne");

   $routes->get("api/alco/list", "Alco::getList");
   $routes->post("api/alco/list", "Alco::getList");

   $routes->get("api/alco/get", "Alco::getOne");
   $routes->post("api/alco/get", "Alco::getOne");
   
   $routes->get("api/alco/save", "Alco::saveOne"); 
   $routes->post("api/alco/save", "Alco::saveOne");

   $routes->get("api/place/list", "Place::getList");
   $routes->post("api/place/list", "Place::getList");

   $routes->get("api/place/get", "Place::getOne");
   $routes->post("api/place/get", "Place::getOne");
   
   $routes->get("api/place/save", "Place::saveOne"); 
   $routes->post("api/place/save", "Place::saveOne");

   $routes->get("api/allerg/list", "Allerg::getList");
   $routes->post("api/allerg/list", "Allerg::getList");

   $routes->get("api/allerg/get", "Allerg::getOne");
   $routes->post("api/allerg/get", "Allerg::getOne");
   
   $routes->get("api/allerg/save", "Allerg::saveOne"); 
   $routes->post("api/allerg/save", "Allerg::saveOne");

   $routes->get("api/recomendations/bmi", "RecommendBMI::getREC"); 
   $routes->post("api/recomendations/bmi", "RecommendBMI::getREC");
//});

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
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
