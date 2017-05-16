 <?PHP
            echo "a<br/>";
            $curl = curl_init();
      //http://YOURDOMAIN.com testing"

            $aa='Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36 OPR/28.0.1750.48';
            curl_setopt($curl, CURLOPT_HEADER, false);
            curl_setopt($curl, CURLINFO_HEADER_OUT, true);
            curl_setopt($curl, CURLOPT_USERAGENT, $aa);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl, CURLOPT_FORBID_REUSE, false);
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($curl, CURLOPT_URL,  'http://vpppn.com/index.php?route=api/login');

            curl_setopt($curl, CURLOPT_POST, true);


            $json = curl_exec($curl);
            echo "server link to http://vpppn.com/index.php?route=api/login <br/>";
            echo "Error Message:<br/>";
            print_r(curl_error($curl));
            echo "<br/>";
            echo "Response:";
            echo "<br/>";
            print_r($json);
            echo "<br/>";
            echo "<br/>";
            echo "<br/>";
            echo "<br/>";
            curl_close($curl);
            $curl = curl_init();
        //http://google.com"

            $aa='Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36 OPR/28.0.1750.48';
            curl_setopt($curl, CURLOPT_HEADER, false);
            curl_setopt($curl, CURLINFO_HEADER_OUT, true);
            curl_setopt($curl, CURLOPT_USERAGENT, $aa);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl, CURLOPT_FORBID_REUSE, false);
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($curl, CURLOPT_URL,  'http://google.com');

            curl_setopt($curl, CURLOPT_POST, true);


            $json = curl_exec($curl);
            echo "server lint to http://google.com <br/>";
            echo "Error Message:<br/>";
            print_r(curl_error($curl));
            echo "<br/>";
            echo "Response:";
            echo "<br/>";
            print_r($json);
            curl_close($curl);
       ?>