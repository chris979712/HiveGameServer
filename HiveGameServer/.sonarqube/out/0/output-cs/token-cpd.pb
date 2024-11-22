�
jC:\Users\cumpl\Downloads\PROYECTO-HIVE\HiveGameServer\HiveGameServer\DataBaseManager\Utilities\UserData.cs
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
}(( �	
nC:\Users\cumpl\Downloads\PROYECTO-HIVE\HiveGameServer\HiveGameServer\DataBaseManager\Utilities\ShaEncripter.cs
	namespace 	
DataBaseManager
 
. 
	Utilities #
{		 
public

 

class

 
Hasher

 
{ 
public 
static 
byte 
[ 
] 
Hash !
(! "
string" (
input) .
). /
{ 	
using 
( 
SHA256 
sha256  
=! "
SHA256# )
.) *
Create* 0
(0 1
)1 2
)2 3
{ 
byte 
[ 
] 

inputBytes !
=" #
Encoding$ ,
., -
UTF8- 1
.1 2
GetBytes2 :
(: ;
input; @
)@ A
;A B
byte 
[ 
] 
	hashBytes  
=! "
sha256# )
.) *
ComputeHash* 5
(5 6

inputBytes6 @
)@ A
;A B
return 
	hashBytes  
;  !
} 
} 	
} 
} �
sC:\Users\cumpl\Downloads\PROYECTO-HIVE\HiveGameServer\HiveGameServer\DataBaseManager\Utilities\PlayerLeaderBoard.cs
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
}%% �
oC:\Users\cumpl\Downloads\PROYECTO-HIVE\HiveGameServer\HiveGameServer\DataBaseManager\Utilities\LoggerManager.cs
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
}44 �
nC:\Users\cumpl\Downloads\PROYECTO-HIVE\HiveGameServer\HiveGameServer\DataBaseManager\Utilities\Enumerations.cs
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
} �	
kC:\Users\cumpl\Downloads\PROYECTO-HIVE\HiveGameServer\HiveGameServer\DataBaseManager\Utilities\Constants.cs
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
} �
oC:\Users\cumpl\Downloads\PROYECTO-HIVE\HiveGameServer\HiveGameServer\DataBaseManager\Properties\AssemblyInfo.cs
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
]!!) *��
pC:\Users\cumpl\Downloads\PROYECTO-HIVE\HiveGameServer\HiveGameServer\DataBaseManager\Operations\UserOperation.cs
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
dataBaseContet	__t �
.
__� �
Profile
__� �
,
__� �
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
�� 	
public
�� 
UserData
�� %
GetUserDataFromDataBase
�� /
(
��/ 0
string
��0 6
username
��7 ?
,
��? @
string
��A G
password
��H P
)
��P Q
{
�� 	
UserData
�� 
dataObtained
�� !
=
��" #
new
��$ '
UserData
��( 0
(
��0 1
)
��1 2
;
��2 3
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
dataBaseContext
�� *
=
��+ ,
new
��- 0!
HiveEntityDataModel
��1 D
(
��D E
)
��E F
)
��F G
{
�� 
var
�� 
userData
��  
=
��! "
dataBaseContext
��# 2
.
��2 3
AccessAccount
��3 @
.
��@ A
Where
��A F
(
��F G
account
��G N
=>
��O Q
account
��R Y
.
��Y Z
username
��Z b
==
��c e
username
��f n
&&
��o q
account
��r y
.
��y z
password��z �
==��� �
password��� �
)��� �
.��� �
Join��� �
(��� �
dataBaseContext
�� '
.
��' (
Profile
��( /
,
��/ 0
account
��1 8
=>
��9 ;
account
��< C
.
��C D
idAccessAccount
��D S
,
��S T
profile
��U \
=>
��] _
profile
��` g
.
��g h
FK_IdAccount
��h t
,
��t u
(
��v w
account
��w ~
,
��~ 
profile��� �
)��� �
=>��� �
new��� �
UserData��� �
{
�� 
idAccessAccount
�� +
=
��, -
account
��. 5
.
��5 6
idAccessAccount
��6 E
,
��E F
username
�� $
=
��% &
account
��' .
.
��. /
username
��/ 7
,
��7 8
email
�� !
=
��" #
account
��$ +
.
��+ ,
email
��, 1
,
��1 2

reputation
�� &
=
��' (
account
��) 0
.
��0 1

reputation
��1 ;
,
��; <
	idProfile
�� %
=
��& '
profile
��( /
.
��/ 0
	idProfile
��0 9
,
��9 :
FK_IdAccount
�� (
=
��) *
profile
��+ 2
.
��2 3
FK_IdAccount
��3 ?
,
��? @
nickname
�� $
=
��% &
profile
��' .
.
��. /
nickname
��/ 7
,
��7 8
	imagePath
�� %
=
��& '
profile
��( /
.
��/ 0
	imagePath
��0 9
,
��9 :
createdDate
�� '
=
��( )
profile
��* 1
.
��1 2
createdDate
��2 =
,
��= >
description
�� '
=
��( )
profile
��* 1
.
��1 2
description
��2 =
,
��= >
}
�� 
)
�� 
.
�� 
FirstOrDefault
�� )
(
��) *
)
��* +
;
��+ ,
if
�� 
(
�� 
userData
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
dataObtained
�� $
=
��% &
userData
��' /
;
��/ 0
}
�� 
else
�� 
{
�� 
dataObtained
�� $
.
��$ %
idAccessAccount
��% 4
=
��5 6
	Constants
��7 @
.
��@ A
NO_DATA_MATCHES
��A P
;
��P Q
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- .
dataObtained
�� 
.
�� 
idAccessAccount
�� ,
=
��- .
	Constants
��/ 8
.
��8 9
ERROR_OPERATION
��9 H
;
��H I
}
�� 
catch
�� 
(
�� 
EntityException
�� !
entityException
��" 1
)
��1 2
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1
dataObtained
�� 
.
�� 
idAccessAccount
�� ,
=
��- .
	Constants
��/ 8
.
��8 9
ERROR_OPERATION
��9 H
;
��H I
}
�� 
return
�� 
dataObtained
�� 
;
��  
}
�� 	
public
�� 
int
�� 2
$UpdatePlusPlayerReputationToDataBase
�� 7
(
��7 8
string
��8 >
username
��? G
,
��G H
int
��I L

reputation
��M W
)
��W X
{
�� 	
int
�� 
updateResult
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
databaseContext
�� )
=
��* +
new
��, /!
HiveEntityDataModel
��0 C
(
��C D
)
��D E
)
��E F
{
�� 
var
�� 
existinAccount
�� &
=
��' (
databaseContext
��) 8
.
��8 9
AccessAccount
��9 F
.
��F G
FirstOrDefault
��G U
(
��U V
user
��V Z
=>
��[ ]
user
��^ b
.
��b c
username
��c k
==
��l n
username
��o w
)
��w x
;
��x y
if
�� 
(
�� 
existinAccount
�� &
!=
��' )
null
��* .
)
��. /
{
�� 
existinAccount
�� &
.
��& '

reputation
��' 1
+=
��2 4

reputation
��5 ?
;
��? @
databaseContext
�� '
.
��' (
SaveChanges
��( 3
(
��3 4
)
��4 5
;
��5 6
updateResult
�� $
=
��% &
	Constants
��' 0
.
��0 1
SUCCES_OPERATION
��1 A
;
��A B
}
�� 
else
�� 
{
�� 
updateResult
�� $
=
��% &
	Constants
��' 0
.
��0 1
NO_DATA_MATCHES
��1 @
;
��@ A
;
��B C
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
updateException
��% 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
updateException
��  /
)
��/ 0
;
��0 1
updateResult
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- .
updateResult
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1
updateResult
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
return
�� 
updateResult
�� 
;
��  
}
�� 	
public
�� 
int
�� 3
%UpdateMinusPlayerReputationToDataBase
�� 8
(
��8 9
string
��9 ?
username
��@ H
,
��H I
int
��J M

reputation
��N X
)
��X Y
{
�� 	
int
�� 
updateResult
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
databaseContext
�� *
=
��+ ,
new
��- 0!
HiveEntityDataModel
��1 D
(
��D E
)
��E F
)
��F G
{
�� 
var
�� 
existinAccount
�� &
=
��' (
databaseContext
��) 8
.
��8 9
AccessAccount
��9 F
.
��F G
FirstOrDefault
��G U
(
��U V
user
��V Z
=>
��[ ]
user
��^ b
.
��b c
username
��c k
==
��l n
username
��o w
)
��w x
;
��x y
if
�� 
(
�� 
existinAccount
�� &
!=
��' )
null
��* .
)
��. /
{
�� 
existinAccount
�� &
.
��& '

reputation
��' 1
-=
��2 4

reputation
��5 ?
;
��? @
databaseContext
�� '
.
��' (
SaveChanges
��( 3
(
��3 4
)
��4 5
;
��5 6
updateResult
�� $
=
��% &
	Constants
��' 0
.
��0 1
SUCCES_OPERATION
��1 A
;
��A B
}
�� 
else
�� 
{
�� 
updateResult
�� $
=
��% &
	Constants
��' 0
.
��0 1
NO_DATA_MATCHES
��1 @
;
��@ A
;
��B C
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
updateException
��% 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
updateException
��  /
)
��/ 0
;
��0 1
updateResult
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- .
updateResult
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1
updateResult
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
return
�� 
updateResult
�� 
;
��  
}
�� 	
public
�� 
int
�� .
 UpdateLoginCredentialsToDataBase
�� 3
(
��3 4
AccessAccount
��4 A
oldAccessAccount
��B R
,
��R S
AccessAccount
��T a"
updatedAccessAccount
��b v
)
��v w
{
�� 	
int
�� 
updatedResult
�� 
=
�� 
	Constants
��  )
.
��) *
ERROR_OPERATION
��* 9
;
��9 :
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
dataBaseContext
�� *
=
��+ ,
new
��- 0!
HiveEntityDataModel
��1 D
(
��D E
)
��E F
)
��F G
{
�� 
try
�� 
{
�� 
var
�� #
existingAccessAccount
�� 1
=
��2 3
dataBaseContext
��4 C
.
��C D
AccessAccount
��D Q
.
��Q R
FirstOrDefault
��R `
(
��` a
accessAccount
��a n
=>
��o q
accessAccount
��r 
.�� �
email��� �
==��� � 
oldAccessAccount��� �
.��� �
email��� �
)��� �
;��� �
if
�� 
(
�� #
existingAccessAccount
�� 1
!=
��2 4
null
��5 9
)
��9 :
{
�� #
existingAccessAccount
�� 1
.
��1 2
email
��2 7
=
��8 9"
updatedAccessAccount
��: N
.
��N O
email
��O T
;
��T U#
existingAccessAccount
�� 1
.
��1 2
password
��2 :
=
��; <"
updatedAccessAccount
��= Q
.
��Q R
password
��R Z
;
��Z [
dataBaseContext
�� +
.
��+ ,
SaveChanges
��, 7
(
��7 8
)
��8 9
;
��9 :
updatedResult
�� )
=
��* +
	Constants
��, 5
.
��5 6
SUCCES_OPERATION
��6 F
;
��F G
}
�� 
else
�� 
{
�� 
updatedResult
�� )
=
��* +
$num
��, -
;
��- .
}
�� 
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� ,
updateException
��- <
)
��< =
{
�� 
logger
�� 
.
�� 
LogError
�� '
(
��' (
updateException
��( 7
)
��7 8
;
��8 9
updatedResult
�� %
=
��& '
	Constants
��( 1
.
��1 2
ERROR_OPERATION
��2 A
;
��A B
}
�� 
catch
�� 
(
�� 
SqlException
�� '
sqlException
��( 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogError
�� '
(
��' (
sqlException
��( 4
)
��4 5
;
��5 6
updatedResult
�� %
=
��& '
	Constants
��( 1
.
��1 2
ERROR_OPERATION
��2 A
;
��A B
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1
}
�� 
return
�� 
updatedResult
��  
;
��  !
}
�� 	
public
�� 
int
�� %
UpdateProfileToDataBase
�� *
(
��* +
Profile
��+ 2
profile
��3 :
,
��: ;
string
��< B
email
��C H
)
��H I
{
�� 	
int
�� 
updateResult
�� 
=
�� 
-
��  
$num
��  !
;
��! "
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
dataBaseContext
�� *
=
��+ ,
new
��- 0!
HiveEntityDataModel
��1 D
(
��D E
)
��E F
)
��F G
{
�� 
using
�� 
(
�� 
var
�� (
dataBaseContextTransaction
�� 9
=
��: ;
dataBaseContext
��< K
.
��K L
Database
��L T
.
��T U
BeginTransaction
��U e
(
��e f
)
��f g
)
��g h
{
�� 
try
�� 
{
�� 
var
�� #
existingAccessAccount
��  5
=
��6 7
dataBaseContext
��8 G
.
��G H
AccessAccount
��H U
.
��U V
FirstOrDefault
��V d
(
��d e
AccessAccount
��e r
=>
��s u
AccessAccount��v �
.��� �
email��� �
==��� �
email��� �
)��� �
;��� �
if
�� 
(
��  #
existingAccessAccount
��  5
!=
��6 8
null
��9 =
)
��= >
{
�� 
var
��  #
existingProfile
��$ 3
=
��4 5
dataBaseContext
��6 E
.
��E F
Profile
��F M
.
��M N
FirstOrDefault
��N \
(
��\ ]
profileDataBase
��] l
=>
��m o
profileDataBase
��p 
.�� �
FK_IdAccount��� �
==��� �%
existingAccessAccount��� �
.��� �
idAccessAccount��� �
)��� �
;��� �
existingProfile
��  /
.
��/ 0
nickname
��0 8
=
��9 :
profile
��; B
.
��B C
nickname
��C K
;
��K L
existingProfile
��  /
.
��/ 0
	imagePath
��0 9
=
��: ;
profile
��< C
.
��C D
	imagePath
��D M
;
��M N
existingProfile
��  /
.
��/ 0
description
��0 ;
=
��< =
profile
��> E
.
��E F
description
��F Q
;
��Q R
dataBaseContext
��  /
.
��/ 0
SaveChanges
��0 ;
(
��; <
)
��< =
;
��= >(
dataBaseContextTransaction
��  :
.
��: ;
Commit
��; A
(
��A B
)
��B C
;
��C D
updateResult
��  ,
=
��- .
	Constants
��/ 8
.
��8 9
SUCCES_OPERATION
��9 I
;
��I J
}
�� 
else
��  
{
�� 
updateResult
��  ,
=
��- .
	Constants
��/ 8
.
��8 9
NO_DATA_MATCHES
��9 H
;
��H I
}
�� 
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� 0
updateException
��1 @
)
��@ A
{
�� 
logger
�� "
.
��" #
LogError
��# +
(
��+ ,
updateException
��, ;
)
��; <
;
��< =(
dataBaseContextTransaction
�� 6
.
��6 7
Rollback
��7 ?
(
��? @
)
��@ A
;
��A B
updateResult
�� (
=
��) *
	Constants
��+ 4
.
��4 5
ERROR_OPERATION
��5 D
;
��D E
}
�� 
catch
�� 
(
�� 
SqlException
�� +
sqlException
��, 8
)
��8 9
{
�� 
logger
�� "
.
��" #
LogError
��# +
(
��+ ,
sqlException
��, 8
)
��8 9
;
��9 :(
dataBaseContextTransaction
�� 6
.
��6 7
Rollback
��7 ?
(
��? @
)
��@ A
;
��A B
updateResult
�� (
=
��) *
	Constants
��+ 4
.
��4 5
ERROR_OPERATION
��5 D
;
��D E
}
�� 
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1
}
�� 
return
�� 
updateResult
�� 
;
��  
}
�� 	
public
�� 
int
�� 5
'VerifyExistingAccessAccountIntoDataBase
�� :
(
��: ;
string
��; A
email
��B G
,
��G H
string
��I O
username
��P X
)
��X Y
{
�� 	
int
��  
verificationResult
�� "
=
��# $
-
��% &
$num
��& '
;
��' (
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
dataBaseContext
�� *
=
��+ ,
new
��- 0!
HiveEntityDataModel
��1 D
(
��D E
)
��E F
)
��F G
{
�� 
var
�� 
existingAccount
�� '
=
��( )
dataBaseContext
��* 9
.
��9 :
AccessAccount
��: G
.
��G H
FirstOrDefault
��H V
(
��V W
accessAccount
��W d
=>
��e g
accessAccount
��h u
.
��u v
email
��v {
==
��| ~
email�� �
&&��� �
accessAccount��� �
.��� �
username��� �
==��� �
username��� �
)��� �
;��� �
if
�� 
(
�� 
existingAccount
�� '
!=
��( *
null
��+ /
)
��/ 0
{
��  
verificationResult
�� *
=
��+ ,
	Constants
��- 6
.
��6 7
DATA_MATCHES
��7 C
;
��C D
}
�� 
else
�� 
{
��  
verificationResult
�� *
=
��+ ,
	Constants
��- 6
.
��6 7
NO_DATA_MATCHES
��7 F
;
��F G
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- . 
verificationResult
�� "
=
��# $
	Constants
��% .
.
��. /
ERROR_OPERATION
��/ >
;
��> ?
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1 
verificationResult
�� "
=
��# $
	Constants
��% .
.
��. /
ERROR_OPERATION
��/ >
;
��> ?
}
�� 
return
��  
verificationResult
�� %
;
��% &
}
�� 	
public
�� 
int
�� +
VerifyCredentialsFromDataBase
�� 0
(
��0 1
string
��1 7
username
��8 @
,
��@ A
string
��B H
email
��I N
)
��N O
{
�� 	
int
��  
verificationResult
�� "
=
��# $
-
��% &
$num
��& '
;
��' (
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
dataBaseContext
�� *
=
��+ ,
new
��- 0!
HiveEntityDataModel
��1 D
(
��D E
)
��E F
)
��F G
{
�� 
var
�� 
existingAccount
�� '
=
��( )
dataBaseContext
��* 9
.
��9 :
AccessAccount
��: G
.
��G H
Where
��H M
(
��M N
accessAccount
��N [
=>
��\ ^
accessAccount
��_ l
.
��l m
email
��m r
==
��s u
email
��v {
)
��{ |
.
��| }
FirstOrDefault��} �
(��� �
)��� �
;��� �
if
�� 
(
�� 
existingAccount
�� '
!=
��( *
null
��+ /
&&
��0 2
existingAccount
��3 B
.
��B C
username
��C K
!=
��L N
username
��O W
)
��W X
{
��  
verificationResult
�� *
=
��+ ,
	Constants
��- 6
.
��6 7
DATA_MATCHES
��7 C
;
��C D
}
�� 
else
�� 
{
��  
verificationResult
�� *
=
��+ ,
	Constants
��- 6
.
��6 7
NO_DATA_MATCHES
��7 F
;
��F G
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- . 
verificationResult
�� "
=
��# $
	Constants
��% .
.
��. /
ERROR_OPERATION
��/ >
;
��> ?
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1 
verificationResult
�� "
=
��# $
	Constants
��% .
.
��. /
ERROR_OPERATION
��/ >
;
��> ?
}
�� 
return
��  
verificationResult
�� %
;
��% &
}
�� 	
public
�� 
int
�� 3
%VerifyPasswordCredentialsFromDataBase
�� 8
(
��8 9
string
��9 ?
username
��@ H
,
��H I
string
��J P
password
��Q Y
)
��Y Z
{
�� 	
int
��  
verificationResult
�� "
=
��# $
-
��% &
$num
��& '
;
��' (
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
dataBaseContext
�� *
=
��+ ,
new
��- 0!
HiveEntityDataModel
��1 D
(
��D E
)
��E F
)
��F G
{
�� 
var
�� 
existingAccount
�� '
=
��( )
dataBaseContext
��* 9
.
��9 :
AccessAccount
��: G
.
��G H
Where
��H M
(
��M N
accessAccount
��N [
=>
��\ ^
accessAccount
��_ l
.
��l m
username
��m u
==
��v x
username��y �
)��� �
.��� �
FirstOrDefault��� �
(��� �
)��� �
;��� �
if
�� 
(
�� 
existingAccount
�� '
!=
��( *
null
��+ /
&&
��0 2
existingAccount
��3 B
.
��B C
password
��C K
==
��L N
password
��O W
)
��W X
{
��  
verificationResult
�� *
=
��+ ,
	Constants
��- 6
.
��6 7
DATA_MATCHES
��7 C
;
��C D
}
�� 
else
�� 
{
��  
verificationResult
�� *
=
��+ ,
	Constants
��- 6
.
��6 7
NO_DATA_MATCHES
��7 F
;
��F G
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- . 
verificationResult
�� "
=
��# $
	Constants
��% .
.
��. /
ERROR_OPERATION
��/ >
;
��> ?
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1 
verificationResult
�� "
=
��# $
	Constants
��% .
.
��. /
ERROR_OPERATION
��/ >
;
��> ?
}
�� 
return
��  
verificationResult
�� %
;
��% &
}
�� 	
}
�� 
}�� �
wC:\Users\cumpl\Downloads\PROYECTO-HIVE\HiveGameServer\HiveGameServer\DataBaseManager\Operations\LeaderBoardOperation.cs
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
new	 �
{
� �
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
FK_IdAccount	!!| �
,
!!� �
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
leaderBoardsListIndex	''{ �
++
''� �
)
''� �
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
AccessAccount	**w �
.
**� �
idAccessAccount
**� �
;
**� �"
playerLeaderBoardFound++ .
.++. /
username++/ 7
=++8 90
$leaderBoardsListObtainedFromDataBase++: ^
[++^ _!
leaderBoardsListIndex++_ t
]++t u
.++u v
AccessAccount	++v �
.
++� �
username
++� �
;
++� �"
playerLeaderBoardFound,, .
.,,. /
lostMatches,,/ :
=,,; <0
$leaderBoardsListObtainedFromDataBase,,= a
[,,a b!
leaderBoardsListIndex,,b w
],,w x
.,,x y
Leaderboard	,,y �
.
,,� �
lostMatches
,,� �
;
,,� �"
playerLeaderBoardFound-- .
.--. /

wonMatches--/ 9
=--: ;0
$leaderBoardsListObtainedFromDataBase--< `
[--` a!
leaderBoardsListIndex--a v
]--v w
.--w x
Leaderboard	--x �
.
--� �

wonMatches
--� �
;
--� �"
playerLeaderBoardFound.. .
.... /
drawMatches../ :
=..; <0
$leaderBoardsListObtainedFromDataBase..= a
[..a b!
leaderBoardsListIndex..b w
]..w x
...x y
Leaderboard	..y �
.
..� �
drawMatches
..� �
;
..� �"
playerLeaderBoardFound// .
.//. /
totalMatches/// ;
=//< =0
$leaderBoardsListObtainedFromDataBase//> b
[//b c!
leaderBoardsListIndex//c x
]//x y
.//y z
Leaderboard	//z �
.
//� �
totalOfMatches
//� �
;
//� �"
playerLeaderBoardFound00 .
.00. /
imageProfile00/ ;
=00< =0
$leaderBoardsListObtainedFromDataBase00> b
[00b c!
leaderBoardsListIndex00c x
]00x y
.00y z
Profile	00z �
.
00� �
	imagePath
00� �
;
00� �$
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
==	II~ �
leaderBoardId
II� �
)
II� �
.
II� �
Join
II� �
(
II� �
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
idAccessAccount	JJs �
,
JJ� �
(
JJ� �
leaderboard
JJ� �
,
JJ� �
account
JJ� �
)
JJ� �
=>
JJ� �
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
oo� �
	idAccount
oo� �
)
oo� �
.
oo� �
FirstOrDefault
oo� �
(
oo� �
)
oo� �
;
oo� �
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
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- .
resultUpdate
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
catch
�� 
(
�� 
EntityException
�� !
entityException
��" 1
)
��1 2
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1
resultUpdate
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
return
�� 
resultUpdate
�� 
;
��  
}
�� 	
public
�� 
int
�� =
/UpdateWinnerResultToPlayerLeaderBoardToDataBase
�� B
(
��B C
int
��C F
	idAccount
��G P
)
��P Q
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
int
�� 
resultUpdate
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
dataBaseContext
�� *
=
��+ ,
new
��- 0!
HiveEntityDataModel
��1 D
(
��D E
)
��E F
)
��F G
{
�� 
var
�� 
leaderBoard
�� #
=
��$ %
dataBaseContext
��& 5
.
��5 6
Leaderboard
��6 A
.
��A B
Where
��B G
(
��G H!
leaderBoardDataBase
��H [
=>
��\ ^!
leaderBoardDataBase
��_ r
.
��r s
FK_IdAccount
��s 
==��� �
	idAccount��� �
)��� �
.��� �
FirstOrDefault��� �
(��� �
)��� �
;��� �
if
�� 
(
�� 
leaderBoard
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
leaderBoard
�� #
.
��# $

wonMatches
��$ .
+=
��/ 1
$num
��2 3
;
��3 4
leaderBoard
�� #
.
��# $
totalOfMatches
��$ 2
+=
��3 5
$num
��6 7
;
��7 8
dataBaseContext
�� '
.
��' (
SaveChanges
��( 3
(
��3 4
)
��4 5
;
��5 6
resultUpdate
�� $
=
��% &
	Constants
��' 0
.
��0 1
SUCCES_OPERATION
��1 A
;
��A B
}
�� 
else
�� 
{
�� 
resultUpdate
�� $
=
��% &
	Constants
��' 0
.
��0 1
NO_DATA_MATCHES
��1 @
;
��@ A
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
dbUpdateException
��% 6
)
��6 7
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
dbUpdateException
��  1
)
��1 2
;
��2 3
resultUpdate
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- .
resultUpdate
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1
resultUpdate
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
return
�� 
resultUpdate
�� 
;
��  
}
�� 	
public
�� 
int
�� <
.UpdateLoserResultToPlayerLeaderBoardToDataBase
�� A
(
��A B
int
��B E
	idAccount
��F O
)
��O P
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
int
�� 
resultUpdate
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
dataBaseContext
�� *
=
��+ ,
new
��- 0!
HiveEntityDataModel
��1 D
(
��D E
)
��E F
)
��F G
{
�� 
var
�� 
leaderBoard
�� #
=
��$ %
dataBaseContext
��& 5
.
��5 6
Leaderboard
��6 A
.
��A B
Where
��B G
(
��G H!
leaderBoardDataBase
��H [
=>
��\ ^!
leaderBoardDataBase
��_ r
.
��r s
FK_IdAccount
��s 
==��� �
	idAccount��� �
)��� �
.��� �
FirstOrDefault��� �
(��� �
)��� �
;��� �
if
�� 
(
�� 
leaderBoard
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
leaderBoard
�� #
.
��# $
lostMatches
��$ /
+=
��0 2
$num
��3 4
;
��4 5
leaderBoard
�� #
.
��# $
totalOfMatches
��$ 2
+=
��3 5
$num
��6 7
;
��7 8
dataBaseContext
�� '
.
��' (
SaveChanges
��( 3
(
��3 4
)
��4 5
;
��5 6
resultUpdate
�� $
=
��% &
	Constants
��' 0
.
��0 1
SUCCES_OPERATION
��1 A
;
��A B
}
�� 
else
�� 
{
�� 
resultUpdate
�� $
=
��% &
	Constants
��' 0
.
��0 1
NO_DATA_MATCHES
��1 @
;
��@ A
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
dbUpdateException
��% 6
)
��6 7
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
dbUpdateException
��  1
)
��1 2
;
��2 3
resultUpdate
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- .
resultUpdate
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1
resultUpdate
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
return
�� 
resultUpdate
�� 
;
��  
}
�� 	
}
�� 
}�� ��
vC:\Users\cumpl\Downloads\PROYECTO-HIVE\HiveGameServer\HiveGameServer\DataBaseManager\Operations\FriendshipOperation.cs
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
FK_idPlayerOne	r �
==
� �
removingPlayer
� �
.
� �
idAccessAccount
� �
&&
� �

friendship
� �
.
� �
idPlayerTwo
� �
==
� �
friendToRemove
� �
.
� �
idAccessAccount
� �
)
� �
||
� �
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
removingPlayer	r �
.
� �
idAccessAccount
� �
)
� �
)
� �
&&
� �

friendship
� �
.
� �
state
� �
==
� �
Enumerations
� �
.
� �
FriendshipStates
� �
.
� �
Accepted
� �
.
� �
ToString
� �
(
� �
)
� �
)
� �
;
� �
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
<<< 

Friendship<< 
><< "
friendShipsListFounded<< 3
=<<4 5
new<<6 9
List<<: >
<<<> ?

Friendship<<? I
><<I J
(<<J K
)<<K L
;<<L M
List== 
<== 
UserData== 
>== 
friendsData== &
===' (
new==) ,
List==- 1
<==1 2
UserData==2 :
>==: ;
(==; <
)==< =
;=== >
List>> 
<>> 
int>> 
>>> 
idFoundAccounts>> %
=>>& '
new>>( +
List>>, 0
<>>0 1
int>>1 4
>>>4 5
(>>5 6
)>>6 7
;>>7 8
UserData?? 
failedSearching?? $
=??% &
new??' *
UserData??+ 3
(??3 4
)??4 5
;??5 6
failedSearching@@ 
.@@ 
	idProfile@@ %
=@@& '
	Constants@@( 1
.@@1 2
ERROR_OPERATION@@2 A
;@@A B
tryAA 
{BB 
usingCC 
(CC 
varCC 
dataBaseContextCC *
=CC+ ,
newCC- 0
HiveEntityDataModelCC1 D
(CCD E
)CCE F
)CCF G
{DD "
friendShipsListFoundedEE *
=EE+ ,
dataBaseContextEE- <
.EE< =

FriendshipEE= G
.EEG H
WhereEEH M
(EEM N

FriendShipEEN X
=>EEY [
(EE\ ]

FriendShipEE] g
.EEg h
FK_idPlayerOneEEh v
==EEw y
searcherPlayer	EEz �
.
EE� �
idAccessAccount
EE� �
||
EE� �

FriendShipFF 
.FF 
idPlayerTwoFF *
==FF+ -
searcherPlayerFF. <
.FF< =
idAccessAccountFF= L
)FFL M
&&FFN P

FriendShipFFQ [
.FF[ \
stateFF\ a
==FFb d
EnumerationsFFe q
.FFq r
FriendshipStates	FFr �
.
FF� �
Accepted
FF� �
.
FF� �
ToString
FF� �
(
FF� �
)
FF� �
)
FF� �
.
FF� �
ToList
FF� �
(
FF� �
)
FF� �
;
FF� �
forGG 
(GG 
intGG &
counterFriendshipListIndexGG 7
=GG8 9
$numGG: ;
;GG; <&
counterFriendshipListIndexGG= W
<GGX Y"
friendShipsListFoundedGGZ p
.GGp q
CountGGq v
;GGv w'
counterFriendshipListIndex	GGx �
++
GG� �
)
GG� �
{HH 

FriendshipII "
friendshipFoundII# 2
=II3 4"
friendShipsListFoundedII5 K
[IIK L&
counterFriendshipListIndexIIL f
]IIf g
;IIg h
ifJJ 
(JJ 
friendshipFoundJJ +
.JJ+ ,
idPlayerTwoJJ, 7
!=JJ8 :
searcherPlayerJJ; I
.JJI J
idAccessAccountJJJ Y
)JJY Z
{KK 
idFoundAccountsLL +
.LL+ ,
AddLL, /
(LL/ 0
friendshipFoundLL0 ?
.LL? @
idPlayerTwoLL@ K
)LLK L
;LLL M
}MM 
elseNN 
ifNN 
(NN  !
friendshipFoundNN! 0
.NN0 1
FK_idPlayerOneNN1 ?
!=NN@ B
searcherPlayerNNC Q
.NNQ R
idAccessAccountNNR a
)NNa b
{OO 
idFoundAccountsPP +
.PP+ ,
AddPP, /
(PP/ 0
friendshipFoundPP0 ?
.PP? @
FK_idPlayerOnePP@ N
)PPN O
;PPO P
}QQ 
}RR 
forSS 
(SS 
intSS %
counterIdAccountListFoundSS 6
=SS7 8
$numSS9 :
;SS: ;%
counterIdAccountListFoundSS< U
<SSV W
idFoundAccountsSSX g
.SSg h
CountSSh m
;SSm n&
counterIdAccountListFound	SSo �
++
SS� �
)
SS� �
{TT 
intUU 
	idAccountUU %
=UU& '
idFoundAccountsUU( 7
[UU7 8%
counterIdAccountListFoundUU8 Q
]UUQ R
;UUR S
varVV 
userDataFoundVV )
=VV* +
dataBaseContextVV, ;
.VV; <
ProfileVV< C
.VVC D
WhereVVD I
(VVI J
profileFoundVVJ V
=>VVW Y
profileFoundVVZ f
.VVf g
FK_IdAccountVVg s
==VVt v
	idAccount	VVw �
)
VV� �
.
VV� �
Join
VV� �
(
VV� �
dataBaseContext
VV� �
.
VV� �
AccessAccount
VV� �
,
VV� �
userProfileWW '
=>WW( *
userProfileWW+ 6
.WW6 7
FK_IdAccountWW7 C
,WWC D
userAccountWWE P
=>WWQ S
userAccountWWT _
.WW_ `
idAccessAccountWW` o
,WWo p
(WWq r
userProfileWWr }
,WW} ~
userAccount	WW �
)
WW� �
=>
WW� �
new
WW� �
UserData
WW� �
{
WW� �
idAccessAccountXX  /
=XX0 1
userAccountXX2 =
.XX= >
idAccessAccountXX> M
,XXM N
	idProfileYY  )
=YY* +
userProfileYY, 7
.YY7 8
	idProfileYY8 A
,YYA B
usernameZZ  (
=ZZ) *
userAccountZZ+ 6
.ZZ6 7
usernameZZ7 ?
,ZZ? @
email[[  %
=[[& '
userAccount[[( 3
.[[3 4
email[[4 9
,[[9 :
nickname\\  (
=\\) *
userProfile\\+ 6
.\\6 7
nickname\\7 ?
,\\? @
description]]  +
=]], -
userProfile]]. 9
.]]9 :
description]]: E
,]]E F
	imagePath^^  )
=^^* +
userProfile^^, 7
.^^7 8
	imagePath^^8 A
,^^A B

reputation__  *
=__+ ,
userAccount__- 8
.__8 9

reputation__9 C
,__C D
createdDate``  +
=``, -
userProfile``. 9
.``9 :
createdDate``: E
}aa 
)aa 
.aa 
FirstOrDefaultaa -
(aa- .
)aa. /
;aa/ 0
friendsDatabb #
.bb# $
Addbb$ '
(bb' (
(bb( )
UserDatabb) 1
)bb1 2
userDataFoundbb2 ?
)bb? @
;bb@ A
}cc 
}dd 
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
;hh- .
friendsDataii 
.ii 
Insertii "
(ii" #
$numii# $
,ii$ %
failedSearchingii& 5
)ii5 6
;ii6 7
}jj 
catchkk 
(kk 
EntityExceptionkk "
entityExceptionkk# 2
)kk2 3
{ll 
loggermm 
.mm 
LogErrormm 
(mm  
entityExceptionmm  /
)mm/ 0
;mm0 1
friendsDatann 
.nn 
Insertnn "
(nn" #
$numnn# $
,nn$ %
failedSearchingnn& 5
)nn5 6
;nn6 7
}oo 
returnpp 
friendsDatapp 
;pp 
}qq 	
publicss 
Profiless 
GetFriendByUsernamess *
(ss* +
AccessAccountss+ 8
accessAccountss9 F
,ssF G
stringssH N
usernamessO W
)ssW X
{tt 	
LoggerManageruu 
loggeruu  
=uu! "
newuu# &
LoggerManageruu' 4
(uu4 5
thisuu5 9
.uu9 :
GetTypeuu: A
(uuA B
)uuB C
)uuC D
;uuD E
Profilevv 
foundFriendvv 
=vv  !
newvv" %
Profilevv& -
(vv- .
)vv. /
;vv/ 0
foundFriendww 
.ww 
	idProfileww !
=ww" #
	Constantsww$ -
.ww- .
ERROR_OPERATIONww. =
;ww= >
tryxx 
{yy 
usingzz 
(zz 
varzz 
dataBaseContextzz *
=zz+ ,
newzz- 0
HiveEntityDataModelzz1 D
(zzD E
)zzE F
)zzF G
{{{ 

Friendship|| 
friendshipFound|| .
=||/ 0
dataBaseContext||1 @
.||@ A

Friendship||A K
.||K L
Where||L Q
(||Q R

friendship||R \
=>||] _
(||` a

friendship||a k
.||k l
FK_idPlayerOne||l z
==||{ }
accessAccount	||~ �
.
||� �
idAccessAccount
||� �
||}} 
accessAccount}} $
.}}$ %
idAccessAccount}}% 4
==}}5 7

friendship}}8 B
.}}B C
idPlayerTwo}}C N
)}}N O
&&}}P R

friendship}}S ]
.}}] ^
state}}^ c
==}}d f
Enumerations}}g s
.}}s t
FriendshipStates	}}t �
.
}}� �
Accepted
}}� �
.
}}� �
ToString
}}� �
(
}}� �
)
}}� �
)
}}� �
.
}}� �
Join~~ 
(~~ 
dataBaseContext~~ (
.~~( )
AccessAccount~~) 6
,~~6 7

friendship~~8 B
=>~~C E
(~~F G

friendship~~G Q
.~~Q R
FK_idPlayerOne~~R `
==~~a c
accessAccount~~d q
.~~q r
idAccessAccount	~~r �
?
~~� �

friendship
~~� �
.
~~� �
idPlayerTwo
~~� �
:
~~� �

friendship
~~� �
.
~~� �
FK_idPlayerOne
~~� �
)
~~� �
,
~~� �
account 
=> 
account &
.& '
idAccessAccount' 6
,6 7
(8 9

friendship9 C
,C D
accountE L
)L M
=>N P
newQ T
{U V

FriendshipW a
=b c

friendshipd n
,n o
AccessAccountp }
=~ 
account
� �
}
� �
)
� �
.
� �
Where
� �
(
� �
result
� �
=>
� �
result
� �
.
� �
AccessAccount
� �
.
� �
username
� �
==
� �
username
� �
)
� �
.
� �
Select
�� 
(
�� 
result
�� !
=>
��" $
result
��% +
.
��+ ,

Friendship
��, 6
)
��6 7
.
��7 8
FirstOrDefault
��8 F
(
��F G
)
��G H
;
��H I
if
�� 
(
�� 
friendshipFound
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 
int
�� 
idFriendAccount
�� +
=
��, -
(
��. /
friendshipFound
��/ >
.
��> ?
FK_idPlayerOne
��? M
==
��N P
accessAccount
��Q ^
.
��^ _
idAccessAccount
��_ n
?
��o p
friendshipFound��q �
.��� �
idPlayerTwo��� �
:��� �
friendshipFound��� �
.��� �
FK_idPlayerOne��� �
)��� �
;��� �
foundFriend
�� #
=
��$ %
dataBaseContext
��& 5
.
��5 6
Profile
��6 =
.
��= >
AsNoTracking
��> J
(
��J K
)
��K L
.
��L M
FirstOrDefault
��M [
(
��[ \
account
��\ c
=>
��d f
account
��g n
.
��n o
FK_IdAccount
��o {
==
��| ~
idFriendAccount�� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
foundFriend
�� #
.
��# $
	idProfile
��$ -
=
��. /
	Constants
��0 9
.
��9 :
NO_DATA_MATCHES
��: I
;
��I J
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- .
foundFriend
�� 
.
�� 
	idProfile
�� %
=
��& '
	Constants
��( 1
.
��1 2
ERROR_OPERATION
��2 A
;
��A B
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1
foundFriend
�� 
.
�� 
	idProfile
�� %
=
��& '
	Constants
��( 1
.
��1 2
ERROR_OPERATION
��2 A
;
��A B
}
�� 
return
�� 
foundFriend
�� 
;
�� 
}
�� 	
}
�� 
}�� �T
qC:\Users\cumpl\Downloads\PROYECTO-HIVE\HiveGameServer\HiveGameServer\DataBaseManager\Operations\MatchOperation.cs
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
33� �

matchFound
33� �
.
33� �
code
33� �
==
33� �
match
33� �
.
33� �
code
33� �
)
33� �
.
33� �
FirstOrDefault
33� �
(
33� �
)
33� �
;
33� �
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
.	WW �
ToString
WW� �
(
WW� �
)
WW� �
&&
WW� �

matchFound
WW� �
.
WW� �
code
WW� �
==
WW� �
match
WW� �
.
WW� �
code
WW� �
)
WW� �
.
WW� �
FirstOrDefault
WW� �
(
WW� �
)
WW� �
;
WW� �
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
FK_IdAccount	uuv �
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
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1 
verificationResult
�� "
=
��# $
	Constants
��% .
.
��. /
ERROR_OPERATION
��/ >
;
��> ?
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- . 
verificationResult
�� "
=
��# $
	Constants
��% .
.
��. /
ERROR_OPERATION
��/ >
;
��> ?
}
�� 
return
��  
verificationResult
�� %
;
��% &
}
�� 	
}
�� 
}�� ��
yC:\Users\cumpl\Downloads\PROYECTO-HIVE\HiveGameServer\HiveGameServer\DataBaseManager\Operations\FriendRequestOperation.cs
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
FK_idPlayerOne	eey �
==
ee� �
answererPlayer
ee� �
.
ee� �
idAccessAccount
ee� �
&&
ee� �
friendRequest
ee� �
.
ee� �
idPlayerTwo
ee� �
==
ee� �
responderPlayer
ee� �
.
ee� �
idAccessAccount
ee� �
)
ee� �
;
ee� �
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
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
int
�� 
responseResult
�� 
=
��  
	Constants
��! *
.
��* +
ERROR_OPERATION
��+ :
;
��: ;
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
dataBaseContext
�� *
=
��+ ,
new
��- 0!
HiveEntityDataModel
��1 D
(
��D E
)
��E F
)
��F G
{
�� 
var
�� #
existingFriendRequest
�� -
=
��. /
dataBaseContext
��0 ?
.
��? @

Friendship
��@ J
.
��J K
FirstOrDefault
��K Y
(
��Y Z
friendRequest
��Z g
=>
��h j
friendRequest
��k x
.
��x y
FK_idPlayerOne��y �
==��� �
answererPlayer��� �
.��� �
idAccessAccount��� �
&&��� �
friendRequest��� �
.��� �
idPlayerTwo��� �
==��� �
responderPlayer��� �
.��� �
idAccessAccount��� �
)��� �
;��� �
if
�� 
(
�� #
existingFriendRequest
�� -
!=
��. 0
null
��1 5
)
��5 6
{
�� 
dataBaseContext
�� '
.
��' (

Friendship
��( 2
.
��2 3
Remove
��3 9
(
��9 :#
existingFriendRequest
��: O
)
��O P
;
��P Q
responseResult
�� &
=
��' (
dataBaseContext
��) 8
.
��8 9
SaveChanges
��9 D
(
��D E
)
��E F
;
��F G
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
dbUpdateException
��% 6
)
��6 7
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
dbUpdateException
��  1
)
��1 2
;
��2 3
responseResult
�� 
=
��  
	Constants
��! *
.
��* +
ERROR_OPERATION
��+ :
;
��: ;
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- .
responseResult
�� 
=
��  
	Constants
��! *
.
��* +
ERROR_OPERATION
��+ :
;
��: ;
}
�� 
catch
�� 
(
�� 
EntityException
�� "
	exception
��# ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
responseResult
�� 
=
��  
	Constants
��! *
.
��* +
ERROR_OPERATION
��+ :
;
��: ;
}
�� 
return
�� 
responseResult
�� !
;
��! "
}
�� 	
public
�� 
int
�� 5
'VerifyExistingFriendRequestInToDataBase
�� :
(
��: ;
AccessAccount
��; H
	playerOne
��I R
,
��R S
AccessAccount
��T a
	playerTwo
��b k
)
��k l
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
int
�� 
verifyResult
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
try
�� 
{
�� 
using
�� 
(
�� 
var
�� 
dataBaseContext
�� *
=
��+ ,
new
��- 0!
HiveEntityDataModel
��1 D
(
��D E
)
��E F
)
��F G
{
�� 
var
�� -
existingFriendRequestRegistered
�� 7
=
��8 9
dataBaseContext
��: I
.
��I J

Friendship
��J T
.
��T U
FirstOrDefault
��U c
(
��c d
friendRequest
��d q
=>
��r t
(
��u v
friendRequest��v �
.��� �
FK_idPlayerOne��� �
==��� �
	playerOne��� �
.��� �
idAccessAccount��� �
&&��� �
friendRequest
�� !
.
��! "
idPlayerTwo
��" -
==
��. 0
	playerTwo
��1 :
.
��: ;
idAccessAccount
��; J
)
��J K
||
��L N
(
��O P
friendRequest
��P ]
.
��] ^
FK_idPlayerOne
��^ l
==
��m o
	playerTwo
��p y
.
��y z
idAccessAccount��z �
&&��� �
friendRequest��� �
.��� �
idPlayerTwo��� �
==��� �
	playerOne��� �
.��� �
idAccessAccount��� �
)��� �
)��� �
;��� �
if
�� 
(
�� -
existingFriendRequestRegistered
�� 7
!=
��8 :
null
��; ?
)
��? @
{
�� 
verifyResult
�� $
=
��% &
	Constants
��' 0
.
��0 1
DATA_MATCHES
��1 =
;
��= >
}
�� 
else
�� 
{
�� 
verifyResult
�� $
=
��% &
	Constants
��' 0
.
��0 1
NO_DATA_MATCHES
��1 @
;
��@ A
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
dbUpdateException
��% 6
)
��6 7
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
dbUpdateException
��  1
)
��1 2
;
��2 3
verifyResult
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
sqlException
��  ,
)
��, -
;
��- .
verifyResult
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
entityException
��  /
)
��/ 0
;
��0 1
verifyResult
�� 
=
�� 
	Constants
�� (
.
��( )
ERROR_OPERATION
��) 8
;
��8 9
}
�� 
return
�� 
verifyResult
�� 
;
��  
}
�� 	
}
�� 
}�� 