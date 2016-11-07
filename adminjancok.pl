#!/usr/bin/perl

print"\n";
print"\e[1;32m ################################################################\n";
print"\e[1;32m #                                                              #\n";
print"\e[1;32m #                     Admin Finder V 1                         #\n";
print"\e[1;32m #                     code by KIRINTUX                         #\n";
print"\e[1;32m #                                                              #\n";
print"\e[1;32m ################################################################\n";
print"\n";


#modul
use HTTP::Request;
use LWP::UserAgent;

#warna
my @fgColors = (
  'default', 'bold', 'black', 'red', 'blue', 'yellow', 'green',
  'majenta', 'cyan', 'white', 'bold black', 'bold red', 'bold blue',
  'bold yellow', 'bold green', 'bold majenta', 'bold cyan', 'bold whit
+e');

my @bgColors = (
  'default', 'black', 'red', 'blue', 'yellow', 'green', 'majenta', 'cy
+an', 'white');

my %fg = (
  'default'      => "",
  'bold'         => "\e[1m",
  'black'        => "\e[30m",
  'red'          => "\e[31m",
  'blue'         => "\e[32m",
  'yellow'       => "\e[33m",
  'green'        => "\e[34m",
  'majenta'      => "\e[35m",
  'cyan'         => "\e[36m",
  'white'        => "\e[37m",
  'bold black'   => "\e[1;30m",
  'bold red'     => "\e[1;31m",
  'bold blue'    => "\e[1;32m",
  'bold yellow'  => "\e[1;33m",
  'bold green'   => "\e[1;34m",
  'bold majenta' => "\e[1;35m",
  'bold cyan'    => "\e[1;36m",
  'bold white'   => "\e[1;37m",
);

my %bg = (
  'default'      => "",
  'black'        => "\e[40m",
  'red'          => "\e[41m",
  'blue'         => "\e[42m",
  'yellow'       => "\e[43m",
  'green'        => "\e[44m",
  'majenta'      => "\e[45m",
  'cyan'         => "\e[46m",
  'white'        => "\e[47m");

#alamat web yang ingin dicari
print"\n";
print"\e[1;31m Masukkan alamat web [ tanpa http:// ] :\n";
$url=<STDIN>;
chomp($url);

if ( url !~ /http:/){
	$url = 'http://' . $url 
}

#Halaman login admin bisa ditambah sendiri
{@xxx=(
'/_adm_/',
'/_admin_/',
'/_administrator_/',
'/operator/',
'/sika/',
'/develop/',
'/ketua/',
'/redaktur/',
'/author',
'/administratorlogin/',
'/admin/',
'/admin1/',
'/admin2/',
'/admin3/',
'/admin4/',
'/admin5/',
'/administrator/',
'/adminweb/',
'/user/',
'/users/',
'/dinkesadmin/',
'/moderator/',
'/adminarea/',
'/retel/',
'/author/',
'/panel/',
'/paneladmin/',
'/panellogin/',
'/redaksi/',
'/cp-admin/',
'/master/',
'/master/index.php',
'/master/login.php',
'/operator/index.php',
'/sika/index.php',
'/develop/index.php',
'/ketua/index.php',
'/redaktur/index.php',
'/admin/index.php',
'/administrator/index.php',
'/adminweb/index.php',
'/user/index.php',
'/users/index.php',
'/dinkesadmin/index.php',
'/retel/index.php',
'/author/index.php',
'/panel/index.php',
'/paneladmin/index.php',
'/panellogin/index.php',
'/redaksi/index.php',
'/cp-admin/index.php',
'/operator/login.php',
'/sika/login.php',
'/develop/login.php',
'/ketua/login.php',
'/redaktur/login.php',
'/admin/login.php',
'/administrator/login.php',
'/adminweb/login.php',
'/user/login.php',
'/users/login.php',
'/dinkesadmin/login.php',
'/retel/login.php',
'/author/login.php',
'/panel/login.php',
'/paneladmin/login.php',
'/panellogin/login.php',
'/redaksi/login.php',
'/cp-admin/login.php',
'/terasadmin/',
'/terasadmin/index.php',
'/terasadmin/login.php',
'/rahasia/',
'/rahasia/index.php',
'/rahasia/admin.php',
'/rahasia/login.php',
'/dinkesadmin/',
'/dinkesadmin/login.php',
'/adminpmb/',
'/adminpmb/index.php',
'/adminpmb/login.php',
'/system/',
'/system/index.php',
'/system/login.php',
'/webadmin/',
'/webadmin/index.php',
'/webadmin/login.php',
'/wpanel/',
'/wpanel/index.php',
'/wpanel/login.php',
'/adminpanel/index.php',
'/adminpanel/',
'/adminpanel/login.php',
'/adminkec/',
'/adminkec/index.php',
'/adminkec/login.php',
'/admindesa/',
'/admindesa/index.php',
'/admindesa/login.php',
'/adminkota/',
'/adminkota/index.php',
'/adminkota/login.php',
'/admin123/',
'/admin123/index.php',
'/admin123/login.php',
'/logout/',
'/logout/index.php',
'/logout/login.php',
'/logout/admin.php',
'/adminweb_setting',
	)}

foreach $login( @xxx ){

$gabungin= $url . $login;

my $req=HTTP::Request->new(GET=>$gabungin);
my $ua=LWP::UserAgent->new();
$ua->timeout(20);
my $resp = $ua->request($req);
my $response=$ua->request($req);
if($response->content =~ /Username/ ||
	$response->content =~ /Password/ ||
   	$response->content =~ /username/ ||
   	$response->content =~ /password/ ||
   	$response->content =~ /user/ ||
   	$response->content =~ /pass/){
	
	print "\e[1;33m [+] SUKSES ---> $gabungin\n\n\n";
	print "\e[1;33m admin login ditemukan \n Silahkan dicek cuk :v\n\n";
	}
	else{
		print "\e[1;30m [-] JANCOK ---> $gabungin\n";

	}
}

#JANCOK KABEH