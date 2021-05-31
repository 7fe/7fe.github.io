<?php
  // add JS link
  $url=$_GET['u'];
  $ch = curl_init();
  curl_setopt($ch, CURLOPT_URL, $url);
  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true); // follow the redirects
  curl_setopt($ch, CURLOPT_HEADER, false); // no needs to pass the headers to the data stream
  curl_setopt($ch, CURLOPT_NOBODY, true); // get the resource without a body
  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // accept any server certificate
  curl_exec($ch);
  // get the last used URL
  $lastUrl = curl_getinfo($ch, CURLINFO_EFFECTIVE_URL);
  curl_close($ch);
  echo $lasturl;