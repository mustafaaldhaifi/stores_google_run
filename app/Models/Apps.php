<?php

namespace App\Models;

class Apps
{
   public static $tableName = "apps";
   public static $id = "id";
   public static $name = "name";
   public static $sha = "sha";
   public static $test_sha = "test_sha";

   public static $packageName = "packageName";
   public static $serviceAccount = "serviceAccount";
   public static $webClientID = "webClientID";
   public static $password = "password";

   public static $createdAt = "createdAt";
   public static $updatedAt = "updatedAt";
}
