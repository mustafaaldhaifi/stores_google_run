<?php

namespace App\Models;

class Stores
{
   public static $tableName = "stores";
   public static $id = "id";
   public static $name = "name";
   public static $cover = "cover";
   public static $latLng = "latLng";
   public static $latLong = "latLong";

   public static $logo = "logo";
   public static $userId = "userId";
   public static $likes = "likes";
   public static $stars = "stars";
   public static $subscriptions = "subscriptions";
   public static $reviews = "reviews";
   public static $typeId = "typeId";
   public static $countryId = "countryId";
   public static $mainCategoryId = "mainCategoryId";


   public static $deliveryPrice = "deliveryPrice";
   public static $freeDeliveryPrice = "freeDeliveryPrice";
   public static $lessCartPrice = "lessCartPrice";

   public static $deliveryPriceCurrency = "deliveryPriceCurrency";
   // public static $serviceAccount = "serviceAccount";

   public static $createdAt = "createdAt";
   public static $updatedAt = "updatedAt";
}
