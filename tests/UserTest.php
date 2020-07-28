<?php

namespace Cli\Template\Tests;

use PHPUnit\Framework\TestCase;
use Cli\Template\User;

class UserTest extends TestCase
{
    public function testGetName()
    {
        $name = 'john';
        $children = [new User('Mark')];
        $user = new User($name, $children);

        $this->assertEquals($name, $user->getName());
        $this->assertEquals(collect($children), $user->getChildren());
    }
}
