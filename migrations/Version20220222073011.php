<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220222073011 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE state ADD property_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE state ADD CONSTRAINT FK_A393D2FB549213EC FOREIGN KEY (property_id) REFERENCES property (id)');
        $this->addSql('CREATE INDEX IDX_A393D2FB549213EC ON state (property_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE state DROP FOREIGN KEY FK_A393D2FB549213EC');
        $this->addSql('DROP INDEX IDX_A393D2FB549213EC ON state');
        $this->addSql('ALTER TABLE state DROP property_id');
    }
}
