<html>
    <head>
        <title>Logger</title>
    </head>
    <body>
        <?php 
        
        abstract class Logger {
            abstract static function log($message);

            protected function getMessage($message) {
                $date = '-(' . date('Y-m-d H:i:s') . ")- : ";
                $loggedMessage = $message;
                if (is_array($message) || is_object($message))
                    {
                        $loggedMessage = print_r($message, 1); // ничего не //печатается на экран только перевод в строк
                    }
                $loggedMessage = $date . $loggedMessage . "\n";
                return $loggedMessage;
            }

        }

        class Log_file extends Logger {
            static function log($message) {
                $loggedMessage = Parent::getMessage($message);
                
                $file = __DIR__ . "/file.log";
                file_put_contents($file, $loggedMessage, FILE_APPEND);
            }
        }

        class Log_stdout extends Logger {
            static function log($message) {
                $loggedMessage = Parent::getMessage($message);
                $fp = fopen("php://stdout", 'w');
                fputs($fp, $loggedMessage);
            }
        }
        
        class Log_mysql extends Logger {
            static function log($message) {
                $con = mysqli_connect("localhost", "root", "", "logger");
                mysqli_set_charset($con, "utf8");
                
                if(mysqli_connect_errno()){
                    echo "Failed to connect MySQL: " . mysqli_connect_error();
                }
                
                $query = "INSERT INTO message_list VALUES ('NULL', '" . date('Y-m-d H:i:s') . "', '" . $message . "');";
                mysqli_query($con, $query);
            }
        }
        
        Log_stdout::log('привет');
        Log_file::log('привет');
        Log_mysql::log('привет');
        
        ?>
    </body>
</html>