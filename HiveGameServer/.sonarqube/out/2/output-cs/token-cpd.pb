—
bC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\DataBaseManager\Utilities\UserData.cs
	namespace 	
HiveGameService
 
. 
	Utilities #
{ 
public		 

class		 
UserData		 
{

 
public 
int 
idAccessAccount "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
email 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 

reputation 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	idProfile 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
FK_IdAccount 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
nickname 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	imagePath 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
createdDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
if 
( 
obj 
is 
UserData 
other  %
)% &
{ 
return 
idAccessAccount &
==' )
other* /
./ 0
idAccessAccount0 ?
&&@ B
username 
== 
other  %
.% &
username& .
&&/ 1
email2 7
==8 :
other; @
.@ A
emailA F
&&G I

reputation 
== !
other" '
.' (

reputation( 2
&&3 5
	idProfile6 ?
==@ B
otherC H
.H I
	idProfileI R
&&S U
FK_IdAccount  
==! #
other$ )
.) *
FK_IdAccount* 6
&&7 9
nickname: B
==C E
otherF K
.K L
nicknameL T
&&U W
	imagePath   
==    
other  ! &
.  & '
	imagePath  ' 0
&&  1 3
createdDate  4 ?
==  @ B
other  C H
.  H I
createdDate  I T
&&  U W
description!! 
==!!  "
other!!# (
.!!( )
description!!) 4
;!!4 5
}"" 
return## 
false## 
;## 
}$$ 	
}&& 
}(( ú
kC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\DataBaseManager\Utilities\PlayerLeaderBoard.cs
	namespace 	
DataBaseManager
 
. 
	Utilities #
{ 
public		 

class		 
PlayerLeaderBoard		 "
{

 
public 
int 
totalMatches 
{  !
get# &
;& '
set( +
;+ ,
}- .
public 
int 

wonMatches 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
lostMatches 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
drawMatches 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
	idAccount 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
imageProfile "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
override 
bool 
Equals #
(# $
Object$ *
obj+ .
). /
{ 	
if 
( 
obj 
is 
PlayerLeaderBoard '
other( -
)- .
{ 
return 
totalMatches #
==$ &
other' ,
., -
totalMatches- 9
&&: <

wonMatches= G
==H J
otherK P
.P Q

wonMatchesQ [
&& 
lostMatches "
==# %
other& +
.+ ,
lostMatches, 7
&&8 :
drawMatches; F
==G I
otherJ O
.O P
drawMatchesP [
&& 
drawMatches "
==# %
other& +
.+ ,
drawMatches, 7
&&8 :
username; C
.C D
EqualsD J
(J K
otherK P
.P Q
usernameQ Y
)Y Z
&&   
	idAccount    
==  ! #
other  $ )
.  ) *
	idAccount  * 3
&&  4 6
imageProfile  7 C
.  C D
Equals  D J
(  J K
other  K P
.  P Q
imageProfile  Q ]
)  ] ^
;  ^ _
}!! 
return"" 
false"" 
;"" 
}## 	
}$$ 
}%% º
gC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\DataBaseManager\Utilities\LoggerManager.cs
[ 
assembly 	
:	 

log4net 
. 
Config 
. 
XmlConfigurator )
() *
Watch* /
=0 1
true2 6
)6 7
]7 8
	namespace

 	
HiveGameService


 
.

 
	Utilities

 #
{ 
public 

class 
LoggerManager 
{ 
public 
ILog 
Logger 
{ 
get  
;  !
set" %
;% &
}' (
public 
LoggerManager 
( 
Type !
type" &
)& '
{ 	
Logger 
= 

LogManager 
.  
	GetLogger  )
() *
type* .
). /
;/ 0
} 	
public 
ILog 
	GetLogger 
( 
Type "
type# '
)' (
{ 	
return 

LogManager 
. 
	GetLogger '
(' (
type( ,
), -
;- .
} 	
public 
void 
LogInfo 
( 
string "
message# *
)* +
{ 	
Logger 
. 
Info 
( 
message 
)  
;  !
} 	
public 
void 
LogError 
( 
	Exception &
	exception' 0
)0 1
{   	
Logger!! 
.!! 
Error!! 
(!! 
	exception!! "
)!!" #
;!!# $
}"" 	
public$$ 
void$$ 
LogFatal$$ 
($$ 
	Exception$$ &
	exception$$' 0
)$$0 1
{%% 	
Logger&& 
.&& 
Fatal&& 
(&& 
	exception&& "
)&&" #
;&&# $
}'' 	
public)) 
void)) 
LogWarn)) 
()) 
	Exception)) %
	exception))& /
)))/ 0
{** 	
Logger++ 
.++ 
Warn++ 
(++ 
	exception++ !
)++! "
;++" #
},, 	
public.. 
void.. 
LogDebug.. 
(.. 
	Exception.. &
	exception..' 0
)..0 1
{// 	
Logger00 
.00 
Debug00 
(00 
	exception00 "
)00" #
;00# $
}11 	
}33 
}44 ˝
fC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\DataBaseManager\Utilities\Enumerations.cs
	namespace 	
HiveGameService
 
. 
	Utilities #
{ 
public		 

class		 
Enumerations		 
{

 
public 
enum 
FriendshipStates $
{ 	
	Requested 
, 
Accepted 
, 
Declined 
, 

Eliminated 
, 
Blocked 
} 	
public 
enum 
Match 
{ 	
Active 
, 
	Cancelled 
, 
Finished 
} 	
} 
} Å	
cC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\DataBaseManager\Utilities\Constants.cs
	namespace 	
HiveGameService
 
. 
	Utilities #
{ 
public		 

static		 
class		 
	Constants		 !
{

 
public 
const 
int 
ERROR_OPERATION (
=) *
-+ ,
$num, -
;- .
public 
const 
int 
SUCCES_OPERATION )
=* +
$num, -
;- .
public 
const 
int 
NO_DATA_MATCHES (
=) *
$num+ ,
;, -
public 
const 
int 
DATA_MATCHES %
=& '
$num( )
;) *
public 
const 
string  
DEFAULT_IMAGE_PLAYER 0
=1 2
$str3 6
;6 7
public 
const 
string 
DEFAULT_IMAGE_GUEST /
=0 1
$str2 5
;5 6
} 
} í
gC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\DataBaseManager\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str *
)* +
]+ ,
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str ,
), -
]- .
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[   
assembly   	
:  	 

AssemblyVersion   
(   
$str   $
)  $ %
]  % &
[!! 
assembly!! 	
:!!	 

AssemblyFileVersion!! 
(!! 
$str!! (
)!!( )
]!!) *‹µ
hC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\DataBaseManager\Operations\UserOperation.cs
	namespace 	
DataBaseManager
 
. 

Operations $
{ 
public 

class 
UserOperation 
{ 
public 
int 
addUserToDataBase $
($ %
Profile% ,
profile- 4
,4 5
AccessAccount6 C
accessAccountD Q
)Q R
{ 	
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
int 
result 
= 
	Constants "
." #
ERROR_OPERATION# 2
;2 3
try 
{ 
using 
( 
var 
dataBaseContext *
=+ ,
new- 0
HiveEntityDataModel1 D
(D E
)E F
)F G
{ 
using 
( 
var &
dataBaseContextTransaction 9
=: ;
dataBaseContext< K
.K L
DatabaseL T
.T U
BeginTransactionU e
(e f
)f g
)g h
{ 
try 
{ 
var 
newAccessAccount  0
=1 2
new3 6
AccessAccount7 D
{ 
password    (
=  ) *
accessAccount  + 8
.  8 9
password  9 A
,  A B
username!!  (
=!!) *
accessAccount!!+ 8
.!!8 9
username!!9 A
,!!A B
email""  %
=""& '
accessAccount""( 5
.""5 6
email""6 ;
,""; <

reputation##  *
=##+ ,
accessAccount##- :
.##: ;

reputation##; E
}$$ 
;$$ 
dataBaseContext%% +
.%%+ ,
AccessAccount%%, 9
.%%9 :
Add%%: =
(%%= >
newAccessAccount%%> N
)%%N O
;%%O P
dataBaseContext&& +
.&&+ ,
SaveChanges&&, 7
(&&7 8
)&&8 9
;&&9 :
int'' !
lastIdAccountInserted''  5
=''6 7
newAccessAccount''8 H
.''H I
idAccessAccount''I X
;''X Y
var(( 

newProfile((  *
=((+ ,
new((- 0
Profile((1 8
{)) 
	imagePath**  )
=*** +
profile**, 3
.**3 4
	imagePath**4 =
,**= >
createdDate++  +
=++, -
profile++. 5
.++5 6
createdDate++6 A
,++A B
nickname,,  (
=,,) *
profile,,+ 2
.,,2 3
nickname,,3 ;
,,,; <
FK_IdAccount--  ,
=--- .!
lastIdAccountInserted--/ D
,--D E
description..  +
=.., -
profile... 5
...5 6
description..6 A
,..A B
}// 
;// 
dataBaseContext00 +
.00+ ,
Profile00, 3
.003 4
Add004 7
(007 8

newProfile008 B
)00B C
;00C D
dataBaseContext11 +
.11+ ,
SaveChanges11, 7
(117 8
)118 9
;119 :
var22 
newLeaderboard22  .
=22/ 0
new221 4
Leaderboard225 @
{33 
FK_IdAccount44  ,
=44- .!
lastIdAccountInserted44/ D
,44D E
totalOfMatches55  .
=55/ 0
$num551 2
,552 3
drawMatches66  +
=66, -
$num66. /
,66/ 0

wonMatches77  *
=77+ ,
$num77- .
,77. /
lostMatches88  +
=88, -
$num88. /
}99 
;99 
dataBaseContext:: +
.::+ ,
Leaderboard::, 7
.::7 8
Add::8 ;
(::; <
newLeaderboard::< J
)::J K
;::K L
dataBaseContext;; +
.;;+ ,
SaveChanges;;, 7
(;;7 8
);;8 9
;;;9 :&
dataBaseContextTransaction<< 6
.<<6 7
Commit<<7 =
(<<= >
)<<> ?
;<<? @
result== "
===# $
	Constants==% .
.==. /
SUCCES_OPERATION==/ ?
;==? @
}>> 
catch?? 
(?? 
DbUpdateException?? 0
updateException??1 @
)??@ A
{@@ 
loggerAA "
.AA" #
LogErrorAA# +
(AA+ ,
updateExceptionAA, ;
)AA; <
;AA< =&
dataBaseContextTransactionBB 6
.BB6 7
RollbackBB7 ?
(BB? @
)BB@ A
;BBA B
resultCC "
=CC# $
	ConstantsCC% .
.CC. /
ERROR_OPERATIONCC/ >
;CC> ?
}DD 
catchEE 
(EE 
SqlExceptionEE +
sqlExceptionEE, 8
)EE8 9
{FF 
loggerGG "
.GG" #
LogErrorGG# +
(GG+ ,
sqlExceptionGG, 8
)GG8 9
;GG9 :&
dataBaseContextTransactionHH 6
.HH6 7
RollbackHH7 ?
(HH? @
)HH@ A
;HHA B
resultII "
=II# $
	ConstantsII% .
.II. /
ERROR_OPERATIONII/ >
;II> ?
}JJ 
}KK 
}LL 
}MM 
catchNN 
(NN 
EntityExceptionNN "
entityExceptionNN# 2
)NN2 3
{OO 
loggerPP 
.PP 
LogErrorPP 
(PP  
entityExceptionPP  /
)PP/ 0
;PP0 1
}QQ 
returnRR 
resultRR 
;RR 
}SS 	
publicVV 
UserDataVV $
GetUserProfileByUsernameVV 0
(VV0 1
stringVV1 7
usernameVV8 @
)VV@ A
{WW 	
LoggerManagerXX 
loggerXX  
=XX! "
newXX# &
LoggerManagerXX' 4
(XX4 5
thisXX5 9
.XX9 :
GetTypeXX: A
(XXA B
)XXB C
)XXC D
;XXD E
UserDataYY 
	userFoundYY 
=YY  
newYY! $
UserDataYY% -
(YY- .
)YY. /
;YY/ 0
	userFoundZZ 
.ZZ 
	idProfileZZ 
=ZZ  !
	ConstantsZZ" +
.ZZ+ ,
ERROR_OPERATIONZZ, ;
;ZZ; <
try[[ 
{\\ 
using]] 
(]] 
var]] 
dataBaseContet]] (
=]]) *
new]]+ .
HiveEntityDataModel]]/ B
(]]B C
)]]C D
)]]D E
{^^ 
var__ 
userData__  
=__! "
dataBaseContet__# 1
.__1 2
AccessAccount__2 ?
.__? @
Where__@ E
(__E F
account__F M
=>__N P
account__Q X
.__X Y
username__Y a
==__b d
username__e m
)__m n
.__n o
Join__o s
(__s t
dataBaseContet	__t Ç
.
__Ç É
Profile
__É ä
,
__ä ã
account`` 
=>``  "
account``# *
.``* +
idAccessAccount``+ :
,``: ;
profile``< C
=>``D F
profile``G N
.``N O
FK_IdAccount``O [
,``[ \
(``] ^
account``^ e
,``e f
profile``g n
)``n o
=>``p r
new``s v
UserData``w 
{aa 
idAccessAccountbb +
=bb, -
accountbb. 5
.bb5 6
idAccessAccountbb6 E
,bbE F
usernamecc $
=cc% &
accountcc' .
.cc. /
usernamecc/ 7
,cc7 8
	idProfiledd %
=dd& '
profiledd( /
.dd/ 0
	idProfiledd0 9
,dd9 :
FK_IdAccountee (
=ee) *
profileee+ 2
.ee2 3
FK_IdAccountee3 ?
,ee? @
nicknameff $
=ff% &
profileff' .
.ff. /
nicknameff/ 7
,ff7 8
	imagePathgg %
=gg& '
profilegg( /
.gg/ 0
	imagePathgg0 9
,gg9 :
emailhh !
=hh" #
accounthh$ +
.hh+ ,
emailhh, 1
,hh1 2

reputationii &
=ii' (
accountii) 0
.ii0 1

reputationii1 ;
}jj 
)jj 
.jj 
FirstOrDefaultjj )
(jj) *
)jj* +
;jj+ ,
ifkk 
(kk 
userDatakk  
!=kk! #
nullkk$ (
)kk( )
{ll 
	userFoundmm !
=mm" #
userDatamm$ ,
;mm, -
}nn 
elseoo 
{pp 
	userFoundqq !
.qq! "
	idProfileqq" +
=qq, -
	Constantsqq. 7
.qq7 8
NO_DATA_MATCHESqq8 G
;qqG H
}rr 
}ss 
}tt 
catchuu 
(uu 
SqlExceptionuu 
sqlExceptionuu  ,
)uu, -
{vv 
loggerww 
.ww 
LogErrorww 
(ww  
sqlExceptionww  ,
)ww, -
;ww- .
	userFoundxx 
.xx 
	idProfilexx #
=xx$ %
	Constantsxx& /
.xx/ 0
ERROR_OPERATIONxx0 ?
;xx? @
}yy 
catchzz 
(zz 
EntityExceptionzz "
entityExceptionzz# 2
)zz2 3
{{{ 
logger|| 
.|| 
LogError|| 
(||  
entityException||  /
)||/ 0
;||0 1
	userFound}} 
.}} 
	idProfile}} #
=}}$ %
	Constants}}& /
.}}/ 0
ERROR_OPERATION}}0 ?
;}}? @
}~~ 
return 
	userFound 
; 
}
ÄÄ 	
public
ÇÇ 
UserData
ÇÇ %
GetUserDataFromDataBase
ÇÇ /
(
ÇÇ/ 0
string
ÇÇ0 6
username
ÇÇ7 ?
,
ÇÇ? @
string
ÇÇA G
password
ÇÇH P
)
ÇÇP Q
{
ÉÉ 	
UserData
ÑÑ 
dataObtained
ÑÑ !
=
ÑÑ" #
new
ÑÑ$ '
UserData
ÑÑ( 0
(
ÑÑ0 1
)
ÑÑ1 2
;
ÑÑ2 3
LoggerManager
ÖÖ 
logger
ÖÖ  
=
ÖÖ! "
new
ÖÖ# &
LoggerManager
ÖÖ' 4
(
ÖÖ4 5
this
ÖÖ5 9
.
ÖÖ9 :
GetType
ÖÖ: A
(
ÖÖA B
)
ÖÖB C
)
ÖÖC D
;
ÖÖD E
try
ÜÜ 
{
áá 
using
àà 
(
àà 
var
àà 
dataBaseContext
àà *
=
àà+ ,
new
àà- 0!
HiveEntityDataModel
àà1 D
(
ààD E
)
ààE F
)
ààF G
{
ââ 
var
ää 
userData
ää  
=
ää! "
dataBaseContext
ää# 2
.
ää2 3
AccessAccount
ää3 @
.
ää@ A
Where
ääA F
(
ääF G
account
ääG N
=>
ääO Q
account
ääR Y
.
ääY Z
username
ääZ b
==
ääc e
username
ääf n
&&
ääo q
account
äär y
.
ääy z
passwordääz Ç
==ääÉ Ö
passwordääÜ é
)ääé è
.ääè ê
Joinääê î
(ääî ï
dataBaseContext
ãã '
.
ãã' (
Profile
ãã( /
,
ãã/ 0
account
ãã1 8
=>
ãã9 ;
account
ãã< C
.
ããC D
idAccessAccount
ããD S
,
ããS T
profile
ããU \
=>
ãã] _
profile
ãã` g
.
ããg h
FK_IdAccount
ããh t
,
ããt u
(
ããv w
account
ããw ~
,
ãã~ 
profileããÄ á
)ããá à
=>ããâ ã
newããå è
UserDataããê ò
{
åå 
idAccessAccount
çç +
=
çç, -
account
çç. 5
.
çç5 6
idAccessAccount
çç6 E
,
ççE F
username
éé $
=
éé% &
account
éé' .
.
éé. /
username
éé/ 7
,
éé7 8
email
èè !
=
èè" #
account
èè$ +
.
èè+ ,
email
èè, 1
,
èè1 2

reputation
êê &
=
êê' (
account
êê) 0
.
êê0 1

reputation
êê1 ;
,
êê; <
	idProfile
ëë %
=
ëë& '
profile
ëë( /
.
ëë/ 0
	idProfile
ëë0 9
,
ëë9 :
FK_IdAccount
íí (
=
íí) *
profile
íí+ 2
.
íí2 3
FK_IdAccount
íí3 ?
,
íí? @
nickname
ìì $
=
ìì% &
profile
ìì' .
.
ìì. /
nickname
ìì/ 7
,
ìì7 8
	imagePath
îî %
=
îî& '
profile
îî( /
.
îî/ 0
	imagePath
îî0 9
,
îî9 :
createdDate
ïï '
=
ïï( )
profile
ïï* 1
.
ïï1 2
createdDate
ïï2 =
,
ïï= >
description
ññ '
=
ññ( )
profile
ññ* 1
.
ññ1 2
description
ññ2 =
,
ññ= >
}
óó 
)
óó 
.
óó 
FirstOrDefault
óó )
(
óó) *
)
óó* +
;
óó+ ,
if
òò 
(
òò 
userData
òò 
!=
òò  "
null
òò# '
)
òò' (
{
ôô 
dataObtained
öö $
=
öö% &
userData
öö' /
;
öö/ 0
}
õõ 
else
úú 
{
ùù 
dataObtained
ûû $
.
ûû$ %
idAccessAccount
ûû% 4
=
ûû5 6
	Constants
ûû7 @
.
ûû@ A
NO_DATA_MATCHES
ûûA P
;
ûûP Q
}
üü 
}
†† 
}
°° 
catch
°° 
(
°° 
SqlException
°° 
sqlException
°°  ,
)
°°, -
{
¢¢ 
logger
££ 
.
££ 
LogError
££ 
(
££  
sqlException
££  ,
)
££, -
;
££- .
dataObtained
§§ 
.
§§ 
idAccessAccount
§§ ,
=
§§- .
	Constants
§§/ 8
.
§§8 9
ERROR_OPERATION
§§9 H
;
§§H I
}
•• 
catch
¶¶ 
(
¶¶ 
EntityException
¶¶ !
entityException
¶¶" 1
)
¶¶1 2
{
ßß 
logger
®® 
.
®® 
LogError
®® 
(
®®  
entityException
®®  /
)
®®/ 0
;
®®0 1
dataObtained
©© 
.
©© 
idAccessAccount
©© ,
=
©©- .
	Constants
©©/ 8
.
©©8 9
ERROR_OPERATION
©©9 H
;
©©H I
}
™™ 
return
´´ 
dataObtained
´´ 
;
´´  
}
¨¨ 	
public
ÆÆ 
int
ÆÆ 2
$UpdatePlusPlayerReputationToDataBase
ÆÆ 7
(
ÆÆ7 8
string
ÆÆ8 >
username
ÆÆ? G
,
ÆÆG H
int
ÆÆI L

reputation
ÆÆM W
)
ÆÆW X
{
ØØ 	
int
∞∞ 
updateResult
∞∞ 
=
∞∞ 
	Constants
∞∞ (
.
∞∞( )
ERROR_OPERATION
∞∞) 8
;
∞∞8 9
LoggerManager
±± 
logger
±±  
=
±±! "
new
±±# &
LoggerManager
±±' 4
(
±±4 5
this
±±5 9
.
±±9 :
GetType
±±: A
(
±±A B
)
±±B C
)
±±C D
;
±±D E
try
≤≤ 
{
≥≥ 
using
¥¥ 
(
¥¥ 
var
¥¥ 
databaseContext
¥¥ )
=
¥¥* +
new
¥¥, /!
HiveEntityDataModel
¥¥0 C
(
¥¥C D
)
¥¥D E
)
¥¥E F
{
µµ 
var
∂∂ 
existinAccount
∂∂ &
=
∂∂' (
databaseContext
∂∂) 8
.
∂∂8 9
AccessAccount
∂∂9 F
.
∂∂F G
FirstOrDefault
∂∂G U
(
∂∂U V
user
∂∂V Z
=>
∂∂[ ]
user
∂∂^ b
.
∂∂b c
username
∂∂c k
==
∂∂l n
username
∂∂o w
)
∂∂w x
;
∂∂x y
if
∑∑ 
(
∑∑ 
existinAccount
∑∑ &
!=
∑∑' )
null
∑∑* .
)
∑∑. /
{
∏∏ 
existinAccount
ππ &
.
ππ& '

reputation
ππ' 1
+=
ππ2 4

reputation
ππ5 ?
;
ππ? @
databaseContext
∫∫ '
.
∫∫' (
SaveChanges
∫∫( 3
(
∫∫3 4
)
∫∫4 5
;
∫∫5 6
updateResult
ªª $
=
ªª% &
	Constants
ªª' 0
.
ªª0 1
SUCCES_OPERATION
ªª1 A
;
ªªA B
}
ºº 
else
ΩΩ 
{
ææ 
updateResult
øø $
=
øø% &
	Constants
øø' 0
.
øø0 1
NO_DATA_MATCHES
øø1 @
;
øø@ A
}
¿¿ 
}
¡¡ 
}
¬¬ 
catch
√√ 
(
√√ 
DbUpdateException
√√ $
updateException
√√% 4
)
√√4 5
{
ƒƒ 
logger
≈≈ 
.
≈≈ 
LogError
≈≈ 
(
≈≈  
updateException
≈≈  /
)
≈≈/ 0
;
≈≈0 1
updateResult
∆∆ 
=
∆∆ 
	Constants
∆∆ (
.
∆∆( )
ERROR_OPERATION
∆∆) 8
;
∆∆8 9
}
«« 
catch
»» 
(
»» 
SqlException
»» 
sqlException
»»  ,
)
»», -
{
…… 
logger
   
.
   
LogError
   
(
    
sqlException
    ,
)
  , -
;
  - .
updateResult
ÀÀ 
=
ÀÀ 
	Constants
ÀÀ (
.
ÀÀ( )
ERROR_OPERATION
ÀÀ) 8
;
ÀÀ8 9
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ 
EntityException
ÕÕ "
entityException
ÕÕ# 2
)
ÕÕ2 3
{
ŒŒ 
logger
œœ 
.
œœ 
LogError
œœ 
(
œœ  
entityException
œœ  /
)
œœ/ 0
;
œœ0 1
updateResult
–– 
=
–– 
	Constants
–– (
.
––( )
ERROR_OPERATION
––) 8
;
––8 9
}
—— 
return
““ 
updateResult
““ 
;
““  
}
”” 	
public
’’ 
int
’’ 3
%UpdateMinusPlayerReputationToDataBase
’’ 8
(
’’8 9
string
’’9 ?
username
’’@ H
,
’’H I
int
’’J M

reputation
’’N X
)
’’X Y
{
÷÷ 	
int
◊◊ 
updateResult
◊◊ 
=
◊◊ 
	Constants
◊◊ (
.
◊◊( )
ERROR_OPERATION
◊◊) 8
;
◊◊8 9
LoggerManager
ÿÿ 
logger
ÿÿ  
=
ÿÿ! "
new
ÿÿ# &
LoggerManager
ÿÿ' 4
(
ÿÿ4 5
this
ÿÿ5 9
.
ÿÿ9 :
GetType
ÿÿ: A
(
ÿÿA B
)
ÿÿB C
)
ÿÿC D
;
ÿÿD E
try
ŸŸ 
{
⁄⁄ 
using
€€ 
(
€€ 
var
€€ 
databaseContext
€€ *
=
€€+ ,
new
€€- 0!
HiveEntityDataModel
€€1 D
(
€€D E
)
€€E F
)
€€F G
{
‹‹ 
var
›› 
existinAccount
›› &
=
››' (
databaseContext
››) 8
.
››8 9
AccessAccount
››9 F
.
››F G
FirstOrDefault
››G U
(
››U V
user
››V Z
=>
››[ ]
user
››^ b
.
››b c
username
››c k
==
››l n
username
››o w
)
››w x
;
››x y
if
ﬁﬁ 
(
ﬁﬁ 
existinAccount
ﬁﬁ &
!=
ﬁﬁ' )
null
ﬁﬁ* .
)
ﬁﬁ. /
{
ﬂﬂ 
existinAccount
‡‡ &
.
‡‡& '

reputation
‡‡' 1
-=
‡‡2 4

reputation
‡‡5 ?
;
‡‡? @
databaseContext
·· '
.
··' (
SaveChanges
··( 3
(
··3 4
)
··4 5
;
··5 6
updateResult
‚‚ $
=
‚‚% &
	Constants
‚‚' 0
.
‚‚0 1
SUCCES_OPERATION
‚‚1 A
;
‚‚A B
}
„„ 
else
‰‰ 
{
ÂÂ 
updateResult
ÊÊ $
=
ÊÊ% &
	Constants
ÊÊ' 0
.
ÊÊ0 1
NO_DATA_MATCHES
ÊÊ1 @
;
ÊÊ@ A
}
ÁÁ 
}
ËË 
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ 
DbUpdateException
ÍÍ $
updateException
ÍÍ% 4
)
ÍÍ4 5
{
ÎÎ 
logger
ÏÏ 
.
ÏÏ 
LogError
ÏÏ 
(
ÏÏ  
updateException
ÏÏ  /
)
ÏÏ/ 0
;
ÏÏ0 1
updateResult
ÌÌ 
=
ÌÌ 
	Constants
ÌÌ (
.
ÌÌ( )
ERROR_OPERATION
ÌÌ) 8
;
ÌÌ8 9
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ 
SqlException
ÔÔ 
sqlException
ÔÔ  ,
)
ÔÔ, -
{
 
logger
ÒÒ 
.
ÒÒ 
LogError
ÒÒ 
(
ÒÒ  
sqlException
ÒÒ  ,
)
ÒÒ, -
;
ÒÒ- .
updateResult
ÚÚ 
=
ÚÚ 
	Constants
ÚÚ (
.
ÚÚ( )
ERROR_OPERATION
ÚÚ) 8
;
ÚÚ8 9
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ 
EntityException
ÙÙ "
entityException
ÙÙ# 2
)
ÙÙ2 3
{
ıı 
logger
ˆˆ 
.
ˆˆ 
LogError
ˆˆ 
(
ˆˆ  
entityException
ˆˆ  /
)
ˆˆ/ 0
;
ˆˆ0 1
updateResult
˜˜ 
=
˜˜ 
	Constants
˜˜ (
.
˜˜( )
ERROR_OPERATION
˜˜) 8
;
˜˜8 9
}
¯¯ 
return
˘˘ 
updateResult
˘˘ 
;
˘˘  
}
˙˙ 	
public
¸¸ 
int
¸¸ .
 UpdateLoginCredentialsToDataBase
¸¸ 3
(
¸¸3 4
AccessAccount
¸¸4 A
oldAccessAccount
¸¸B R
,
¸¸R S
AccessAccount
¸¸T a"
updatedAccessAccount
¸¸b v
)
¸¸v w
{
˝˝ 	
int
˛˛ 
updatedResult
˛˛ 
=
˛˛ 
	Constants
˛˛  )
.
˛˛) *
ERROR_OPERATION
˛˛* 9
;
˛˛9 :
LoggerManager
ˇˇ 
logger
ˇˇ  
=
ˇˇ! "
new
ˇˇ# &
LoggerManager
ˇˇ' 4
(
ˇˇ4 5
this
ˇˇ5 9
.
ˇˇ9 :
GetType
ˇˇ: A
(
ˇˇA B
)
ˇˇB C
)
ˇˇC D
;
ˇˇD E
try
ÄÄ 
{
ÅÅ 
using
ÇÇ 
(
ÇÇ 
var
ÇÇ 
dataBaseContext
ÇÇ *
=
ÇÇ+ ,
new
ÇÇ- 0!
HiveEntityDataModel
ÇÇ1 D
(
ÇÇD E
)
ÇÇE F
)
ÇÇF G
{
ÉÉ 
try
ÑÑ 
{
ÖÖ 
var
ÜÜ #
existingAccessAccount
ÜÜ 1
=
ÜÜ2 3
dataBaseContext
ÜÜ4 C
.
ÜÜC D
AccessAccount
ÜÜD Q
.
ÜÜQ R
FirstOrDefault
ÜÜR `
(
ÜÜ` a
accessAccount
ÜÜa n
=>
ÜÜo q
accessAccount
ÜÜr 
.ÜÜ Ä
emailÜÜÄ Ö
==ÜÜÜ à 
oldAccessAccountÜÜâ ô
.ÜÜô ö
emailÜÜö ü
)ÜÜü †
;ÜÜ† °
if
áá 
(
áá #
existingAccessAccount
áá 1
!=
áá2 4
null
áá5 9
)
áá9 :
{
àà #
existingAccessAccount
ââ 1
.
ââ1 2
email
ââ2 7
=
ââ8 9"
updatedAccessAccount
ââ: N
.
ââN O
email
ââO T
;
ââT U#
existingAccessAccount
ää 1
.
ää1 2
password
ää2 :
=
ää; <"
updatedAccessAccount
ää= Q
.
ääQ R
password
ääR Z
;
ääZ [
dataBaseContext
ãã +
.
ãã+ ,
SaveChanges
ãã, 7
(
ãã7 8
)
ãã8 9
;
ãã9 :
updatedResult
åå )
=
åå* +
	Constants
åå, 5
.
åå5 6
SUCCES_OPERATION
åå6 F
;
ååF G
}
çç 
else
éé 
{
èè 
updatedResult
êê )
=
êê* +
$num
êê, -
;
êê- .
}
ëë 
}
íí 
catch
ìì 
(
ìì 
DbUpdateException
ìì ,
updateException
ìì- <
)
ìì< =
{
îî 
logger
ïï 
.
ïï 
LogError
ïï '
(
ïï' (
updateException
ïï( 7
)
ïï7 8
;
ïï8 9
updatedResult
ññ %
=
ññ& '
	Constants
ññ( 1
.
ññ1 2
ERROR_OPERATION
ññ2 A
;
ññA B
}
óó 
catch
òò 
(
òò 
SqlException
òò '
sqlException
òò( 4
)
òò4 5
{
ôô 
logger
öö 
.
öö 
LogError
öö '
(
öö' (
sqlException
öö( 4
)
öö4 5
;
öö5 6
updatedResult
õõ %
=
õõ& '
	Constants
õõ( 1
.
õõ1 2
ERROR_OPERATION
õõ2 A
;
õõA B
}
úú 
}
ùù 
}
ûû 
catch
üü 
(
üü 
EntityException
üü "
entityException
üü# 2
)
üü2 3
{
†† 
logger
°° 
.
°° 
LogError
°° 
(
°°  
entityException
°°  /
)
°°/ 0
;
°°0 1
}
¢¢ 
return
££ 
updatedResult
££  
;
££  !
}
§§ 	
public
¶¶ 
int
¶¶ %
UpdateProfileToDataBase
¶¶ *
(
¶¶* +
Profile
¶¶+ 2
profile
¶¶3 :
,
¶¶: ;
string
¶¶< B
email
¶¶C H
)
¶¶H I
{
ßß 	
int
®® 
updateResult
®® 
=
®® 
-
®®  
$num
®®  !
;
®®! "
LoggerManager
©© 
logger
©©  
=
©©! "
new
©©# &
LoggerManager
©©' 4
(
©©4 5
this
©©5 9
.
©©9 :
GetType
©©: A
(
©©A B
)
©©B C
)
©©C D
;
©©D E
try
™™ 
{
´´ 
using
¨¨ 
(
¨¨ 
var
¨¨ 
dataBaseContext
¨¨ *
=
¨¨+ ,
new
¨¨- 0!
HiveEntityDataModel
¨¨1 D
(
¨¨D E
)
¨¨E F
)
¨¨F G
{
≠≠ 
using
ÆÆ 
(
ÆÆ 
var
ÆÆ (
dataBaseContextTransaction
ÆÆ 9
=
ÆÆ: ;
dataBaseContext
ÆÆ< K
.
ÆÆK L
Database
ÆÆL T
.
ÆÆT U
BeginTransaction
ÆÆU e
(
ÆÆe f
)
ÆÆf g
)
ÆÆg h
{
ØØ 
try
∞∞ 
{
±± 
var
≤≤ #
existingAccessAccount
≤≤  5
=
≤≤6 7
dataBaseContext
≤≤8 G
.
≤≤G H
AccessAccount
≤≤H U
.
≤≤U V
FirstOrDefault
≤≤V d
(
≤≤d e
AccessAccount
≤≤e r
=>
≤≤s u
AccessAccount≤≤v É
.≤≤É Ñ
email≤≤Ñ â
==≤≤ä å
email≤≤ç í
)≤≤í ì
;≤≤ì î
if
≥≥ 
(
≥≥  #
existingAccessAccount
≥≥  5
!=
≥≥6 8
null
≥≥9 =
)
≥≥= >
{
¥¥ 
var
µµ  #
existingProfile
µµ$ 3
=
µµ4 5
dataBaseContext
µµ6 E
.
µµE F
Profile
µµF M
.
µµM N
FirstOrDefault
µµN \
(
µµ\ ]
profileDataBase
µµ] l
=>
µµm o
profileDataBase
µµp 
.µµ Ä
FK_IdAccountµµÄ å
==µµç è%
existingAccessAccountµµê •
.µµ• ¶
idAccessAccountµµ¶ µ
)µµµ ∂
;µµ∂ ∑
if
∂∂  "
(
∂∂# $
existingProfile
∂∂$ 3
!=
∂∂4 6
null
∂∂7 ;
)
∂∂; <
{
∑∑  !
existingProfile
∏∏$ 3
.
∏∏3 4
nickname
∏∏4 <
=
∏∏= >
profile
∏∏? F
.
∏∏F G
nickname
∏∏G O
;
∏∏O P
existingProfile
ππ$ 3
.
ππ3 4
	imagePath
ππ4 =
=
ππ> ?
profile
ππ@ G
.
ππG H
	imagePath
ππH Q
;
ππQ R
existingProfile
∫∫$ 3
.
∫∫3 4
description
∫∫4 ?
=
∫∫@ A
profile
∫∫B I
.
∫∫I J
description
∫∫J U
;
∫∫U V
dataBaseContext
ªª$ 3
.
ªª3 4
SaveChanges
ªª4 ?
(
ªª? @
)
ªª@ A
;
ªªA B(
dataBaseContextTransaction
ºº$ >
.
ºº> ?
Commit
ºº? E
(
ººE F
)
ººF G
;
ººG H
updateResult
ΩΩ$ 0
=
ΩΩ1 2
	Constants
ΩΩ3 <
.
ΩΩ< =
SUCCES_OPERATION
ΩΩ= M
;
ΩΩM N
}
ææ  !
else
øø  $
{
¿¿  !
}
¬¬  !
}
√√ 
else
ƒƒ  
{
≈≈ 
updateResult
∆∆  ,
=
∆∆- .
	Constants
∆∆/ 8
.
∆∆8 9
NO_DATA_MATCHES
∆∆9 H
;
∆∆H I
}
«« 
}
»» 
catch
…… 
(
…… 
DbUpdateException
…… 0
updateException
……1 @
)
……@ A
{
   
logger
ÀÀ "
.
ÀÀ" #
LogError
ÀÀ# +
(
ÀÀ+ ,
updateException
ÀÀ, ;
)
ÀÀ; <
;
ÀÀ< =(
dataBaseContextTransaction
ÃÃ 6
.
ÃÃ6 7
Rollback
ÃÃ7 ?
(
ÃÃ? @
)
ÃÃ@ A
;
ÃÃA B
updateResult
ÕÕ (
=
ÕÕ) *
	Constants
ÕÕ+ 4
.
ÕÕ4 5
ERROR_OPERATION
ÕÕ5 D
;
ÕÕD E
}
ŒŒ 
catch
œœ 
(
œœ 
SqlException
œœ +
sqlException
œœ, 8
)
œœ8 9
{
–– 
logger
—— "
.
——" #
LogError
——# +
(
——+ ,
sqlException
——, 8
)
——8 9
;
——9 :(
dataBaseContextTransaction
““ 6
.
““6 7
Rollback
““7 ?
(
““? @
)
““@ A
;
““A B
updateResult
”” (
=
””) *
	Constants
””+ 4
.
””4 5
ERROR_OPERATION
””5 D
;
””D E
}
‘‘ 
}
’’ 
}
÷÷ 
}
◊◊ 
catch
ÿÿ 
(
ÿÿ 
EntityException
ÿÿ "
entityException
ÿÿ# 2
)
ÿÿ2 3
{
ŸŸ 
logger
⁄⁄ 
.
⁄⁄ 
LogError
⁄⁄ 
(
⁄⁄  
entityException
⁄⁄  /
)
⁄⁄/ 0
;
⁄⁄0 1
}
€€ 
return
‹‹ 
updateResult
‹‹ 
;
‹‹  
}
›› 	
public
ﬂﬂ 
int
ﬂﬂ 5
'VerifyExistingAccessAccountIntoDataBase
ﬂﬂ :
(
ﬂﬂ: ;
string
ﬂﬂ; A
email
ﬂﬂB G
,
ﬂﬂG H
string
ﬂﬂI O
username
ﬂﬂP X
)
ﬂﬂX Y
{
‡‡ 	
int
··  
verificationResult
·· "
=
··# $
-
··% &
$num
··& '
;
··' (
LoggerManager
‚‚ 
logger
‚‚  
=
‚‚! "
new
‚‚# &
LoggerManager
‚‚' 4
(
‚‚4 5
this
‚‚5 9
.
‚‚9 :
GetType
‚‚: A
(
‚‚A B
)
‚‚B C
)
‚‚C D
;
‚‚D E
try
„„ 
{
‰‰ 
using
ÂÂ 
(
ÂÂ 
var
ÂÂ 
dataBaseContext
ÂÂ *
=
ÂÂ+ ,
new
ÂÂ- 0!
HiveEntityDataModel
ÂÂ1 D
(
ÂÂD E
)
ÂÂE F
)
ÂÂF G
{
ÊÊ 
var
ÁÁ 
existingAccount
ÁÁ '
=
ÁÁ( )
dataBaseContext
ÁÁ* 9
.
ÁÁ9 :
AccessAccount
ÁÁ: G
.
ÁÁG H
FirstOrDefault
ÁÁH V
(
ÁÁV W
accessAccount
ÁÁW d
=>
ÁÁe g
accessAccount
ÁÁh u
.
ÁÁu v
email
ÁÁv {
==
ÁÁ| ~
emailÁÁ Ñ
&&ÁÁÖ á
accessAccountÁÁà ï
.ÁÁï ñ
usernameÁÁñ û
==ÁÁü °
usernameÁÁ¢ ™
)ÁÁ™ ´
;ÁÁ´ ¨
if
ËË 
(
ËË 
existingAccount
ËË '
!=
ËË( *
null
ËË+ /
)
ËË/ 0
{
ÈÈ  
verificationResult
ÍÍ *
=
ÍÍ+ ,
	Constants
ÍÍ- 6
.
ÍÍ6 7
DATA_MATCHES
ÍÍ7 C
;
ÍÍC D
}
ÎÎ 
else
ÏÏ 
{
ÌÌ  
verificationResult
ÓÓ *
=
ÓÓ+ ,
	Constants
ÓÓ- 6
.
ÓÓ6 7
NO_DATA_MATCHES
ÓÓ7 F
;
ÓÓF G
}
ÔÔ 
}
 
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ 
SqlException
ÚÚ 
sqlException
ÚÚ  ,
)
ÚÚ, -
{
ÛÛ 
logger
ÙÙ 
.
ÙÙ 
LogError
ÙÙ 
(
ÙÙ  
sqlException
ÙÙ  ,
)
ÙÙ, -
;
ÙÙ- . 
verificationResult
ıı "
=
ıı# $
	Constants
ıı% .
.
ıı. /
ERROR_OPERATION
ıı/ >
;
ıı> ?
}
ˆˆ 
catch
˜˜ 
(
˜˜ 
EntityException
˜˜ "
entityException
˜˜# 2
)
˜˜2 3
{
¯¯ 
logger
˘˘ 
.
˘˘ 
LogError
˘˘ 
(
˘˘  
entityException
˘˘  /
)
˘˘/ 0
;
˘˘0 1 
verificationResult
˙˙ "
=
˙˙# $
	Constants
˙˙% .
.
˙˙. /
ERROR_OPERATION
˙˙/ >
;
˙˙> ?
}
˚˚ 
return
¸¸  
verificationResult
¸¸ %
;
¸¸% &
}
˝˝ 	
public
ˇˇ 
int
ˇˇ +
VerifyCredentialsFromDataBase
ˇˇ 0
(
ˇˇ0 1
string
ˇˇ1 7
username
ˇˇ8 @
,
ˇˇ@ A
string
ˇˇB H
email
ˇˇI N
)
ˇˇN O
{
ÄÄ 	
int
ÅÅ  
verificationResult
ÅÅ "
=
ÅÅ# $
-
ÅÅ% &
$num
ÅÅ& '
;
ÅÅ' (
LoggerManager
ÇÇ 
logger
ÇÇ  
=
ÇÇ! "
new
ÇÇ# &
LoggerManager
ÇÇ' 4
(
ÇÇ4 5
this
ÇÇ5 9
.
ÇÇ9 :
GetType
ÇÇ: A
(
ÇÇA B
)
ÇÇB C
)
ÇÇC D
;
ÇÇD E
try
ÉÉ 
{
ÑÑ 
using
ÖÖ 
(
ÖÖ 
var
ÖÖ 
dataBaseContext
ÖÖ *
=
ÖÖ+ ,
new
ÖÖ- 0!
HiveEntityDataModel
ÖÖ1 D
(
ÖÖD E
)
ÖÖE F
)
ÖÖF G
{
ÜÜ 
var
áá 
existingAccount
áá '
=
áá( )
dataBaseContext
áá* 9
.
áá9 :
AccessAccount
áá: G
.
ááG H
Where
ááH M
(
ááM N
accessAccount
ááN [
=>
áá\ ^
accessAccount
áá_ l
.
áál m
email
áám r
==
áás u
email
ááv {
)
áá{ |
.
áá| }
FirstOrDefaultáá} ã
(ááã å
)ááå ç
;ááç é
if
àà 
(
àà 
existingAccount
àà '
!=
àà( *
null
àà+ /
&&
àà0 2
existingAccount
àà3 B
.
ààB C
username
ààC K
!=
ààL N
username
ààO W
)
ààW X
{
ââ  
verificationResult
ää *
=
ää+ ,
	Constants
ää- 6
.
ää6 7
DATA_MATCHES
ää7 C
;
ääC D
}
ãã 
else
åå 
{
çç  
verificationResult
éé *
=
éé+ ,
	Constants
éé- 6
.
éé6 7
NO_DATA_MATCHES
éé7 F
;
ééF G
}
èè 
}
êê 
}
ëë 
catch
íí 
(
íí 
SqlException
íí 
sqlException
íí  ,
)
íí, -
{
ìì 
logger
îî 
.
îî 
LogError
îî 
(
îî  
sqlException
îî  ,
)
îî, -
;
îî- . 
verificationResult
ïï "
=
ïï# $
	Constants
ïï% .
.
ïï. /
ERROR_OPERATION
ïï/ >
;
ïï> ?
}
ññ 
catch
óó 
(
óó 
EntityException
óó "
entityException
óó# 2
)
óó2 3
{
òò 
logger
ôô 
.
ôô 
LogError
ôô 
(
ôô  
entityException
ôô  /
)
ôô/ 0
;
ôô0 1 
verificationResult
öö "
=
öö# $
	Constants
öö% .
.
öö. /
ERROR_OPERATION
öö/ >
;
öö> ?
}
õõ 
return
úú  
verificationResult
úú %
;
úú% &
}
ùù 	
public
üü 
int
üü 3
%VerifyPasswordCredentialsFromDataBase
üü 8
(
üü8 9
string
üü9 ?
username
üü@ H
,
üüH I
string
üüJ P
password
üüQ Y
)
üüY Z
{
†† 	
int
°°  
verificationResult
°° "
=
°°# $
-
°°% &
$num
°°& '
;
°°' (
LoggerManager
¢¢ 
logger
¢¢  
=
¢¢! "
new
¢¢# &
LoggerManager
¢¢' 4
(
¢¢4 5
this
¢¢5 9
.
¢¢9 :
GetType
¢¢: A
(
¢¢A B
)
¢¢B C
)
¢¢C D
;
¢¢D E
try
££ 
{
§§ 
using
•• 
(
•• 
var
•• 
dataBaseContext
•• *
=
••+ ,
new
••- 0!
HiveEntityDataModel
••1 D
(
••D E
)
••E F
)
••F G
{
¶¶ 
var
ßß 
existingAccount
ßß '
=
ßß( )
dataBaseContext
ßß* 9
.
ßß9 :
AccessAccount
ßß: G
.
ßßG H
Where
ßßH M
(
ßßM N
accessAccount
ßßN [
=>
ßß\ ^
accessAccount
ßß_ l
.
ßßl m
username
ßßm u
==
ßßv x
usernameßßy Å
)ßßÅ Ç
.ßßÇ É
FirstOrDefaultßßÉ ë
(ßßë í
)ßßí ì
;ßßì î
if
®® 
(
®® 
existingAccount
®® '
!=
®®( *
null
®®+ /
&&
®®0 2
existingAccount
®®3 B
.
®®B C
password
®®C K
==
®®L N
password
®®O W
)
®®W X
{
©©  
verificationResult
™™ *
=
™™+ ,
	Constants
™™- 6
.
™™6 7
DATA_MATCHES
™™7 C
;
™™C D
}
´´ 
else
¨¨ 
{
≠≠  
verificationResult
ÆÆ *
=
ÆÆ+ ,
	Constants
ÆÆ- 6
.
ÆÆ6 7
NO_DATA_MATCHES
ÆÆ7 F
;
ÆÆF G
}
ØØ 
}
∞∞ 
}
±± 
catch
≤≤ 
(
≤≤ 
SqlException
≤≤ 
sqlException
≤≤  ,
)
≤≤, -
{
≥≥ 
logger
¥¥ 
.
¥¥ 
LogError
¥¥ 
(
¥¥  
sqlException
¥¥  ,
)
¥¥, -
;
¥¥- . 
verificationResult
µµ "
=
µµ# $
	Constants
µµ% .
.
µµ. /
ERROR_OPERATION
µµ/ >
;
µµ> ?
}
∂∂ 
catch
∑∑ 
(
∑∑ 
EntityException
∑∑ "
entityException
∑∑# 2
)
∑∑2 3
{
∏∏ 
logger
ππ 
.
ππ 
LogError
ππ 
(
ππ  
entityException
ππ  /
)
ππ/ 0
;
ππ0 1 
verificationResult
∫∫ "
=
∫∫# $
	Constants
∫∫% .
.
∫∫. /
ERROR_OPERATION
∫∫/ >
;
∫∫> ?
}
ªª 
return
ºº  
verificationResult
ºº %
;
ºº% &
}
ΩΩ 	
}
øø 
}¿¿ ØT
iC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\DataBaseManager\Operations\MatchOperation.cs
	namespace 	
DataBaseManager
 
. 

Operations $
{ 
public 

class 
MatchOperation 
{ 
public 
int #
RegisterMatchToDataBase *
(* +
Match+ 0
match1 6
)6 7
{ 	
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
int 
insertionResult 
=  !
	Constants" +
.+ ,
ERROR_OPERATION, ;
;; <
try 
{ 
using 
( 
var 
dataBaseContext )
=* +
new, /
HiveEntityDataModel0 C
(C D
)D E
)E F
{ 
dataBaseContext #
.# $
Match$ )
.) *
Add* -
(- .
match. 3
)3 4
;4 5
dataBaseContext #
.# $
SaveChanges$ /
(/ 0
)0 1
;1 2
insertionResult #
=$ %
	Constants& /
./ 0
SUCCES_OPERATION0 @
;@ A
} 
} 
catch 
( 
DbUpdateException #
dbUpdateException$ 5
)5 6
{ 
logger   
.   
LogError   
(    
dbUpdateException    1
)  1 2
;  2 3
}!! 
catch!! 
(!! 
EntityException!! #
entityException!!$ 3
)!!3 4
{"" 
logger## 
.## 
LogError## 
(##  
entityException##  /
)##/ 0
;##0 1
}$$ 
catch$$ 
($$ 
SqlException$$ 
sqlException$$  ,
)$$, -
{%% 
logger&& 
.&& 
LogError&& 
(&&  
sqlException&&  ,
)&&, -
;&&- .
}'' 
return(( 
insertionResult(( "
;((" #
})) 	
public++ 
int++ 
ModifyMatchState++ #
(++# $
Match++$ )
match++* /
)++/ 0
{,, 	
LoggerManager-- 
logger--  
=--! "
new--# &
LoggerManager--' 4
(--4 5
this--5 9
.--9 :
GetType--: A
(--A B
)--B C
)--C D
;--D E
int.. 
modificationResult.. "
=..# $
	Constants..% .
.... /
ERROR_OPERATION../ >
;..> ?
try// 
{00 
using11 
(11 
var11 
dataBaseContext11 *
=11+ ,
new11- 0
HiveEntityDataModel111 D
(11D E
)11E F
)11F G
{22 
var33 
matchToChange33 %
=33& '
dataBaseContext33( 7
.337 8
Match338 =
.33= >
Where33> C
(33C D

matchFound33D N
=>33O Q

matchFound33R \
.33\ ]
FK_IdAccount33] i
==33j l
match33m r
.33r s
FK_IdAccount33s 
&&
33Ä Ç

matchFound
33É ç
.
33ç é
code
33é í
==
33ì ï
match
33ñ õ
.
33õ ú
code
33ú †
)
33† °
.
33° ¢
FirstOrDefault
33¢ ∞
(
33∞ ±
)
33± ≤
;
33≤ ≥
if44 
(44 
matchToChange44 %
!=44& (
null44) -
)44- .
{55 
matchToChange66 %
.66% &
state66& +
=66, -
match66. 3
.663 4
state664 9
;669 :
dataBaseContext77 '
.77' (
SaveChanges77( 3
(773 4
)774 5
;775 6
modificationResult88 *
=88+ ,
	Constants88- 6
.886 7
SUCCES_OPERATION887 G
;88G H
}99 
else:: 
{;; 
modificationResult<< *
=<<+ ,
	Constants<<- 6
.<<6 7
NO_DATA_MATCHES<<7 F
;<<F G
}== 
}>> 
}?? 
catch@@ 
(@@ 
DbUpdateException@@ $
dbUpdateException@@% 6
)@@6 7
{AA 
loggerBB 
.BB 
LogErrorBB 
(BB  
dbUpdateExceptionBB  1
)BB1 2
;BB2 3
}CC 
catchDD 
(DD 
EntityExceptionDD "
entityExceptionDD# 2
)DD2 3
{EE 
loggerFF 
.FF 
LogErrorFF 
(FF  
entityExceptionFF  /
)FF/ 0
;FF0 1
}GG 
catchHH 
(HH 
SqlExceptionHH 
sqlExceptionHH  ,
)HH, -
{II 
loggerJJ 
.JJ 
LogErrorJJ 
(JJ  
sqlExceptionJJ  ,
)JJ, -
;JJ- .
}KK 
returnLL 
modificationResultLL %
;LL% &
}MM 	
publicOO 
intOO %
VerifyExistingActiveMatchOO ,
(OO, -
MatchOO- 2
matchOO3 8
)OO8 9
{PP 	
LoggerManagerQQ 
loggerQQ  
=QQ! "
newQQ# &
LoggerManagerQQ' 4
(QQ4 5
thisQQ5 9
.QQ9 :
GetTypeQQ: A
(QQA B
)QQB C
)QQC D
;QQD E
intRR 
verificationResultRR "
=RR# $
	ConstantsRR% .
.RR. /
ERROR_OPERATIONRR/ >
;RR> ?
trySS 
{TT 
usingUU 
(UU 
varUU 
dataBaseContextUU *
=UU+ ,
newUU- 0
HiveEntityDataModelUU1 D
(UUD E
)UUE F
)UUF G
{VV 
varWW 
matchToChangeWW %
=WW& '
dataBaseContextWW( 7
.WW7 8
MatchWW8 =
.WW= >
WhereWW> C
(WWC D

matchFoundWWD N
=>WWO Q

matchFoundWWR \
.WW\ ]
stateWW] b
==WWc e
EnumerationsWWf r
.WWr s
MatchWWs x
.WWx y
ActiveWWy 
.	WW Ä
ToString
WWÄ à
(
WWà â
)
WWâ ä
&&
WWã ç

matchFound
WWé ò
.
WWò ô
code
WWô ù
==
WWû †
match
WW° ¶
.
WW¶ ß
code
WWß ´
)
WW´ ¨
.
WW¨ ≠
FirstOrDefault
WW≠ ª
(
WWª º
)
WWº Ω
;
WWΩ æ
ifXX 
(XX 
matchToChangeXX %
!=XX& (
nullXX) -
)XX- .
{YY 
verificationResultZZ *
=ZZ+ ,
	ConstantsZZ- 6
.ZZ6 7
SUCCES_OPERATIONZZ7 G
;ZZG H
}[[ 
else\\ 
{]] 
verificationResult^^ *
=^^+ ,
	Constants^^- 6
.^^6 7
NO_DATA_MATCHES^^7 F
;^^F G
}__ 
}`` 
}aa 
catchbb 
(bb 
EntityExceptionbb "
entityExceptionbb# 2
)bb2 3
{cc 
loggerdd 
.dd 
LogErrordd 
(dd  
entityExceptiondd  /
)dd/ 0
;dd0 1
}ee 
catchff 
(ff 
SqlExceptionff 
sqlExceptionff  ,
)ff, -
{gg 
loggerhh 
.hh 
LogErrorhh 
(hh  
sqlExceptionhh  ,
)hh, -
;hh- .
}ii 
returnjj 
verificationResultjj %
;jj% &
}kk 	
publicmm 
intmm 
VerifyMatchCreatormm %
(mm% &
Matchmm& +
matchmm, 1
)mm1 2
{nn 	
LoggerManageroo 
loggeroo  
=oo! "
newoo# &
LoggerManageroo' 4
(oo4 5
thisoo5 9
.oo9 :
GetTypeoo: A
(ooA B
)ooB C
)ooC D
;ooD E
intpp 
verificationResultpp "
=pp# $
	Constantspp% .
.pp. /
ERROR_OPERATIONpp/ >
;pp> ?
tryqq 
{rr 
usingss 
(ss 
varss 
dataBaseContextss )
=ss* +
newss, /
HiveEntityDataModelss0 C
(ssC D
)ssD E
)ssE F
{tt 
varuu 

matchFounduu "
=uu# $
dataBaseContextuu% 4
.uu4 5
Matchuu5 :
.uu: ;
Whereuu; @
(uu@ A
dataBaseMatchuuA N
=>uuO Q
dataBaseMatchuuR _
.uu_ `
FK_IdAccountuu` l
==uum o
matchuup u
.uuu v
FK_IdAccount	uuv Ç
&&vv 
dataBaseMatchvv $
.vv$ %
codevv% )
==vv* ,
matchvv- 2
.vv2 3
codevv3 7
)vv7 8
.vv8 9
FirstOrDefaultvv9 G
(vvG H
)vvH I
;vvI J
ifww 
(ww 

matchFoundww !
!=ww" $
nullww% )
)ww) *
{xx 
verificationResultyy *
=yy+ ,
	Constantsyy- 6
.yy6 7
SUCCES_OPERATIONyy7 G
;yyG H
}zz 
else{{ 
{|| 
verificationResult}} *
=}}* +
	Constants}}, 5
.}}5 6
NO_DATA_MATCHES}}6 E
;}}E F
}~~ 
} 
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ 
EntityException
ÅÅ "
entityException
ÅÅ# 2
)
ÅÅ2 3
{
ÇÇ 
logger
ÉÉ 
.
ÉÉ 
LogError
ÉÉ 
(
ÉÉ  
entityException
ÉÉ  /
)
ÉÉ/ 0
;
ÉÉ0 1 
verificationResult
ÑÑ "
=
ÑÑ# $
	Constants
ÑÑ% .
.
ÑÑ. /
ERROR_OPERATION
ÑÑ/ >
;
ÑÑ> ?
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
SqlException
ÜÜ 
sqlException
ÜÜ  ,
)
ÜÜ, -
{
áá 
logger
àà 
.
àà 
LogError
àà 
(
àà  
sqlException
àà  ,
)
àà, -
;
àà- . 
verificationResult
ââ "
=
ââ# $
	Constants
ââ% .
.
ââ. /
ERROR_OPERATION
ââ/ >
;
ââ> ?
}
ää 
return
ãã  
verificationResult
ãã %
;
ãã% &
}
åå 	
}
çç 
}éé „∞
oC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\DataBaseManager\Operations\LeaderBoardOperation.cs
	namespace 	
DataBaseManager
 
. 

Operations $
{ 
public 

class  
LeaderBoardOperation %
{ 
public 
List 
< 
PlayerLeaderBoard %
>% &1
%GetAllPlayersLeaderboardsFromDataBase' L
(L M
)M N
{ 	
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
List 
< 
PlayerLeaderBoard "
>" #$
leaderBoardsListObtained$ <
== >
new? B
ListC G
<G H
PlayerLeaderBoardH Y
>Y Z
(Z [
)[ \
;\ ]
PlayerLeaderBoard ,
 playerLeaderBoardFailedOperation >
=? @
newA D
PlayerLeaderBoardE V
(V W
)W X
;X Y,
 playerLeaderBoardFailedOperation ,
., -
	idAccount- 6
=7 8
	Constants9 B
.B C
ERROR_OPERATIONC R
;R S
try 
{ 
using 
( 
var 
databaseContext *
=+ ,
new- 0
HiveEntityDataModel1 D
(D E
)E F
)F G
{ 
var 0
$leaderBoardsListObtainedFromDataBase <
== >
databaseContext? N
.N O
LeaderboardO Z
.Z [
Join[ _
(_ `
databaseContext` o
.o p
AccessAccountp }
,} ~
leaderBoard #
=>$ &
leaderBoard' 2
.2 3
FK_IdAccount3 ?
,? @
accountA H
=>I K
accountL S
.S T
idAccessAccountT c
,c d
(e f
leaderBoardf q
,q r
accounts z
)z {
=>| ~
new	 Ç
{
É Ñ
Leaderboard '
=( )
leaderBoard* 5
,5 6
AccessAccount   )
=  * +
account  , 3
}!! 
)!! 
.!! 
Join!! 
(!!  
databaseContext!!  /
.!!/ 0
Profile!!0 7
,!!7 8
result!!9 ?
=>!!@ B
result!!C I
.!!I J
AccessAccount!!J W
.!!W X
idAccessAccount!!X g
,!!g h
profile!!i p
=>!!q s
profile!!t {
.!!{ |
FK_IdAccount	!!| à
,
!!à â
("" 
result"" 
,""  
profile""  '
)""' (
=>"") +
new"", /
{""0 1
result## "
.##" #
Leaderboard### .
,##. /
result$$ "
.$$" #
AccessAccount$$# 0
,$$0 1
Profile%% #
=%%$ %
profile%%& -
}&& 
)&& 
.&& 
ToList&& !
(&&! "
)&&" #
;&&# $
for'' 
('' 
int'' !
leaderBoardsListIndex'' 1
=''2 3
$num''4 5
;''5 6!
leaderBoardsListIndex''7 L
<''M N0
$leaderBoardsListObtainedFromDataBase''O s
.''s t
Count''t y
;''y z"
leaderBoardsListIndex	''{ ê
++
''ê í
)
''í ì
{(( 
PlayerLeaderBoard)) )"
playerLeaderBoardFound))* @
=))A B
new))C F
PlayerLeaderBoard))G X
())X Y
)))Y Z
;))Z ["
playerLeaderBoardFound** .
.**. /
	idAccount**/ 8
=**9 :0
$leaderBoardsListObtainedFromDataBase**; _
[**_ `!
leaderBoardsListIndex**` u
]**u v
.**v w
AccessAccount	**w Ñ
.
**Ñ Ö
idAccessAccount
**Ö î
;
**î ï"
playerLeaderBoardFound++ .
.++. /
username++/ 7
=++8 90
$leaderBoardsListObtainedFromDataBase++: ^
[++^ _!
leaderBoardsListIndex++_ t
]++t u
.++u v
AccessAccount	++v É
.
++É Ñ
username
++Ñ å
;
++å ç"
playerLeaderBoardFound,, .
.,,. /
lostMatches,,/ :
=,,; <0
$leaderBoardsListObtainedFromDataBase,,= a
[,,a b!
leaderBoardsListIndex,,b w
],,w x
.,,x y
Leaderboard	,,y Ñ
.
,,Ñ Ö
lostMatches
,,Ö ê
;
,,ê ë"
playerLeaderBoardFound-- .
.--. /

wonMatches--/ 9
=--: ;0
$leaderBoardsListObtainedFromDataBase--< `
[--` a!
leaderBoardsListIndex--a v
]--v w
.--w x
Leaderboard	--x É
.
--É Ñ

wonMatches
--Ñ é
;
--é è"
playerLeaderBoardFound.. .
.... /
drawMatches../ :
=..; <0
$leaderBoardsListObtainedFromDataBase..= a
[..a b!
leaderBoardsListIndex..b w
]..w x
...x y
Leaderboard	..y Ñ
.
..Ñ Ö
drawMatches
..Ö ê
;
..ê ë"
playerLeaderBoardFound// .
.//. /
totalMatches/// ;
=//< =0
$leaderBoardsListObtainedFromDataBase//> b
[//b c!
leaderBoardsListIndex//c x
]//x y
.//y z
Leaderboard	//z Ö
.
//Ö Ü
totalOfMatches
//Ü î
;
//î ï"
playerLeaderBoardFound00 .
.00. /
imageProfile00/ ;
=00< =0
$leaderBoardsListObtainedFromDataBase00> b
[00b c!
leaderBoardsListIndex00c x
]00x y
.00y z
Profile	00z Å
.
00Å Ç
	imagePath
00Ç ã
;
00ã å$
leaderBoardsListObtained11 0
.110 1
Add111 4
(114 5"
playerLeaderBoardFound115 K
)11K L
;11L M
}22 
}33 
}44 
catch44 
(44 
SqlException44 
sqlException44  ,
)44, -
{55 
logger66 
.66 
LogError66 
(66  
sqlException66  ,
)66, -
;66- .$
leaderBoardsListObtained77 (
.77( )
Add77) ,
(77, -,
 playerLeaderBoardFailedOperation77- M
)77M N
;77N O
}88 
catch88 
(88 
EntityException88 "
entityException88# 2
)882 3
{99 
logger:: 
.:: 
LogError:: 
(::  
entityException::  /
)::/ 0
;::0 1$
leaderBoardsListObtained;; (
.;;( )
Add;;) ,
(;;, -,
 playerLeaderBoardFailedOperation;;- M
);;M N
;;;N O
}<< 
return== $
leaderBoardsListObtained== +
;==+ ,
}>> 	
public@@ 
PlayerLeaderBoard@@  "
GetPersonalLeaderBoard@@! 7
(@@7 8
int@@8 ;
leaderBoardId@@< I
)@@I J
{AA 	
LoggerManagerBB 
loggerBB  
=BB! "
newBB# &
LoggerManagerBB' 4
(BB4 5
thisBB5 9
.BB9 :
GetTypeBB: A
(BBA B
)BBB C
)BBC D
;BBD E
PlayerLeaderBoardCC 
playerLaderBoardCC .
=CC/ 0
newCC1 4
PlayerLeaderBoardCC5 F
(CCF G
)CCG H
;CCH I
playerLaderBoardDD 
.DD 
	idAccountDD &
=DD' (
	ConstantsDD) 2
.DD2 3
ERROR_OPERATIONDD3 B
;DDB C
tryEE 
{FF 
usingGG 
(GG 
varGG 
dataBaseContextGG )
=GG* +
newGG, /
HiveEntityDataModelGG0 C
(GGC D
)GGD E
)GGE F
{HH 
varII %
playerLeaderBoardObtainedII 1
=II2 3
dataBaseContextII4 C
.IIC D
LeaderboardIID O
.IIO P
WhereIIP U
(IIU V
leaderBoardIIV a
=>IIb d
leaderBoardIIe p
.IIp q
FK_IdAccountIIq }
==	II~ Ä
leaderBoardId
IIÅ é
)
IIé è
.
IIè ê
Join
IIê î
(
IIî ï
dataBaseContextJJ '
.JJ' (
AccessAccountJJ( 5
,JJ5 6
leaderBoardJJ7 B
=>JJC E
leaderBoardJJF Q
.JJQ R
FK_IdAccountJJR ^
,JJ^ _
accountJJ` g
=>JJh j
accountJJk r
.JJr s
idAccessAccount	JJs Ç
,
JJÇ É
(
JJÑ Ö
leaderboard
JJÖ ê
,
JJê ë
account
JJí ô
)
JJô ö
=>
JJõ ù
newKK 
{KK 
LeaderboardKK )
=KK* +
leaderboardKK, 7
,KK7 8
AccessAccountKK9 F
=KKG H
accountKKI P
}KKQ R
)KKR S
.KKS T
FirstOrDefaultKKT b
(KKb c
)KKc d
;KKd e
ifLL 
(LL %
playerLeaderBoardObtainedLL 0
!=LL1 3
nullLL4 8
)LL8 9
{MM 
playerLaderBoardNN (
.NN( )
totalMatchesNN) 5
=NN6 7%
playerLeaderBoardObtainedNN8 Q
.NNQ R
LeaderboardNNR ]
.NN] ^
totalOfMatchesNN^ l
;NNl m
playerLaderBoardOO (
.OO( )

wonMatchesOO) 3
=OO4 5%
playerLeaderBoardObtainedOO6 O
.OOO P
LeaderboardOOP [
.OO[ \

wonMatchesOO\ f
;OOf g
playerLaderBoardPP (
.PP( )
lostMatchesPP) 4
=PP5 6%
playerLeaderBoardObtainedPP7 P
.PPP Q
LeaderboardPPQ \
.PP\ ]
lostMatchesPP] h
;PPh i
playerLaderBoardQQ (
.QQ( )
drawMatchesQQ) 4
=QQ5 6%
playerLeaderBoardObtainedQQ7 P
.QQP Q
LeaderboardQQQ \
.QQ\ ]
drawMatchesQQ] h
;QQh i
playerLaderBoardRR (
.RR( )
usernameRR) 1
=RR2 3%
playerLeaderBoardObtainedRR4 M
.RRM N
AccessAccountRRN [
.RR[ \
usernameRR\ d
;RRd e
playerLaderBoardSS (
.SS( )
	idAccountSS) 2
=SS3 4%
playerLeaderBoardObtainedSS5 N
.SSN O
AccessAccountSSO \
.SS\ ]
idAccessAccountSS] l
;SSl m
}TT 
elseUU 
{VV 
playerLaderBoardWW (
.WW( )
	idAccountWW) 2
=WW3 4
	ConstantsWW5 >
.WW> ?
NO_DATA_MATCHESWW? N
;WWN O
}XX 
}YY 
}ZZ 
catchZZ 
(ZZ 
SqlExceptionZZ  
sqlExceptionZZ! -
)ZZ- .
{[[ 
logger\\ 
.\\ 
LogError\\ 
(\\  
sqlException\\  ,
)\\, -
;\\- .
playerLaderBoard]]  
.]]  !
	idAccount]]! *
=]]+ ,
	Constants]]- 6
.]]6 7
ERROR_OPERATION]]7 F
;]]F G
}^^ 
catch__ 
(__ 
EntityException__ "
entityException__# 2
)__2 3
{`` 
loggeraa 
.aa 
LogErroraa 
(aa  
entityExceptionaa  /
)aa/ 0
;aa0 1
playerLaderBoardbb  
.bb  !
	idAccountbb! *
=bb+ ,
	Constantsbb- 6
.bb6 7
ERROR_OPERATIONbb7 F
;bbF G
}cc 
returndd 
playerLaderBoarddd #
;dd# $
}ee 	
publicgg 
intgg 9
-UpdateDrawResultToPlayerLeaderBoardToDataBasegg @
(gg@ A
intggA D
	idAccountggE N
)ggN O
{hh 	
LoggerManagerii 
loggerii  
=ii! "
newii# &
LoggerManagerii' 4
(ii4 5
thisii5 9
.ii9 :
GetTypeii: A
(iiA B
)iiB C
)iiC D
;iiD E
intjj 
resultUpdatejj 
=jj 
	Constantsjj (
.jj( )
ERROR_OPERATIONjj) 8
;jj8 9
trykk 
{ll 
usingmm 
(mm 
varmm 
dataBaseContextmm )
=mm* +
newmm, /
HiveEntityDataModelmm0 C
(mmC D
)mmD E
)mmE F
{nn 
varoo 
leaderBoardoo #
=oo$ %
dataBaseContextoo& 5
.oo5 6
Leaderboardoo6 A
.ooA B
WhereooB G
(ooG H
leaderBoardDataBaseooH [
=>oo\ ^
leaderBoardDataBaseoo_ r
.oor s
FK_IdAccountoos 
==
ooÄ Ç
	idAccount
ooÉ å
)
ooå ç
.
ooç é
FirstOrDefault
ooé ú
(
ooú ù
)
ooù û
;
ooû ü
ifpp 
(pp 
leaderBoardpp #
!=pp$ &
nullpp' +
)pp+ ,
{qq 
leaderBoardrr #
.rr# $
drawMatchesrr$ /
+=rr0 2
$numrr3 4
;rr4 5
leaderBoardss #
.ss# $
totalOfMatchesss$ 2
+=ss3 5
$numss6 7
;ss7 8
dataBaseContexttt '
.tt' (
SaveChangestt( 3
(tt3 4
)tt4 5
;tt5 6
resultUpdateuu $
=uu% &
	Constantsuu' 0
.uu0 1
SUCCES_OPERATIONuu1 A
;uuA B
}vv 
elseww 
{xx 
resultUpdateyy $
=yy% &
	Constantsyy' 0
.yy0 1
NO_DATA_MATCHESyy1 @
;yy@ A
}zz 
}{{ 
}}} 
catch}} 
(}} 
DbUpdateException}} $
dbUpdateException}}% 6
)}}6 7
{~~ 
logger 
. 
LogError 
(  
dbUpdateException  1
)1 2
;2 3
resultUpdate
ÄÄ 
=
ÄÄ 
	Constants
ÄÄ (
.
ÄÄ( )
ERROR_OPERATION
ÄÄ) 8
;
ÄÄ8 9
}
ÅÅ 
catch
ÅÅ 
(
ÅÅ 
SqlException
ÅÅ 
sqlException
ÅÅ  ,
)
ÅÅ, -
{
ÇÇ 
logger
ÉÉ 
.
ÉÉ 
LogError
ÉÉ 
(
ÉÉ  
sqlException
ÉÉ  ,
)
ÉÉ, -
;
ÉÉ- .
resultUpdate
ÑÑ 
=
ÑÑ 
	Constants
ÑÑ (
.
ÑÑ( )
ERROR_OPERATION
ÑÑ) 8
;
ÑÑ8 9
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
EntityException
ÜÜ !
entityException
ÜÜ" 1
)
ÜÜ1 2
{
áá 
logger
àà 
.
àà 
LogError
àà 
(
àà  
entityException
àà  /
)
àà/ 0
;
àà0 1
resultUpdate
ââ 
=
ââ 
	Constants
ââ (
.
ââ( )
ERROR_OPERATION
ââ) 8
;
ââ8 9
}
ää 
return
ãã 
resultUpdate
ãã 
;
ãã  
}
åå 	
public
éé 
int
éé =
/UpdateWinnerResultToPlayerLeaderBoardToDataBase
éé B
(
ééB C
int
ééC F
	idAccount
ééG P
)
ééP Q
{
èè 	
LoggerManager
êê 
logger
êê  
=
êê! "
new
êê# &
LoggerManager
êê' 4
(
êê4 5
this
êê5 9
.
êê9 :
GetType
êê: A
(
êêA B
)
êêB C
)
êêC D
;
êêD E
int
ëë 
resultUpdate
ëë 
=
ëë 
	Constants
ëë (
.
ëë( )
ERROR_OPERATION
ëë) 8
;
ëë8 9
try
íí 
{
ìì 
using
îî 
(
îî 
var
îî 
dataBaseContext
îî *
=
îî+ ,
new
îî- 0!
HiveEntityDataModel
îî1 D
(
îîD E
)
îîE F
)
îîF G
{
ïï 
var
ññ 
leaderBoard
ññ #
=
ññ$ %
dataBaseContext
ññ& 5
.
ññ5 6
Leaderboard
ññ6 A
.
ññA B
Where
ññB G
(
ññG H!
leaderBoardDataBase
ññH [
=>
ññ\ ^!
leaderBoardDataBase
ññ_ r
.
ññr s
FK_IdAccount
ññs 
==ññÄ Ç
	idAccountññÉ å
)ññå ç
.ññç é
FirstOrDefaultññé ú
(ññú ù
)ññù û
;ññû ü
if
óó 
(
óó 
leaderBoard
óó #
!=
óó$ &
null
óó' +
)
óó+ ,
{
òò 
leaderBoard
ôô #
.
ôô# $

wonMatches
ôô$ .
+=
ôô/ 1
$num
ôô2 3
;
ôô3 4
leaderBoard
öö #
.
öö# $
totalOfMatches
öö$ 2
+=
öö3 5
$num
öö6 7
;
öö7 8
dataBaseContext
õõ '
.
õõ' (
SaveChanges
õõ( 3
(
õõ3 4
)
õõ4 5
;
õõ5 6
resultUpdate
úú $
=
úú% &
	Constants
úú' 0
.
úú0 1
SUCCES_OPERATION
úú1 A
;
úúA B
}
ùù 
else
ûû 
{
üü 
resultUpdate
†† $
=
††% &
	Constants
††' 0
.
††0 1
NO_DATA_MATCHES
††1 @
;
††@ A
}
°° 
}
¢¢ 
}
££ 
catch
§§ 
(
§§ 
DbUpdateException
§§ $
dbUpdateException
§§% 6
)
§§6 7
{
•• 
logger
¶¶ 
.
¶¶ 
LogError
¶¶ 
(
¶¶  
dbUpdateException
¶¶  1
)
¶¶1 2
;
¶¶2 3
resultUpdate
ßß 
=
ßß 
	Constants
ßß (
.
ßß( )
ERROR_OPERATION
ßß) 8
;
ßß8 9
}
®® 
catch
©© 
(
©© 
SqlException
©© 
sqlException
©©  ,
)
©©, -
{
™™ 
logger
´´ 
.
´´ 
LogError
´´ 
(
´´  
sqlException
´´  ,
)
´´, -
;
´´- .
resultUpdate
¨¨ 
=
¨¨ 
	Constants
¨¨ (
.
¨¨( )
ERROR_OPERATION
¨¨) 8
;
¨¨8 9
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 
EntityException
ÆÆ "
entityException
ÆÆ# 2
)
ÆÆ2 3
{
ØØ 
logger
∞∞ 
.
∞∞ 
LogError
∞∞ 
(
∞∞  
entityException
∞∞  /
)
∞∞/ 0
;
∞∞0 1
resultUpdate
±± 
=
±± 
	Constants
±± (
.
±±( )
ERROR_OPERATION
±±) 8
;
±±8 9
}
≤≤ 
return
≥≥ 
resultUpdate
≥≥ 
;
≥≥  
}
¥¥ 	
public
∂∂ 
int
∂∂ <
.UpdateLoserResultToPlayerLeaderBoardToDataBase
∂∂ A
(
∂∂A B
int
∂∂B E
	idAccount
∂∂F O
)
∂∂O P
{
∑∑ 	
LoggerManager
∏∏ 
logger
∏∏  
=
∏∏! "
new
∏∏# &
LoggerManager
∏∏' 4
(
∏∏4 5
this
∏∏5 9
.
∏∏9 :
GetType
∏∏: A
(
∏∏A B
)
∏∏B C
)
∏∏C D
;
∏∏D E
int
ππ 
resultUpdate
ππ 
=
ππ 
	Constants
ππ (
.
ππ( )
ERROR_OPERATION
ππ) 8
;
ππ8 9
try
∫∫ 
{
ªª 
using
ºº 
(
ºº 
var
ºº 
dataBaseContext
ºº *
=
ºº+ ,
new
ºº- 0!
HiveEntityDataModel
ºº1 D
(
ººD E
)
ººE F
)
ººF G
{
ΩΩ 
var
ææ 
leaderBoard
ææ #
=
ææ$ %
dataBaseContext
ææ& 5
.
ææ5 6
Leaderboard
ææ6 A
.
ææA B
Where
ææB G
(
ææG H!
leaderBoardDataBase
ææH [
=>
ææ\ ^!
leaderBoardDataBase
ææ_ r
.
æær s
FK_IdAccount
ææs 
==ææÄ Ç
	idAccountææÉ å
)ææå ç
.ææç é
FirstOrDefaultææé ú
(ææú ù
)ææù û
;ææû ü
if
øø 
(
øø 
leaderBoard
øø #
!=
øø$ &
null
øø' +
)
øø+ ,
{
¿¿ 
leaderBoard
¡¡ #
.
¡¡# $
lostMatches
¡¡$ /
+=
¡¡0 2
$num
¡¡3 4
;
¡¡4 5
leaderBoard
¬¬ #
.
¬¬# $
totalOfMatches
¬¬$ 2
+=
¬¬3 5
$num
¬¬6 7
;
¬¬7 8
dataBaseContext
√√ '
.
√√' (
SaveChanges
√√( 3
(
√√3 4
)
√√4 5
;
√√5 6
resultUpdate
ƒƒ $
=
ƒƒ% &
	Constants
ƒƒ' 0
.
ƒƒ0 1
SUCCES_OPERATION
ƒƒ1 A
;
ƒƒA B
}
≈≈ 
else
∆∆ 
{
«« 
resultUpdate
»» $
=
»»% &
	Constants
»»' 0
.
»»0 1
NO_DATA_MATCHES
»»1 @
;
»»@ A
}
…… 
}
   
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ 
DbUpdateException
ÕÕ $
dbUpdateException
ÕÕ% 6
)
ÕÕ6 7
{
ŒŒ 
logger
œœ 
.
œœ 
LogError
œœ 
(
œœ  
dbUpdateException
œœ  1
)
œœ1 2
;
œœ2 3
resultUpdate
–– 
=
–– 
	Constants
–– (
.
––( )
ERROR_OPERATION
––) 8
;
––8 9
}
—— 
catch
““ 
(
““ 
SqlException
““ 
sqlException
““  ,
)
““, -
{
”” 
logger
‘‘ 
.
‘‘ 
LogError
‘‘ 
(
‘‘  
sqlException
‘‘  ,
)
‘‘, -
;
‘‘- .
resultUpdate
’’ 
=
’’ 
	Constants
’’ (
.
’’( )
ERROR_OPERATION
’’) 8
;
’’8 9
}
÷÷ 
catch
◊◊ 
(
◊◊ 
EntityException
◊◊ "
entityException
◊◊# 2
)
◊◊2 3
{
ÿÿ 
logger
ŸŸ 
.
ŸŸ 
LogError
ŸŸ 
(
ŸŸ  
entityException
ŸŸ  /
)
ŸŸ/ 0
;
ŸŸ0 1
resultUpdate
⁄⁄ 
=
⁄⁄ 
	Constants
⁄⁄ (
.
⁄⁄( )
ERROR_OPERATION
⁄⁄) 8
;
⁄⁄8 9
}
€€ 
return
‹‹ 
resultUpdate
‹‹ 
;
‹‹  
}
›› 	
}
ﬁﬁ 
}ﬂﬂ îå
nC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\DataBaseManager\Operations\FriendshipOperation.cs
	namespace 	
DataBaseManager
 
. 

Operations $
{ 
public 

class 
FriendshipOperation $
{ 
public 
int $
DeleteFriendFromDataBase +
(+ ,
AccessAccount, 9
removingPlayer: H
,H I
AccessAccountJ W
friendToRemoveX f
)f g
{ 	
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
int 
deleteResult 
= 
	Constants (
.( )
ERROR_OPERATION) 8
;8 9
try 
{ 
using 
( 
var 
dataBaseContext *
=+ ,
new- 0
HiveEntityDataModel1 D
(D E
)E F
)F G
{ 
var 
existingFriendship *
=+ ,
dataBaseContext- <
.< =

Friendship= G
.G H
FirstOrDefaultH V
(V W

friendshipW a
=>b d
(e f
(f g

friendshipg q
.q r
FK_idPlayerOne	r Ä
==
Å É
removingPlayer
Ñ í
.
í ì
idAccessAccount
ì ¢
&&
£ •

friendship
¶ ∞
.
∞ ±
idPlayerTwo
± º
==
Ω ø
friendToRemove
¿ Œ
.
Œ œ
idAccessAccount
œ ﬁ
)
ﬁ ﬂ
||
‡ ‚
( 

friendship #
.# $
FK_idPlayerOne$ 2
==3 5
friendToRemove6 D
.D E
idAccessAccountE T
&&U W

friendshipX b
.b c
idPlayerTwoc n
==o q
removingPlayer	r Ä
.
Ä Å
idAccessAccount
Å ê
)
ê ë
)
ë í
&&
ì ï

friendship
ñ †
.
† °
state
° ¶
==
ß ©
Enumerations
™ ∂
.
∂ ∑
FriendshipStates
∑ «
.
« »
Accepted
» –
.
– —
ToString
— Ÿ
(
Ÿ ⁄
)
⁄ €
)
€ ‹
;
‹ ›
if 
( 
existingFriendship *
!=+ -
null. 2
)2 3
{ 
dataBaseContext '
.' (

Friendship( 2
.2 3
Remove3 9
(9 :
existingFriendship: L
)L M
;M N
dataBaseContext '
.' (
SaveChanges( 3
(3 4
)4 5
;5 6
deleteResult $
=% &
	Constants' 0
.0 1
SUCCES_OPERATION1 A
;A B
}   
else!! 
{"" 
deleteResult## $
=##% &
	Constants##' 0
.##0 1
NO_DATA_MATCHES##1 @
;##@ A
}$$ 
}%% 
}&& 
catch'' 
('' 
DbUpdateException'' $
dbException''% 0
)''0 1
{(( 
logger)) 
.)) 
LogError)) 
())  
dbException))  +
)))+ ,
;)), -
deleteResult** 
=** 
	Constants** (
.**( )
ERROR_OPERATION**) 8
;**8 9
}++ 
catch,, 
(,, 
SqlException,, 
sqlException,,  ,
),,, -
{-- 
logger.. 
... 
LogError.. 
(..  
sqlException..  ,
).., -
;..- .
deleteResult// 
=// 
	Constants// (
.//( )
ERROR_OPERATION//) 8
;//8 9
}00 
catch11 
(11 
EntityException11 "
entityException11# 2
)112 3
{22 
logger33 
.33 
LogError33 
(33  
entityException33  /
)33/ 0
;330 1
deleteResult44 
=44 
	Constants44 (
.44( )
ERROR_OPERATION44) 8
;448 9
}55 
return66 
deleteResult66 
;66  
}77 	
public99 
List99 
<99 
UserData99 
>99 %
GetAllFriendsFromDataBase99 7
(997 8
AccessAccount998 E
searcherPlayer99F T
)99T U
{:: 	
LoggerManager;; 
logger;;  
=;;! "
new;;# &
LoggerManager;;' 4
(;;4 5
this;;5 9
.;;9 :
GetType;;: A
(;;A B
);;B C
);;C D
;;;D E
List<< 
<<< 
UserData<< 
><< 
friendsData<< &
=<<' (
new<<) ,
List<<- 1
<<<1 2
UserData<<2 :
><<: ;
(<<; <
)<<< =
;<<= >
List== 
<== 
int== 
>== 
idFoundAccounts== %
===& '
new==( +
List==, 0
<==0 1
int==1 4
>==4 5
(==5 6
)==6 7
;==7 8
UserData>> 
failedSearching>> $
=>>% &
new>>' *
UserData>>+ 3
(>>3 4
)>>4 5
;>>5 6
failedSearching?? 
.?? 
	idProfile?? %
=??& '
	Constants??( 1
.??1 2
ERROR_OPERATION??2 A
;??A B
try@@ 
{AA 
usingBB 
(BB 
varBB 
dataBaseContextBB *
=BB+ ,
newBB- 0
HiveEntityDataModelBB1 D
(BBD E
)BBE F
)BBF G
{CC 
ListDD 
<DD 

FriendshipDD #
>DD# $"
friendShipsListFoundedDD% ;
=DD< =
dataBaseContextDD> M
.DDM N

FriendshipDDN X
.DDX Y
WhereDDY ^
(DD^ _

FriendShipDD_ i
=>DDj l
(DDm n

FriendShipDDn x
.DDx y
FK_idPlayerOne	DDy á
==
DDà ä
searcherPlayer
DDã ô
.
DDô ö
idAccessAccount
DDö ©
||
DD™ ¨

FriendShipEE 
.EE 
idPlayerTwoEE *
==EE+ -
searcherPlayerEE. <
.EE< =
idAccessAccountEE= L
)EEL M
&&EEN P

FriendShipEEQ [
.EE[ \
stateEE\ a
==EEb d
EnumerationsEEe q
.EEq r
FriendshipStates	EEr Ç
.
EEÇ É
Accepted
EEÉ ã
.
EEã å
ToString
EEå î
(
EEî ï
)
EEï ñ
)
EEñ ó
.
EEó ò
ToList
EEò û
(
EEû ü
)
EEü †
;
EE† °
forFF 
(FF 
intFF &
counterFriendshipListIndexFF 7
=FF8 9
$numFF: ;
;FF; <&
counterFriendshipListIndexFF= W
<FFX Y"
friendShipsListFoundedFFZ p
.FFp q
CountFFq v
;FFv w'
counterFriendshipListIndex	FFx í
++
FFí î
)
FFî ï
{GG 

FriendshipHH "
friendshipFoundHH# 2
=HH3 4"
friendShipsListFoundedHH5 K
[HHK L&
counterFriendshipListIndexHHL f
]HHf g
;HHg h
ifII 
(II 
friendshipFoundII +
.II+ ,
idPlayerTwoII, 7
!=II8 :
searcherPlayerII; I
.III J
idAccessAccountIIJ Y
)IIY Z
{JJ 
idFoundAccountsKK +
.KK+ ,
AddKK, /
(KK/ 0
friendshipFoundKK0 ?
.KK? @
idPlayerTwoKK@ K
)KKK L
;KKL M
}LL 
elseMM 
ifMM 
(MM  !
friendshipFoundMM! 0
.MM0 1
FK_idPlayerOneMM1 ?
!=MM@ B
searcherPlayerMMC Q
.MMQ R
idAccessAccountMMR a
)MMa b
{NN 
idFoundAccountsOO +
.OO+ ,
AddOO, /
(OO/ 0
friendshipFoundOO0 ?
.OO? @
FK_idPlayerOneOO@ N
)OON O
;OOO P
}PP 
}QQ 
forRR 
(RR 
intRR %
counterIdAccountListFoundRR 6
=RR7 8
$numRR9 :
;RR: ;%
counterIdAccountListFoundRR< U
<RRV W
idFoundAccountsRRX g
.RRg h
CountRRh m
;RRm n&
counterIdAccountListFound	RRo à
++
RRà ä
)
RRä ã
{SS 
intTT 
	idAccountTT %
=TT& '
idFoundAccountsTT( 7
[TT7 8%
counterIdAccountListFoundTT8 Q
]TTQ R
;TTR S
varUU 
userDataFoundUU )
=UU* +
dataBaseContextUU, ;
.UU; <
ProfileUU< C
.UUC D
WhereUUD I
(UUI J
profileFoundUUJ V
=>UUW Y
profileFoundUUZ f
.UUf g
FK_IdAccountUUg s
==UUt v
	idAccount	UUw Ä
)
UUÄ Å
.
UUÅ Ç
Join
UUÇ Ü
(
UUÜ á
dataBaseContext
UUá ñ
.
UUñ ó
AccessAccount
UUó §
,
UU§ •
userProfileVV '
=>VV( *
userProfileVV+ 6
.VV6 7
FK_IdAccountVV7 C
,VVC D
userAccountVVE P
=>VVQ S
userAccountVVT _
.VV_ `
idAccessAccountVV` o
,VVo p
(VVq r
userProfileVVr }
,VV} ~
userAccount	VV ä
)
VVä ã
=>
VVå é
new
VVè í
UserData
VVì õ
{
VVú ù
idAccessAccountWW  /
=WW0 1
userAccountWW2 =
.WW= >
idAccessAccountWW> M
,WWM N
	idProfileXX  )
=XX* +
userProfileXX, 7
.XX7 8
	idProfileXX8 A
,XXA B
usernameYY  (
=YY) *
userAccountYY+ 6
.YY6 7
usernameYY7 ?
,YY? @
emailZZ  %
=ZZ& '
userAccountZZ( 3
.ZZ3 4
emailZZ4 9
,ZZ9 :
nickname[[  (
=[[) *
userProfile[[+ 6
.[[6 7
nickname[[7 ?
,[[? @
description\\  +
=\\, -
userProfile\\. 9
.\\9 :
description\\: E
,\\E F
	imagePath]]  )
=]]* +
userProfile]], 7
.]]7 8
	imagePath]]8 A
,]]A B

reputation^^  *
=^^+ ,
userAccount^^- 8
.^^8 9

reputation^^9 C
,^^C D
createdDate__  +
=__, -
userProfile__. 9
.__9 :
createdDate__: E
}`` 
)`` 
.`` 
FirstOrDefault`` -
(``- .
)``. /
;``/ 0
friendsDataaa #
.aa# $
Addaa$ '
(aa' (
userDataFoundaa( 5
)aa5 6
;aa6 7
}bb 
}cc 
}dd 
catchee 
(ee 
SqlExceptionee 
sqlExceptionee  ,
)ee, -
{ff 
loggergg 
.gg 
LogErrorgg 
(gg  
sqlExceptiongg  ,
)gg, -
;gg- .
friendsDatahh 
.hh 
Inserthh "
(hh" #
$numhh# $
,hh$ %
failedSearchinghh& 5
)hh5 6
;hh6 7
}ii 
catchjj 
(jj 
EntityExceptionjj "
entityExceptionjj# 2
)jj2 3
{kk 
loggerll 
.ll 
LogErrorll 
(ll  
entityExceptionll  /
)ll/ 0
;ll0 1
friendsDatamm 
.mm 
Insertmm "
(mm" #
$nummm# $
,mm$ %
failedSearchingmm& 5
)mm5 6
;mm6 7
}nn 
returnoo 
friendsDataoo 
;oo 
}pp 	
publicrr 
Profilerr 
GetFriendByUsernamerr *
(rr* +
AccessAccountrr+ 8
accessAccountrr9 F
,rrF G
stringrrH N
usernamerrO W
)rrW X
{ss 	
LoggerManagertt 
loggertt  
=tt! "
newtt# &
LoggerManagertt' 4
(tt4 5
thistt5 9
.tt9 :
GetTypett: A
(ttA B
)ttB C
)ttC D
;ttD E
Profileuu 
foundFrienduu 
=uu  !
newuu" %
Profileuu& -
(uu- .
)uu. /
;uu/ 0
foundFriendvv 
.vv 
	idProfilevv !
=vv" #
	Constantsvv$ -
.vv- .
ERROR_OPERATIONvv. =
;vv= >
tryww 
{xx 
usingyy 
(yy 
varyy 
dataBaseContextyy *
=yy+ ,
newyy- 0
HiveEntityDataModelyy1 D
(yyD E
)yyE F
)yyF G
{zz 

Friendship{{ 
friendshipFound{{ .
={{/ 0
dataBaseContext{{1 @
.{{@ A

Friendship{{A K
.{{K L
Where{{L Q
({{Q R

friendship{{R \
=>{{] _
({{` a

friendship{{a k
.{{k l
FK_idPlayerOne{{l z
=={{{ }
accessAccount	{{~ ã
.
{{ã å
idAccessAccount
{{å õ
|||| 
accessAccount|| $
.||$ %
idAccessAccount||% 4
==||5 7

friendship||8 B
.||B C
idPlayerTwo||C N
)||N O
&&||P R

friendship||S ]
.||] ^
state||^ c
==||d f
Enumerations||g s
.||s t
FriendshipStates	||t Ñ
.
||Ñ Ö
Accepted
||Ö ç
.
||ç é
ToString
||é ñ
(
||ñ ó
)
||ó ò
)
||ò ô
.
||ô ö
Join}} 
(}} 
dataBaseContext}} (
.}}( )
AccessAccount}}) 6
,}}6 7

friendship}}8 B
=>}}C E
(}}F G

friendship}}G Q
.}}Q R
FK_idPlayerOne}}R `
==}}a c
accessAccount}}d q
.}}q r
idAccessAccount	}}r Å
?
}}Ç É

friendship
}}Ñ é
.
}}é è
idPlayerTwo
}}è ö
:
}}õ ú

friendship
}}ù ß
.
}}ß ®
FK_idPlayerOne
}}® ∂
)
}}∂ ∑
,
}}∑ ∏
account~~ 
=>~~ 
account~~ &
.~~& '
idAccessAccount~~' 6
,~~6 7
(~~8 9

friendship~~9 C
,~~C D
account~~E L
)~~L M
=>~~N P
new~~Q T
{~~U V

Friendship~~W a
=~~b c

friendship~~d n
,~~n o
AccessAccount~~p }
=~~~ 
account
~~Ä á
}
~~à â
)
~~â ä
.
~~ä ã
Where
~~ã ê
(
~~ê ë
result
~~ë ó
=>
~~ò ö
result
~~õ °
.
~~° ¢
AccessAccount
~~¢ Ø
.
~~Ø ∞
username
~~∞ ∏
==
~~π ª
username
~~º ƒ
)
~~ƒ ≈
.
~~≈ ∆
Select 
( 
result !
=>" $
result% +
.+ ,

Friendship, 6
)6 7
.7 8
FirstOrDefault8 F
(F G
)G H
;H I
if
ÄÄ 
(
ÄÄ 
friendshipFound
ÄÄ '
!=
ÄÄ( *
null
ÄÄ+ /
)
ÄÄ/ 0
{
ÅÅ 
int
ÇÇ 
idFriendAccount
ÇÇ +
=
ÇÇ, -
(
ÇÇ. /
friendshipFound
ÇÇ/ >
.
ÇÇ> ?
FK_idPlayerOne
ÇÇ? M
==
ÇÇN P
accessAccount
ÇÇQ ^
.
ÇÇ^ _
idAccessAccount
ÇÇ_ n
?
ÇÇo p
friendshipFoundÇÇq Ä
.ÇÇÄ Å
idPlayerTwoÇÇÅ å
:ÇÇç é
friendshipFoundÇÇè û
.ÇÇû ü
FK_idPlayerOneÇÇü ≠
)ÇÇ≠ Æ
;ÇÇÆ Ø
foundFriend
ÉÉ #
=
ÉÉ$ %
dataBaseContext
ÉÉ& 5
.
ÉÉ5 6
Profile
ÉÉ6 =
.
ÉÉ= >
AsNoTracking
ÉÉ> J
(
ÉÉJ K
)
ÉÉK L
.
ÉÉL M
FirstOrDefault
ÉÉM [
(
ÉÉ[ \
account
ÉÉ\ c
=>
ÉÉd f
account
ÉÉg n
.
ÉÉn o
FK_IdAccount
ÉÉo {
==
ÉÉ| ~
idFriendAccountÉÉ é
)ÉÉé è
;ÉÉè ê
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 
foundFriend
áá #
.
áá# $
	idProfile
áá$ -
=
áá. /
	Constants
áá0 9
.
áá9 :
NO_DATA_MATCHES
áá: I
;
ááI J
}
àà 
}
ââ 
}
ää 
catch
ãã 
(
ãã 
SqlException
ãã 
sqlException
ãã  ,
)
ãã, -
{
åå 
logger
çç 
.
çç 
LogError
çç 
(
çç  
sqlException
çç  ,
)
çç, -
;
çç- .
foundFriend
éé 
.
éé 
	idProfile
éé %
=
éé& '
	Constants
éé( 1
.
éé1 2
ERROR_OPERATION
éé2 A
;
ééA B
}
èè 
catch
êê 
(
êê 
EntityException
êê "
entityException
êê# 2
)
êê2 3
{
ëë 
logger
íí 
.
íí 
LogError
íí 
(
íí  
entityException
íí  /
)
íí/ 0
;
íí0 1
foundFriend
ìì 
.
ìì 
	idProfile
ìì %
=
ìì& '
	Constants
ìì( 1
.
ìì1 2
ERROR_OPERATION
ìì2 A
;
ììA B
}
îî 
return
ïï 
foundFriend
ïï 
;
ïï 
}
ññ 	
}
óó 
}òò Æí
qC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\DataBaseManager\Operations\FriendRequestOperation.cs
	namespace 	
DataBaseManager
 
. 

Operations $
{ 
public 

class "
FriendRequestOperation '
{ 
public 
int )
CreateFriendRequestToDataBase 0
(0 1
AccessAccount1 >
senderPlayer? K
,K L
AccessAccountM Z
receiverPlayer[ i
)i j
{ 	
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
int 
creationResult 
=  
	Constants! *
.* +
ERROR_OPERATION+ :
;: ;
try 
{ 
using 
( 
var 
dataBaseContext *
=+ ,
new- 0
HiveEntityDataModel1 D
(D E
)E F
)F G
{ 
var 
newFriendRequest (
=) *
new+ .
DataBaseManager/ >
.> ?

Friendship? I
{ 
FK_idPlayerOne &
=' (
senderPlayer) 5
.5 6
idAccessAccount6 E
,E F
idPlayerTwo #
=$ %
receiverPlayer& 4
.4 5
idAccessAccount5 D
,D E
state 
= 
Enumerations  ,
., -
FriendshipStates- =
.= >
	Requested> G
.G H
ToStringH P
(P Q
)Q R
} 
; 
dataBaseContext #
.# $

Friendship$ .
.. /
Add/ 2
(2 3
newFriendRequest3 C
)C D
;D E
dataBaseContext #
.# $
SaveChanges$ /
(/ 0
)0 1
;1 2
creationResult   "
=  # $
	Constants  % .
.  . /
SUCCES_OPERATION  / ?
;  ? @
}!! 
}"" 
catch## 
(## 
DbUpdateException## $
dbUpdateException##% 6
)##6 7
{$$ 
logger%% 
.%% 
LogError%% 
(%%  
dbUpdateException%%  1
)%%1 2
;%%2 3
creationResult&& 
=&&  
	Constants&&! *
.&&* +
ERROR_OPERATION&&+ :
;&&: ;
}'' 
catch(( 
((( 
SqlException(( 
dbSqlException((  .
)((. /
{)) 
logger** 
.** 
LogError** 
(**  
dbSqlException**  .
)**. /
;**/ 0
creationResult++ 
=++  
	Constants++! *
.++* +
ERROR_OPERATION+++ :
;++: ;
},, 
catch-- 
(-- 
EntityException-- "
entityException--# 2
)--2 3
{.. 
logger// 
.// 
LogError// 
(//  
entityException//  /
)/// 0
;//0 1
creationResult00 
=00  
	Constants00! *
.00* +
ERROR_OPERATION00+ :
;00: ;
}11 
return22 
creationResult22 !
;22! "
}33 	
public55 
List55 
<55 
Profile55 
>55 )
GetFriendRequestsFromDataBase55 :
(55: ;
Profile55; B
searcherPlayer55C Q
)55Q R
{66 	
List77 
<77 
Profile77 
>77 
friendRequestsList77 ,
=77- .
new77/ 2
List773 7
<777 8
Profile778 ?
>77? @
(77@ A
)77A B
;77B C
LoggerManager88 
logger88  
=88! "
new88# &
LoggerManager88' 4
(884 5
this885 9
.889 :
GetType88: A
(88A B
)88B C
)88C D
;88D E
Profile99 !
errorAtDoingSearching99 )
=99* +
new99, /
Profile990 7
(997 8
)998 9
;999 :!
errorAtDoingSearching:: !
.::! "
	idProfile::" +
=::, -
	Constants::. 7
.::7 8
ERROR_OPERATION::8 G
;::G H
try;; 
{<< 
using== 
(== 
var== 
dataBaseContext== *
===+ ,
new==- 0
HiveEntityDataModel==1 D
(==D E
)==E F
)==F G
{>> 
var?? 
friendRequests?? &
=??' (
dataBaseContext??) 8
.??8 9

Friendship??9 C
.@@ 
Where@@ 
(@@ 
user@@ #
=>@@$ &
user@@' +
.@@+ ,
idPlayerTwo@@, 7
==@@8 :
searcherPlayer@@; I
.@@I J
FK_IdAccount@@J V
&&@@W Y
userAA  
.AA  !
stateAA! &
==AA' )
EnumerationsAA* 6
.AA6 7
FriendshipStatesAA7 G
.AAG H
	RequestedAAH Q
.AAQ R
ToStringAAR Z
(AAZ [
)AA[ \
)AA\ ]
.BB 
ToListBB 
(BB  
)BB  !
;BB! "
friendRequestsListCC &
=CC' (
friendRequestsCC) 7
.DD 
JoinDD 
(DD 
dataBaseContextDD -
.DD- .
ProfileDD. 5
.DD5 6
ToListDD6 <
(DD< =
)DD= >
,DD> ?
userEE 
=>EE 
userEE  $
.EE$ %
FK_idPlayerOneEE% 3
,EE3 4
playerFoundEE5 @
=>EEA C
playerFoundEED O
.EEO P
FK_IdAccountEEP \
,EE\ ]
(FF 
userFF 
,FF 
playerFoundFF *
)FF* +
=>FF, .
newFF/ 2
ProfileFF3 :
{GG 
FK_IdAccountHH (
=HH) *
playerFoundHH+ 6
.HH6 7
FK_IdAccountHH7 C
,HHC D
nicknameII $
=II% &
playerFoundII' 2
.II2 3
nicknameII3 ;
,II; <
	imagePathJJ %
=JJ& '
playerFoundJJ( 3
.JJ3 4
	imagePathJJ4 =
,JJ= >
createdDateKK '
=KK( )
playerFoundKK* 5
.KK5 6
createdDateKK6 A
,KKA B
	idProfileLL %
=LL& '
playerFoundLL( 3
.LL3 4
	idProfileLL4 =
}MM 
)MM 
.MM 
ToListMM !
(MM! "
)MM" #
;MM# $
}NN 
}OO 
catchPP 
(PP 
SqlExceptionPP 
sqlExceptionPP  ,
)PP, -
{QQ 
loggerRR 
.RR 
LogErrorRR 
(RR  
sqlExceptionRR  ,
)RR, -
;RR- .
friendRequestsListSS "
.SS" #
InsertSS# )
(SS) *
$numSS* +
,SS+ ,!
errorAtDoingSearchingSS- B
)SSB C
;SSC D
}TT 
catchUU 
(UU 
EntityExceptionUU "
	exceptionUU# ,
)UU, -
{VV 
loggerWW 
.WW 
LogErrorWW 
(WW  
	exceptionWW  )
)WW) *
;WW* +
friendRequestsListXX "
.XX" #
InsertXX# )
(XX) *
$numXX* +
,XX+ ,!
errorAtDoingSearchingXX- B
)XXB C
;XXC D
}YY 
returnZZ 
friendRequestsListZZ %
;ZZ% &
}[[ 	
public]] 
int]] +
AcceptFriendRequestInToDataBase]] 2
(]]2 3
AccessAccount]]3 @
responderPlayer]]A P
,]]P Q
AccessAccount]]R _
answererPlayer]]` n
)]]n o
{^^ 	
LoggerManager__ 
logger__  
=__! "
new__# &
LoggerManager__' 4
(__4 5
this__5 9
.__9 :
GetType__: A
(__A B
)__B C
)__C D
;__D E
int`` 
responseResult`` 
=``  
	Constants``! *
.``* +
ERROR_OPERATION``+ :
;``: ;
tryaa 
{bb 
usingcc 
(cc 
varcc 
dataBaseContextcc *
=cc+ ,
newcc- 0
HiveEntityDataModelcc1 D
(ccD E
)ccE F
)ccF G
{dd 
varee !
existingFriendRequestee -
=ee. /
dataBaseContextee0 ?
.ee? @

Friendshipee@ J
.eeJ K
FirstOrDefaulteeK Y
(eeY Z
friendRequesteeZ g
=>eeh j
friendRequesteek x
.eex y
FK_idPlayerOne	eey á
==
eeà ä
answererPlayer
eeã ô
.
eeô ö
idAccessAccount
eeö ©
&&
ee™ ¨
friendRequest
ee≠ ∫
.
ee∫ ª
idPlayerTwo
eeª ∆
==
ee« …
responderPlayer
ee  Ÿ
.
eeŸ ⁄
idAccessAccount
ee⁄ È
)
eeÈ Í
;
eeÍ Î
ifff 
(ff !
existingFriendRequestff -
!=ff. 0
nullff1 5
)ff5 6
{gg !
existingFriendRequesthh -
.hh- .
statehh. 3
=hh4 5
Enumerationshh6 B
.hhB C
FriendshipStateshhC S
.hhS T
AcceptedhhT \
.hh\ ]
ToStringhh] e
(hhe f
)hhf g
;hhg h
responseResultii &
=ii' (
dataBaseContextii) 8
.ii8 9
SaveChangesii9 D
(iiD E
)iiE F
;iiF G
}jj 
}kk 
}ll 
catchmm 
(mm 
DbUpdateExceptionmm $
dbUpdateExceptionmm% 6
)mm6 7
{nn 
loggeroo 
.oo 
LogErroroo 
(oo  
dbUpdateExceptionoo  1
)oo1 2
;oo2 3
responseResultpp 
=pp  
	Constantspp! *
.pp* +
ERROR_OPERATIONpp+ :
;pp: ;
}qq 
catchrr 
(rr 
SqlExceptionrr 
sqlExceptionrr  ,
)rr, -
{ss 
loggertt 
.tt 
LogErrortt 
(tt  
sqlExceptiontt  ,
)tt, -
;tt- .
responseResultuu 
=uu  
	Constantsuu! *
.uu* +
ERROR_OPERATIONuu+ :
;uu: ;
}vv 
catchww 
(ww 
EntityExceptionww "
	exceptionww# ,
)ww, -
{xx 
loggeryy 
.yy 
LogErroryy 
(yy  
	exceptionyy  )
)yy) *
;yy* +
responseResultzz 
=zz  
	Constantszz! *
.zz* +
ERROR_OPERATIONzz+ :
;zz: ;
}{{ 
return|| 
responseResult|| !
;||! "
}}} 	
public 
int *
DeclineFriendRequestToDataBase 1
(1 2
AccessAccount2 ?
responderPlayer@ O
,O P
AccessAccountQ ^
answererPlayer_ m
)m n
{
ÄÄ 	
LoggerManager
ÅÅ 
logger
ÅÅ  
=
ÅÅ! "
new
ÅÅ# &
LoggerManager
ÅÅ' 4
(
ÅÅ4 5
this
ÅÅ5 9
.
ÅÅ9 :
GetType
ÅÅ: A
(
ÅÅA B
)
ÅÅB C
)
ÅÅC D
;
ÅÅD E
int
ÇÇ 
responseResult
ÇÇ 
=
ÇÇ  
	Constants
ÇÇ! *
.
ÇÇ* +
ERROR_OPERATION
ÇÇ+ :
;
ÇÇ: ;
try
ÉÉ 
{
ÑÑ 
using
ÖÖ 
(
ÖÖ 
var
ÖÖ 
dataBaseContext
ÖÖ *
=
ÖÖ+ ,
new
ÖÖ- 0!
HiveEntityDataModel
ÖÖ1 D
(
ÖÖD E
)
ÖÖE F
)
ÖÖF G
{
ÜÜ 
var
áá #
existingFriendRequest
áá -
=
áá. /
dataBaseContext
áá0 ?
.
áá? @

Friendship
áá@ J
.
ááJ K
FirstOrDefault
ááK Y
(
ááY Z
friendRequest
ááZ g
=>
ááh j
friendRequest
áák x
.
ááx y
FK_idPlayerOneááy á
==ááà ä
answererPlayerááã ô
.ááô ö
idAccessAccountááö ©
&&áá™ ¨
friendRequestáá≠ ∫
.áá∫ ª
idPlayerTwoááª ∆
==áá« …
responderPlayeráá  Ÿ
.ááŸ ⁄
idAccessAccountáá⁄ È
)ááÈ Í
;ááÍ Î
if
àà 
(
àà #
existingFriendRequest
àà -
!=
àà. 0
null
àà1 5
)
àà5 6
{
ââ 
dataBaseContext
ää '
.
ää' (

Friendship
ää( 2
.
ää2 3
Remove
ää3 9
(
ää9 :#
existingFriendRequest
ää: O
)
ääO P
;
ääP Q
responseResult
ãã &
=
ãã' (
dataBaseContext
ãã) 8
.
ãã8 9
SaveChanges
ãã9 D
(
ããD E
)
ããE F
;
ããF G
}
åå 
}
çç 
}
éé 
catch
èè 
(
èè 
DbUpdateException
èè $
dbUpdateException
èè% 6
)
èè6 7
{
êê 
logger
ëë 
.
ëë 
LogError
ëë 
(
ëë  
dbUpdateException
ëë  1
)
ëë1 2
;
ëë2 3
responseResult
íí 
=
íí  
	Constants
íí! *
.
íí* +
ERROR_OPERATION
íí+ :
;
íí: ;
}
ìì 
catch
îî 
(
îî 
SqlException
îî 
sqlException
îî  ,
)
îî, -
{
ïï 
logger
ññ 
.
ññ 
LogError
ññ 
(
ññ  
sqlException
ññ  ,
)
ññ, -
;
ññ- .
responseResult
óó 
=
óó  
	Constants
óó! *
.
óó* +
ERROR_OPERATION
óó+ :
;
óó: ;
}
òò 
catch
ôô 
(
ôô 
EntityException
ôô "
	exception
ôô# ,
)
ôô, -
{
öö 
logger
õõ 
.
õõ 
LogError
õõ 
(
õõ  
	exception
õõ  )
)
õõ) *
;
õõ* +
responseResult
úú 
=
úú  
	Constants
úú! *
.
úú* +
ERROR_OPERATION
úú+ :
;
úú: ;
}
ùù 
return
ûû 
responseResult
ûû !
;
ûû! "
}
üü 	
public
°° 
int
°° 5
'VerifyExistingFriendRequestInToDataBase
°° :
(
°°: ;
AccessAccount
°°; H
	playerOne
°°I R
,
°°R S
AccessAccount
°°T a
	playerTwo
°°b k
)
°°k l
{
¢¢ 	
LoggerManager
££ 
logger
££  
=
££! "
new
££# &
LoggerManager
££' 4
(
££4 5
this
££5 9
.
££9 :
GetType
££: A
(
££A B
)
££B C
)
££C D
;
££D E
int
§§ 
verifyResult
§§ 
=
§§ 
	Constants
§§ (
.
§§( )
ERROR_OPERATION
§§) 8
;
§§8 9
try
•• 
{
¶¶ 
using
ßß 
(
ßß 
var
ßß 
dataBaseContext
ßß *
=
ßß+ ,
new
ßß- 0!
HiveEntityDataModel
ßß1 D
(
ßßD E
)
ßßE F
)
ßßF G
{
®® 
var
©© -
existingFriendRequestRegistered
©© 7
=
©©8 9
dataBaseContext
©©: I
.
©©I J

Friendship
©©J T
.
©©T U
FirstOrDefault
©©U c
(
©©c d
friendRequest
©©d q
=>
©©r t
(
©©u v
friendRequest©©v É
.©©É Ñ
FK_idPlayerOne©©Ñ í
==©©ì ï
	playerOne©©ñ ü
.©©ü †
idAccessAccount©©† Ø
&&©©∞ ≤
friendRequest
™™ !
.
™™! "
idPlayerTwo
™™" -
==
™™. 0
	playerTwo
™™1 :
.
™™: ;
idAccessAccount
™™; J
)
™™J K
||
™™L N
(
™™O P
friendRequest
™™P ]
.
™™] ^
FK_idPlayerOne
™™^ l
==
™™m o
	playerTwo
™™p y
.
™™y z
idAccessAccount™™z â
&&™™ä å
friendRequest™™ç ö
.™™ö õ
idPlayerTwo™™õ ¶
==™™ß ©
	playerOne™™™ ≥
.™™≥ ¥
idAccessAccount™™¥ √
)™™√ ƒ
)™™ƒ ≈
;™™≈ ∆
if
´´ 
(
´´ -
existingFriendRequestRegistered
´´ 7
!=
´´8 :
null
´´; ?
)
´´? @
{
¨¨ 
verifyResult
≠≠ $
=
≠≠% &
	Constants
≠≠' 0
.
≠≠0 1
DATA_MATCHES
≠≠1 =
;
≠≠= >
}
ÆÆ 
else
ØØ 
{
∞∞ 
verifyResult
±± $
=
±±% &
	Constants
±±' 0
.
±±0 1
NO_DATA_MATCHES
±±1 @
;
±±@ A
}
≤≤ 
}
≥≥ 
}
¥¥ 
catch
µµ 
(
µµ 
DbUpdateException
µµ $
dbUpdateException
µµ% 6
)
µµ6 7
{
∂∂ 
logger
∑∑ 
.
∑∑ 
LogError
∑∑ 
(
∑∑  
dbUpdateException
∑∑  1
)
∑∑1 2
;
∑∑2 3
verifyResult
∏∏ 
=
∏∏ 
	Constants
∏∏ (
.
∏∏( )
ERROR_OPERATION
∏∏) 8
;
∏∏8 9
}
ππ 
catch
∫∫ 
(
∫∫ 
SqlException
∫∫ 
sqlException
∫∫  ,
)
∫∫, -
{
ªª 
logger
ºº 
.
ºº 
LogError
ºº 
(
ºº  
sqlException
ºº  ,
)
ºº, -
;
ºº- .
verifyResult
ΩΩ 
=
ΩΩ 
	Constants
ΩΩ (
.
ΩΩ( )
ERROR_OPERATION
ΩΩ) 8
;
ΩΩ8 9
}
ææ 
catch
øø 
(
øø 
EntityException
øø "
entityException
øø# 2
)
øø2 3
{
¿¿ 
logger
¡¡ 
.
¡¡ 
LogError
¡¡ 
(
¡¡  
entityException
¡¡  /
)
¡¡/ 0
;
¡¡0 1
verifyResult
¬¬ 
=
¬¬ 
	Constants
¬¬ (
.
¬¬( )
ERROR_OPERATION
¬¬) 8
;
¬¬8 9
}
√√ 
return
ƒƒ 
verifyResult
ƒƒ 
;
ƒƒ  
}
≈≈ 	
}
∆∆ 
}«« 