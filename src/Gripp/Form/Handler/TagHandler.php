<?php

namespace App\Gripp\Form\Handler;

use App\Entity\Tag;
use App\Gripp\Form\Data\TagData;
use App\Gripp\Service\TagService;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Form\FormInterface;
use Symfony\Component\HttpFoundation\Request;

class TagHandler
{
    /**
     * @var EntityManagerInterface
     */
    private $entityManager;

    /**
     * @var TagService
     */
    private $tagService;

    /**
     * JoinHandler constructor.
     */
    public function __construct(
        EntityManagerInterface $entityManager,
        TagService $tagService
    ) {
        $this->entityManager = $entityManager;
        $this->tagService = $tagService;
    }

    /**
     * @throws \Doctrine\ORM\ORMException
     */
    public function handleRequest(FormInterface $form, Request $request, Tag $tag = null): bool
    {
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            /** @var TagData $tagData */
            $tagData = $form->getData();
            if ($tag) {
                $this->tagService->updateTag($tag, $tagData);
            } else {
                $this->tagService->createTag($tagData);
            }

            return true;
        }

        return false;
    }
}
