<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220222073553 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE property ADD state_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE property ADD CONSTRAINT FK_8BF21CDE5D83CC1 FOREIGN KEY (state_id) REFERENCES state (id)');
        $this->addSql('CREATE INDEX IDX_8BF21CDE5D83CC1 ON property (state_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE property DROP FOREIGN KEY FK_8BF21CDE5D83CC1');
        $this->addSql('DROP INDEX IDX_8BF21CDE5D83CC1 ON property');
        $this->addSql('ALTER TABLE property DROP state_id');
    }
}
