<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
     */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],
    'google' => [
        'client_id' => '378273976999-a55c7i7b8hgum60g2cg0jpg9vt325h4m.apps.googleusercontent.com',
        'client_secret' => '4prJ40jxd0o67G-S9V20m4hI',
        'redirect' => 'http://localhost/laravel/multiauth/callback/google',
    ],

    /*  'facebook' => [
'client_id' => '842918984397-v7e7ee4okkk2afsocgmmiudeusdv19hb.apps.googleusercontent.com',
'client_secret' => '5Q4GTkXs1WQyzk7JPMIJ59Y1',
'redirect' => 'http://localhost/laravel/multiauth/callback/facebook',
], */

];
