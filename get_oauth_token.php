<?php

function getRefreshToken() {
    $clientId = '643320938803-9osuqe0eekq5d1fgn1mjur22jbhle2qh.apps.googleusercontent.com';
    $clientSecret = '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';

    $redirectUri = (isset($_SERVER['HTTPS']) ? 'https://' : 'http://') . $_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF'];

    $params = [
        'clientId' => $clientId,
        'clientSecret' => $clientSecret,
        'redirectUri' => $redirectUri,
        'accessType' => 'offline',
    ];

    $options = [
        'scope' => [
            'https://mail.google.com/',
        ],
    ];

    $provider = new Google($params);

    if (!isset($_GET['code'])) {
        // If we don't have an authorization code, then get one
        $authUrl = $provider->getAuthorizationUrl($options);
        $_SESSION['oauth2state'] = $provider->getState();
        header('Location: ' . $authUrl);
        exit;
    } elseif (empty($_GET['state']) || ($_GET['state'] !== $_SESSION['oauth2state'])) {
        unset($_SESSION['oauth2state']);
        exit('Invalid state');
    } else {
        // Try to get an access token (using the authorization code grant)
        $token = $provider->getAccessToken('authorization_code', ['code' => $_GET['code']]);

        // Use this to interact with an API on the user's behalf
        // Use this to get a new access token if the old one expires
        return $token->getRefreshToken();
    }
}

// Call the function and echo the refresh token
echo getRefreshToken();
