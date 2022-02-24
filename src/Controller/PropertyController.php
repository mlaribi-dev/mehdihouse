<?php

namespace App\Controller;

use App\Entity\Property;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Repository\PropertyRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PropertyController extends AbstractController
{
    /**
     * @var $PropertyRepository
     */

    private $repository;
    
    /**
     * @var EntityManagerInterface 
     */

    private $em;

    public function __construct(PropertyRepository $repository, EntityManagerInterface  $em)
    {
        $this->repository = $repository;
        $this->em = $em;
    }

    /**
     * @Route("/property", name="property.index")
     * @return Response
     */
    public function index(PaginatorInterface $paginator, Request $request): Response
    {
    $properties = $paginator->paginate(
        $this->repository->findAllVisibleQuery(),
        $request->query->getInt('page',1),9

    );
       return $this->render('property/index.html.twig',[
           'current_menu' => 'properties',
           'properties' => $properties 
       ]);
    }

    /**
     * @Route("/property/{slug}-{id}", name="property.show", requirements={"slug" : "[a-z0-9\-]*"})
     * @return Response
     */

    /**
     * @Route("/property/{slug}-{id}", name="property.show", requirements={"slug": "[a-z0-9\-]*"})
     * @param Property $property
     * @return Response
     */
    public function show(Property $property, string $slug): Response
    {
        // Recherche le bien avec son id, si pas de projet, on revient sur la page actuelle
        if ($property->getSlug() !== $slug) {
            return $this->redirectToRoute('property.show', [
                'id' => $property->getId(),
                'slug' => $property->getSlug()
            ], 301);
        }
        return $this->render('property/show.html.twig', [
            'property' => $property,
            'current_menu' => 'properties'
        ]);
    }
    
}