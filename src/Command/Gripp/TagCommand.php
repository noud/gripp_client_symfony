<?php

namespace App\Command\Gripp;

use App\Command\AbstractCommand;
use App\Gripp\Service\TagService;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class TagCommand extends AbstractCommand
{
    /**
     * @var TagService
     */
    private $tagService;

    public function __construct(
        TagService $tagService
    ) {
        $this->tagService = $tagService;

        parent::__construct();
    }

    protected function configure(): void
    {
        $this
            // the name of the command (the part after "bin/console")
            ->setName('gripp:tag')
            // the short description shown while running "php bin/console list"
            ->setDescription('Tag of the Gripp API.')
            // the full command description shown when running the command with
            // the "--help" option
            ->setHelp('This command shows Tags of the Gripp API.')
            ->addArgument('action', InputArgument::OPTIONAL, 'Action')
            ->addArgument('id', InputArgument::OPTIONAL, 'Id')
            ;
    }

    /**
     * @return int|void|null
     */
    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $action = $input->getArgument('action');
        $this->executeStart($output);
        switch ($action) {
            case 'view':
                /** @var int $id */
                $id = $input->getArgument('id') ?: 1;
                $this->view($output, $id);
                break;
            case 'index':
            default:
                $this->index($output);
                break;
        }
        $this->executeStop($output);
    }

    private function index(OutputInterface $output): void
    {
        $tagsName = 'Tags';
        //$tagsArray = $this->tagService->allTags();
        $tagsArray = [
            [
                'id' => 1,
                'name' => 'tag name 1',
            ],
            [
                'id' => 2,
                'name' => 'tag name 2',
            ],
        ];
        $this->entitiesTable($output, $tagsName, $tagsArray);
    }

    private function view(OutputInterface $output, int $id): void
    {
        $tagName = 'Tag';
        //$tagArray = $this->tagService->getTagById($id);
        $tagArray = [
            'id' => $id,
            'name' => 'tag name '.$id,
        ];
        $this->entityView($output, $tagName, $tagArray);
    }
}
