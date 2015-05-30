;; db.my.domain.com
;;
$TTL 2D
@       IN      SOA     my.domain.com. mail.my.domain.com. (
                        2015053001      ; Serial
                                8H      ; Refresh
                                2H      ; Retry
                                4W      ; Expire
                                3H )    ; NX (TTL Negativ Cache)

@                               IN      NS      my.domain.com.
                                IN      A       192.168.0.10
