<?php

namespace App\Notification;

use App\Entity\Contact;
use Symfony\Component\Mailer\MailerInterface;
use Twig\Environment;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;

class ContactNotification {

    /**
     * @var MailerInterface
     */
    private $mailer;

    /**
     * @var Environment
     */

    private $renderer;

    public function __construct(MailerInterface $mailer, Environment $renderer)
    {
        	$this->mailer = $mailer;
            $this->renderer = $renderer;

    }



    public function notify(Contact $contact)
    {
        $email = new TemplatedEmail();
        $email
        ->from('noreply@mehdihouse.com')
        ->to('contact@mehdihouse.com')
        ->replyTo($contact->getEmail())
        ->subject('Mehdi House : ' . $contact->getProperty()->getTitle())
        ->htmlTemplate('emails/contact.html.twig')
        ->context([
            'contact' => $contact
        ])
        ;
        
        $this->mailer->send($email);
        
    }
}