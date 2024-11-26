Ή
bC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Utilities\UserData.cs
	namespace 	
HiveGameService
 
. 
UtilitiesService *
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
}0 1
} 
} Ά
mC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Utilities\HostBehaviorManager.cs
	namespace 	
HiveGameService
 
. 
	Utilities #
{		 
public

 

static

 
class

 
HostBehaviorManager

 +
{ 
public 
static 
void 
ChangeModeToSingle -
(- .
). /
{ 	
var 
service 
= 
( 
ServiceHost &
)& '
OperationContext' 7
.7 8
Current8 ?
.? @
Host@ D
;D E
var 
behavior 
= 
service "
." #
Description# .
.. /
	Behaviors/ 8
.8 9
Find9 =
<= >$
ServiceBehaviorAttribute> V
>V W
(W X
)X Y
;Y Z
behavior 
. 
ConcurrencyMode $
=% &
ConcurrencyMode' 6
.6 7
Single7 =
;= >
} 	
public 
static 
void  
ChangeModeToMultiple /
(/ 0
)0 1
{ 	
var 
service 
= 
( 
ServiceHost &
)& '
OperationContext' 7
.7 8
Current8 ?
.? @
Host@ D
;D E
var 
behavior 
= 
service "
." #
Description# .
.. /
	Behaviors/ 8
.8 9
Find9 =
<= >$
ServiceBehaviorAttribute> V
>V W
(W X
)X Y
;Y Z
behavior 
. 
ConcurrencyMode $
=% &
ConcurrencyMode' 6
.6 7
Multiple7 ?
;? @
} 	
public 
static 
void !
ChangeModeToReentrant 0
(0 1
)1 2
{ 	
var 
service 
= 
( 
ServiceHost &
)& '
OperationContext' 7
.7 8
Current8 ?
.? @
Host@ D
;D E
var 
behavior 
= 
service "
." #
Description# .
.. /
	Behaviors/ 8
.8 9
Find9 =
<= >$
ServiceBehaviorAttribute> V
>V W
(W X
)X Y
;Y Z
behavior 
. 
ConcurrencyMode $
=% &
ConcurrencyMode' 6
.6 7
	Reentrant7 @
;@ A
} 	
}   
}!! Γ
gC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Utilities\LoggerManager.cs
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
true1 5
)5 6
]6 7
	namespace

 	
HiveGameService


 
.

 
UtilitiesService

 *
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
}44 Ξ
fC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Utilities\Enumerations.cs
	namespace 	
HiveGameService
 
. 
UtilitiesService *
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
} 	
} 
} 	
cC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Utilities\Constants.cs
	namespace 	
HiveGameService
 
. 
UtilitiesService *
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
} 9
kC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\UserSessionService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
public 

partial 
class 
HiveGameService (
:) *
IUserSessionManager+ >
{ 
private 
static 
readonly 
List  $
<$ %
UserSession% 0
>0 1
usersConnected2 @
=A B
newC F
ListG K
<K L
UserSessionL W
>W X
(X Y
)Y Z
;Z [
public 
int 
ConnectToGame  
(  !
UserSession! ,
user- 1
)1 2
{ 	
int 
resultConnection  
=! "
	Constants# ,
., -
ERROR_OPERATION- <
;< =
if 
( 
! 
usersConnected 
.  
Contains  (
(( )
user) -
)- .
). /
{ 
usersConnected 
. 
Add "
(" #
user# '
)' (
;( ).
"UpdateFriendsListOfConectedFriends 2
(2 3
user3 7
)7 8
;8 9
resultConnection  
=! "
	Constants# ,
., -
SUCCES_OPERATION- =
;= >
} 
return 
resultConnection #
;# $
} 	
public 
int 

Disconnect 
( 
UserSession )
user* .
,. /
bool0 4
	isInMatch5 >
)> ?
{ 	
int 
resultDisconnection #
;# $
if 
( 
usersConnected 
. 
Exists %
(% &
userToDisconnect& 6
=>7 9
userToDisconnect: J
.J K
usernameK S
==T V
userW [
.[ \
username\ d
)d e
)e f
{   
Profile!! 
userProfile!! #
=!!$ %
new!!& )
Profile!!* 1
(!!1 2
)!!2 3
{"" 
username## 
=## 
user## #
.### $
username##$ ,
}$$ 
;$$ 
usersConnected%% 
.%% 
	RemoveAll%% (
(%%( )
userToDisconnect%%) 9
=>%%: <
userToDisconnect%%= M
.%%M N
username%%N V
==%%W Y
user%%Z ^
.%%^ _
username%%_ g
)%%g h
;%%h i.
"UpdateFriendsListOfConectedFriends&& 2
(&&2 3
user&&3 7
)&&7 8
;&&8 9#
DisconectPlayerFromChat'' '
(''' (
userProfile''( 3
,''3 4
user''4 8
.''8 9
	codeMatch''9 B
)''B C
;''C D 
LeavePlayerFromLobby(( $
((($ %
user((% )
,(() *
user((+ /
.((/ 0
	codeMatch((0 9
,((9 :
false((; @
)((@ A
;((A B
LeaveTheGame)) 
()) 
user)) !
,))! "
user))# '
.))' (
	codeMatch))( 1
)))1 2
;))2 3
if** 
(** 
	isInMatch** 
)** 
{++ %
UpdateMinusUserReputation,, -
(,,- .
user,,. 2
.,,2 3
username,,3 ;
,,,; <
$num,,= @
),,@ A
;,,A B0
$UpdateLoserResultToPlayerLeaderBoard-- 8
(--8 9
user--9 =
.--= >
	idAccount--> G
)--G H
;--H I
}.. 
resultDisconnection// #
=//$ %
	Constants//& /
./// 0
SUCCES_OPERATION//0 @
;//@ A
}00 
else11 
{22 
resultDisconnection33 #
=33$ %
	Constants33& /
.33/ 0
NO_DATA_MATCHES330 ?
;33? @
}44 
return55 
resultDisconnection55 &
;55& '
}66 	
public88 
bool88 
VerifyConnectivity88 &
(88& '
UserSession88' 2
user883 7
)887 8
{99 	
bool:: 
resultVerification:: #
=::$ %
false::& +
;::+ ,
if;; 
(;; 
usersConnected;; 
.;; 
Contains;; '
(;;' (
user;;( ,
);;, -
);;- .
{<< 
resultVerification== "
===# $
true==% )
;==) *
}>> 
return?? 
resultVerification?? %
;??% &
}@@ 	
publicBB 
voidBB .
"UpdateFriendsListOfConectedFriendsBB 6
(BB6 7
UserSessionBB7 B
userBBC G
)BBG H
{CC 	
LoggerManagerDD 
loggerDD  
=DD! "
newDD# &
LoggerManagerDD' 4
(DD4 5
thisDD5 9
.DD9 :
GetTypeDD: A
(DDA B
)DDB C
)DDC D
;DDD E
ListEE 
<EE 
UserSessionEE 
>EE 
connnectedFriendsEE /
=EE0 1
ObtainFriendsListEE2 C
(EEC D
userEED H
.EEH I
	idAccountEEI R
)EER S
;EES T
forFF 
(FF 
intFF %
connectedFriendsListIndexFF -
=FF. /
$numFF0 1
;FF1 2%
connectedFriendsListIndexFF3 L
<FFM N
connnectedFriendsFFO `
.FF` a
CountFFa f
;FFf g&
connectedFriendsListIndex	FFh 
++
FF ƒ
)
FFƒ „
{GG 
tryHH 
{II 
ifJJ 
(JJ #
friendsManagerCallbacksJJ /
.JJ/ 0
ContainsKeyJJ0 ;
(JJ; <
connnectedFriendsJJ< M
[JJM N%
connectedFriendsListIndexJJN g
]JJg h
)JJh i
)JJi j
{KK #
friendsManagerCallbacksLL /
[LL/ 0
connnectedFriendsLL0 A
[LLA B%
connectedFriendsListIndexLLB [
]LL[ \
]LL\ ]
.LL] ^"
ObtainConnectedFriendsLL^ t
(LLt u
ObtainFriendsList	LLu †
(
LL† ‡
connnectedFriends
LL‡ 
[
LL ™'
connectedFriendsListIndex
LL™ ²
]
LL² ³
.
LL³ ΄
	idAccount
LL΄ ½
)
LL½ Ύ
)
LLΎ Ώ
;
LLΏ ΐ
}MM 
}NN 
catchNN 
(NN "
CommunicationExceptionNN -"
communicationExceptionNN. D
)NND E
{OO 
loggerPP 
.PP 
LogErrorPP #
(PP# $"
communicationExceptionPP$ :
)PP: ;
;PP; <
}QQ 
catchRR 
(RR 
TimeoutExceptionRR &
timeOutExceptionRR' 7
)RR7 8
{SS 
loggerTT 
.TT 
LogErrorTT #
(TT# $
timeOutExceptionTT$ 4
)TT4 5
;TT5 6
}UU 
}VV 
}WW 	
}XX 
}YY Μp
dC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\UserService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
public 

partial 
class 
HiveGameService (
:) *
IUserManager+ 7
{ 
public 
int 
AddUser 
( 
	Contracts $
.$ %
Profile% ,
profile- 4
)4 5
{ 	
UserOperation 

operations $
=% &
new' *
UserOperation+ 8
(8 9
)9 :
;: ;
DataBaseManager 
. 
AccessAccount )

newAccount* 4
=5 6
new7 :
DataBaseManager; J
.J K
AccessAccountK X
(X Y
)Y Z
{ 
password 
= 
profile "
." #
password# +
,+ ,
username 
= 
profile "
." #
username# +
,+ ,
email 
= 
profile 
.  
email  %
,% &

reputation 
= 
$num  
} 
; 
DataBaseManager 
. 
Profile #

newProfile$ .
=/ 0
new1 4
DataBaseManager5 D
.D E
ProfileE L
(L M
)M N
{O P
nickname 
= 
profile "
." #
nickname# +
,+ ,
createdDate 
= 
profile %
.% &
createdDate& 1
,1 2
	imagePath 
= 
profile #
.# $
	imagePath$ -
,- .
description 
= 
profile %
.% &
description& 1
,1 2
} 
; 
int   
insertionResult   
=    !

operations  " ,
.  , -
addUserToDataBase  - >
(  > ?

newProfile  ? I
,  I J

newAccount  J T
)  T U
;  U V
return!! 
insertionResult!! "
;!!" #
}"" 	
public$$ 
	Contracts$$ 
.$$ 
Profile$$  $
GetUserProfileByUsername$$! 9
($$9 :
string$$: @
username$$A I
)$$I J
{%% 	
UserOperation&& 
userOperation&& '
=&&( )
new&&* -
UserOperation&&. ;
(&&; <
)&&< =
;&&= >
var'' 
userObtained'' 
='' 
userOperation'' ,
.'', -$
GetUserProfileByUsername''- E
(''E F
username''F N
)''N O
;''O P
	Contracts(( 
.(( 
Profile(( 
profileObtained(( -
=((. /
new((0 3
	Contracts((4 =
.((= >
Profile((> E
(((E F
)((F G
{)) 
idAccesAccount** 
=**  
userObtained**! -
.**- .
idAccessAccount**. =
,**= >
username++ 
=++ 
userObtained++ '
.++' (
username++( 0
,++0 1
	idProfile,, 
=,, 
userObtained,, (
.,,( )
	idProfile,,) 2
,,,2 3
	idAccount-- 
=-- 
userObtained-- (
.--( )
FK_IdAccount--) 5
,--5 6
nickname.. 
=.. 
userObtained.. '
...' (
nickname..( 0
,..0 1
	imagePath// 
=// 
userObtained// (
.//( )
	imagePath//) 2
,//2 3

reputation00 
=00 
userObtained00 )
.00) *

reputation00* 4
,004 5
email11 
=11 
userObtained11 $
.11$ %
email11% *
}22 
;22 
return33 
profileObtained33 "
;33" #
}44 	
public66 
	Contracts66 
.66 
Profile66  
GetUserProfile66! /
(66/ 0
string660 6
username667 ?
,66? @
string66A G
password66H P
)66P Q
{77 	
UserOperation88 

operations88 $
=88% &
new88' *
UserOperation88+ 8
(888 9
)889 :
;88: ;
	Contracts99 
.99 
Profile99 
profileObtained99 -
=99. /
new990 3
	Contracts994 =
.99= >
Profile99> E
(99E F
)99F G
;99G H
	Utilities:: 
.:: 
UserData:: 
profileFromDataBase:: 2
=::3 4

operations::5 ?
.::? @#
GetUserDataFromDataBase::@ W
(::W X
username::X `
,::` a
password::b j
)::j k
;::k l
if;; 
(;; 
profileFromDataBase;; "
.;;" #
idAccessAccount;;# 2
!=;;2 4
	Constants;;4 =
.;;= >
ERROR_OPERATION;;> M
&&;;N P
profileFromDataBase;;Q d
.;;d e
idAccessAccount;;e t
!=;;u w
	Constants	;;x 
.
;; ‚
ERROR_OPERATION
;;‚ ‘
)
;;‘ ’
{<< 
profileObtained== 
.==  
idAccesAccount==  .
===/ 0
profileFromDataBase==1 D
.==D E
idAccessAccount==E T
;==T U
profileObtained>> 
.>>  
	imagePath>>  )
=>>* +
profileFromDataBase>>, ?
.>>? @
	imagePath>>@ I
;>>I J
profileObtained?? 
.??  
nickname??  (
=??) *
profileFromDataBase??+ >
.??> ?
nickname??? G
;??G H
profileObtained@@ 
.@@  
username@@  (
=@@) *
profileFromDataBase@@+ >
.@@> ?
username@@? G
;@@G H
profileObtainedAA 
.AA  
emailAA  %
=AA& '
profileFromDataBaseAA( ;
.AA; <
emailAA< A
;AAA B
profileObtainedBB 
.BB  
createdDateBB  +
=BB, -
profileFromDataBaseBB. A
.BBA B
createdDateBBB M
;BBM N
profileObtainedCC 
.CC  

reputationCC  *
=CC+ ,
profileFromDataBaseCC- @
.CC@ A

reputationCCA K
;CCK L
profileObtainedDD 
.DD  
	idAccountDD  )
=DD* +
profileFromDataBaseDD, ?
.DD? @
FK_IdAccountDD@ L
;DDL M
profileObtainedEE 
.EE  
	idProfileEE  )
=EE* +
profileFromDataBaseEE, ?
.EE? @
	idProfileEE@ I
;EEI J
profileObtainedFF 
.FF  
descriptionFF  +
=FF, -
profileFromDataBaseFF. A
.FFA B
descriptionFFB M
;FFM N
}GG 
returnHH 
profileObtainedHH "
;HH" #
}II 	
publicKK 
intKK "
UpdateLoginCredentialsKK )
(KK) *
	ContractsKK* 3
.KK3 4
AccessAccountKK4 A
oldAccessProfileKKB R
,KKR S
	ContractsKKT ]
.KK] ^
AccessAccountKK^ k
newAccessProfileKKl |
)KK| }
{LL 	
UserOperationMM 

operationsMM $
=MM% &
newMM' *
UserOperationMM+ 8
(MM8 9
)MM9 :
;MM: ;
DataBaseManagerNN 
.NN 
AccessAccountNN )#
oldUpdatedAccessAccountNN* A
=NNB C
newNND G
DataBaseManagerNNH W
.NNW X
AccessAccountNNX e
(NNe f
)NNf g
{OO 
idAccessAccountPP 
=PP  !
oldAccessProfilePP" 2
.PP2 3
idAccesAccountPP3 A
,PPA B
passwordQQ 
=QQ 
oldAccessProfileQQ +
.QQ+ ,
passwordQQ, 4
,QQ4 5
emailRR 
=RR 
oldAccessProfileRR (
.RR( )
emailRR) .
}SS 
;SS 
DataBaseManagerTT 
.TT 
AccessAccountTT )
updatedAccesAccountTT* =
=TT> ?
newTT@ C
DataBaseManagerTTD S
.TTS T
AccessAccountTTT a
(TTa b
)TTb c
{UU 
idAccessAccountVV 
=VV  !
newAccessProfileVV" 2
.VV2 3
idAccesAccountVV3 A
,VVA B
passwordWW 
=WW 
newAccessProfileWW +
.WW+ ,
passwordWW, 4
,WW4 5
emailXX 
=XX 
newAccessProfileXX (
.XX( )
emailXX) .
}YY 
;YY 
intZZ 
updatedResultZZ 
=ZZ 

operationsZZ  *
.ZZ* +,
 UpdateLoginCredentialsToDataBaseZZ+ K
(ZZK L#
oldUpdatedAccessAccountZZL c
,ZZc d
updatedAccesAccountZZe x
)ZZx y
;ZZy z
return[[ 
updatedResult[[  
;[[  !
}\\ 	
public^^ 
int^^ 
UpdateProfile^^  
(^^  !
	Contracts^^! *
.^^* +
Profile^^+ 2
profile^^3 :
,^^: ;
string^^< B
email^^C H
)^^H I
{__ 	
UserOperation`` 

operations`` $
=``% &
new``' *
UserOperation``+ 8
(``8 9
)``9 :
;``: ;
DataBaseManageraa 
.aa 
Profileaa #
profileToUpdateaa$ 3
=aa4 5
newaa6 9
DataBaseManageraa: I
.aaI J
ProfileaaJ Q
(aaQ R
)aaR S
{bb 
nicknamecc 
=cc 
profilecc "
.cc" #
nicknamecc# +
,cc+ ,
	imagePathdd 
=dd 
profiledd #
.dd# $
	imagePathdd$ -
,dd- .
descriptionee 
=ee 
profileee %
.ee% &
descriptionee& 1
,ee1 2
}ff 
;ff 
intgg 
updateResultgg 
=gg 

operationsgg )
.gg) *#
UpdateProfileToDataBasegg* A
(ggA B
profileToUpdateggB Q
,ggQ R
emailggS X
)ggX Y
;ggY Z
returnhh 
updateResulthh 
;hh  
}ii 	
publickk 
intkk &
VerifyExistingAccesAccountkk -
(kk- .
stringkk. 4
emailkk5 :
,kk: ;
stringkk< B
usernamekkC K
)kkK L
{ll 	
UserOperationmm 

operationsmm $
=mm% &
newmm' *
UserOperationmm+ 8
(mm8 9
)mm9 :
;mm: ;
intnn 
verificationResultnn "
=nn# $

operationsnn% /
.nn/ 03
'VerifyExistingAccessAccountIntoDataBasenn0 W
(nnW X
emailnnX ]
,nn] ^
usernamenn^ f
)nnf g
;nng h
returnoo 
verificationResultoo %
;oo% &
}pp 	
publicqq 
intqq %
VerifyPasswordCredentialsqq ,
(qq, -
stringqq- 3
emailqq4 9
,qq9 :
stringqq; A
passwordqqB J
)qqJ K
{rr 	
UserOperationss 

operationsss $
=ss% &
newss' *
UserOperationss+ 8
(ss8 9
)ss9 :
;ss: ;
inttt 
verificationResulttt "
=tt# $

operationstt% /
.tt/ 01
%VerifyPasswordCredentialsFromDataBasett0 U
(ttU V
emailttV [
,tt[ \
passwordtt] e
)tte f
;ttf g
returnuu 
verificationResultuu %
;uu% &
}vv 	
publicxx 
intxx 
VerifyCredentialsxx $
(xx$ %
stringxx% +
usernamexx, 4
,xx4 5
stringxx6 <
emailxx= B
)xxB C
{yy 	
UserOperationzz 

operationszz $
=zz% &
newzz' *
UserOperationzz+ 8
(zz8 9
)zz9 :
;zz: ;
int{{ 
verificationResult{{ "
={{# $

operations{{% /
.{{/ 0)
VerifyCredentialsFromDataBase{{0 M
({{M N
username{{N V
,{{V W
email{{X ]
){{] ^
;{{^ _
return|| 
verificationResult|| %
;||% &
}}} 	
public 
int $
UpdatePlusUserReputation +
(+ ,
string, 2
username3 ;
,; <
int= @

reputationA K
)K L
{
€€ 	
UserOperation
 
	operation
 #
=
$ %
new
& )
UserOperation
* 7
(
7 8
)
8 9
;
9 :
int
‚‚  
modificationResult
‚‚ "
=
‚‚# $
	operation
‚‚% .
.
‚‚. /2
$UpdatePlusPlayerReputationToDataBase
‚‚/ S
(
‚‚S T
username
‚‚T \
,
‚‚\ ]

reputation
‚‚^ h
)
‚‚h i
;
‚‚i j
return
ƒƒ  
modificationResult
ƒƒ %
;
ƒƒ% &
}
„„ 	
public
†† 
int
†† '
UpdateMinusUserReputation
†† ,
(
††, -
string
††- 3
username
††4 <
,
††< =
int
††> A

reputation
††B L
)
††L M
{
‡‡ 	
UserOperation
 
	operation
 #
=
# $
new
% (
UserOperation
) 6
(
6 7
)
7 8
;
8 9
int
‰‰  
modificationResult
‰‰ "
=
‰‰# $
	operation
‰‰% .
.
‰‰. /3
%UpdateMinusPlayerReputationToDataBase
‰‰/ T
(
‰‰T U
username
‰‰U ]
,
‰‰] ^

reputation
‰‰^ h
)
‰‰h i
;
‰‰i j
return
  
modificationResult
 %
;
% &
}
‹‹ 	
}
 
} »5
lC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\MatchCreatorService.cs
	namespace

 	
HiveGameService


 
.

 
Services

 "
{ 
public 

partial 
class 
HiveGameService (
:) * 
IMatchCreatorManager+ ?
{ 
public 
int 
CreateMatch 
( 
MatchCreator +
matchCreator, 8
)8 9
{ 	
MatchOperation 
matchOperation )
=* +
new, /
MatchOperation0 >
(> ?
)? @
;@ A
Match 
matchToCreate 
=  !
new" %
Match& +
(+ ,
), -
{ 
FK_IdAccount 
= 
matchCreator +
.+ ,
idCreatorAccount, <
,< =
state 
= 
matchCreator $
.$ %

stateMatch% /
,/ 0
date 
= 
matchCreator #
.# $
	dateMatch$ -
,- .
code 
= 
matchCreator #
.# $
	codeMatch$ -
,- .
} 
; 
int 
insertionResult 
=  !
matchOperation" 0
.0 1#
RegisterMatchToDataBase1 H
(H I
matchToCreateI V
)V W
;W X
return 
insertionResult "
;" #
} 	
public 
int 
UpdateMatchState #
(# $
MatchCreator$ 0
matchCreator1 =
)= >
{ 	
MatchOperation 
matchOperation )
=* +
new, /
MatchOperation0 >
(> ?
)? @
;@ A
Match 
matchToCreate 
=  !
new" %
Match& +
(+ ,
), -
{   
FK_IdAccount!! 
=!! 
matchCreator!! +
.!!+ ,
idCreatorAccount!!, <
,!!< =
state"" 
="" 
matchCreator"" $
.""$ %

stateMatch""% /
,""/ 0
date## 
=## 
matchCreator## #
.### $
	dateMatch##$ -
,##- .
code$$ 
=$$ 
matchCreator$$ #
.$$# $
	codeMatch$$$ -
,$$- .
}%% 
;%% 
int&& 
updateResult&& 
=&& 
matchOperation&& -
.&&- .
ModifyMatchState&&. >
(&&> ?
matchToCreate&&? L
)&&L M
;&&M N
return'' 
updateResult'' 
;''  
}(( 	
public** 
int** %
VerifyExistingActiveMatch** ,
(**, -
MatchCreator**- 9
matchCreator**: F
)**F G
{++ 	
MatchOperation,, 
matchOperation,, )
=,,* +
new,,, /
MatchOperation,,0 >
(,,> ?
),,? @
;,,@ A
Match-- 
matchToCreate-- 
=--  !
new--" %
Match--& +
(--+ ,
)--, -
{.. 
FK_IdAccount// 
=// 
matchCreator// +
.//+ ,
idCreatorAccount//, <
,//< =
state00 
=00 
matchCreator00 $
.00$ %

stateMatch00% /
,00/ 0
date11 
=11 
matchCreator11 #
.11# $
	dateMatch11$ -
,11- .
code22 
=22 
matchCreator22 #
.22# $
	codeMatch22$ -
,22- .
}33 
;33 
int44 
verificationResult44 "
=44# $
matchOperation44% 3
.443 4%
VerifyExistingActiveMatch444 M
(44M N
matchToCreate44N [
)44[ \
;44\ ]
return55 
verificationResult55 %
;55% &
}66 	
public88 
bool88 
VerifyIfLobbyIsFull88 '
(88' (
string88( .
	codeLobby88/ 8
)888 9
{99 	
bool:: 
verificationResult:: #
=::$ %
true::& *
;::* +
List;; 
<;; 
UserSession;; 
>;; 
usersInLobby;; *
=;;+ ,
lobbyPlayers;;- 9
[;;9 :
	codeLobby;;: C
];;C D
;;;D E
if<< 
(<< 
usersInLobby<< 
.<< 
Count<< "
>=<<# %
$num<<& '
)<<' (
{== 
verificationResult>> "
=>># $
true>>% )
;>>) *
}?? 
else@@ 
{AA 
verificationResultBB "
=BB# $
falseBB% *
;BB* +
}CC 
returnDD 
verificationResultDD %
;DD% &
}EE 	
publicGG 
boolGG 
VerifyExistingCodeGG &
(GG& '
stringGG' -
codeGG. 2
)GG2 3
{HH 	
returnII 

lobbyCodesII 
.II 
ContainsKeyII )
(II) *
codeII* .
)II. /
;II/ 0
}JJ 	
publicLL 
stringLL 
GenerateLobbyCodeLL '
(LL' (
stringLL( .
emailLL/ 4
)LL4 5
{MM 	
RandomNN 
randomNN 
=NN 
newNN 
RandomNN  &
(NN& '
)NN' (
;NN( )
intOO 
codeGeneratedOO 
=OO 
randomOO  &
.OO& '
NextOO' +
(OO+ ,
$numOO, 2
,OO2 3
$numOO4 :
)OO: ;
;OO; <
stringPP 
stringCodeGeneratedPP &
=PP' (
codeGeneratedPP) 6
.PP6 7
ToStringPP7 ?
(PP? @
)PP@ A
;PPA B
whileQQ 
(QQ 
VerifyExistingCodeQQ %
(QQ% &
stringCodeGeneratedQQ& 9
)QQ9 :
)QQ: ;
{RR 
codeGeneratedSS 
=SS 
randomSS  &
.SS& '
NextSS' +
(SS+ ,
$numSS, 2
,SS2 3
$numSS4 :
)SS: ;
;SS; <
stringCodeGeneratedTT #
=TT$ %
codeGeneratedTT& 3
.TT3 4
ToStringTT4 <
(TT< =
)TT= >
;TT> ?
}UU 

lobbyCodesVV 
.VV 
AddVV 
(VV 
stringCodeGeneratedVV .
,VV. /
emailVV0 5
)VV5 6
;VV6 7
returnWW 
stringCodeGeneratedWW &
;WW& '
}XX 	
}ZZ 
}\\ Σu
eC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\LobbyService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
public 

partial 
class 
HiveGameService (
:) *
ILobbyManager+ 8
{ 
private !
ILobbyManagerCallback %
lobbyManager& 2
;2 3
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
string3 9
>9 :

lobbyCodes; E
=F G
newH K

DictionaryL V
<V W
stringW ]
,] ^
string_ e
>e f
(f g
)g h
;h i
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
List3 7
<7 8
UserSession8 C
>C D
>D E
lobbyPlayersF R
=S T
newU X

DictionaryY c
<c d
stringd j
,j k
Listl p
<p q
UserSessionq |
>| }
>} ~
(~ 
)	 €
;
€ 
private 
static 
readonly 

Dictionary  *
<* +
UserSession+ 6
,6 7!
ILobbyManagerCallback8 M
>M N
lobbiesCallbackO ^
=_ `
newa d

Dictionarye o
<o p
UserSessionp {
,{ |"
ILobbyManagerCallback	} ’
>
’ “
(
“ ”
)
” •
;
• –
public 
void 
ConnectToLobby "
(" #
UserSession# .
lobbyPlayer/ :
,: ;
string< B
	codeLobbyC L
)L M
{ 	
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
HostBehaviorManager 
.  !
ChangeModeToReentrant  5
(5 6
)6 7
;7 8
try 
{ 
if 
( 
! 
lobbiesCallback $
.$ %
ContainsKey% 0
(0 1
lobbyPlayer1 <
)< =
)= >
{ 
lobbyManager  
=! "
OperationContext# 3
.3 4
Current4 ;
.; <
GetCallbackChannel< N
<N O!
ILobbyManagerCallbackO d
>d e
(e f
)f g
;g h
lobbiesCallback #
.# $
Add$ '
(' (
lobbyPlayer( 3
,3 4
lobbyManager5 A
)A B
;B C
if   
(   
!   
lobbyPlayers   %
.  % &
ContainsKey  & 1
(  1 2
	codeLobby  2 ;
)  ; <
)  < =
{!! 
lobbyPlayers"" $
[""$ %
	codeLobby""% .
]"". /
=""0 1
new""2 5
List""6 :
<"": ;
UserSession""; F
>""F G
(""G H
)""H I
;""I J
}## 
lobbyPlayers$$  
[$$  !
	codeLobby$$! *
]$$* +
.$$+ ,
Add$$, /
($$/ 0
lobbyPlayer$$0 ;
)$$; <
;$$< =
NotifyPlayers%% !
(%%! "
	codeLobby%%" +
)%%+ ,
;%%, -
}&& 
}'' 
catch(( 
((( "
CommunicationException(( ("
communicationException(() ?
)((? @
{)) 
logger** 
.** 
LogError** 
(**  "
communicationException**  6
)**6 7
;**7 8
}++ 
catch++ 
(++ 
TimeoutException++ #
timeoutException++$ 4
)++4 5
{,, 
logger-- 
.-- 
LogError-- 
(--  
timeoutException--  0
)--0 1
;--1 2
}.. 
}// 	
public11 
void11  
LeavePlayerFromLobby11 (
(11( )
UserSession11) 4
lobbyPlayer115 @
,11@ A
string11B H
	codeLobby11I R
,11R S
bool11T X
isKicked11Y a
)11a b
{22 	
LoggerManager33 
logger33 
=33  !
new33" %
LoggerManager33& 3
(333 4
this334 8
.338 9
GetType339 @
(33@ A
)33A B
)33B C
;33C D
HostBehaviorManager44 
.44 !
ChangeModeToReentrant44 4
(444 5
)445 6
;446 7
try55 
{66 
if77 
(77 
lobbiesCallback77 #
.77# $
ContainsKey77$ /
(77/ 0
lobbyPlayer770 ;
)77; <
)77< =
{88 
if99 
(99 
isKicked99  
)99  !
{:: 
lobbiesCallback;; '
[;;' (
lobbyPlayer;;( 3
];;3 4
.;;4 5%
ReceiveKickedNotification;;5 N
(;;N O
);;O P
;;;P Q
lobbyPlayers<< $
[<<$ %
	codeLobby<<% .
]<<. /
.<</ 0
Remove<<0 6
(<<6 7
lobbyPlayer<<7 B
)<<B C
;<<C D
lobbiesCallback== '
.==' (
Remove==( .
(==. /
lobbyPlayer==/ :
)==: ;
;==; <
NotifyPlayers>> %
(>>% &
	codeLobby>>& /
)>>/ 0
;>>0 1
}?? 
else@@ 
{AA 
ifBB 
(BB 
lobbyPlayersBB (
[BB( )
	codeLobbyBB) 2
]BB2 3
.BB3 4
CountBB4 9
==BB: <
$numBB= >
)BB> ?
{CC 
lobbyPlayersDD (
.DD( )
RemoveDD) /
(DD/ 0
	codeLobbyDD0 9
)DD9 :
;DD: ;
lobbiesCallbackEE +
.EE+ ,
RemoveEE, 2
(EE2 3
lobbyPlayerEE3 >
)EE> ?
;EE? @
}FF 
elseGG 
{HH 
lobbyPlayersII (
[II( )
	codeLobbyII) 2
]II2 3
.II3 4
RemoveII4 :
(II: ;
lobbyPlayerII; F
)IIF G
;IIG H
lobbiesCallbackJJ +
.JJ+ ,
RemoveJJ, 2
(JJ2 3
lobbyPlayerJJ3 >
)JJ> ?
;JJ? @
NotifyPlayersKK )
(KK) *
	codeLobbyKK* 3
)KK3 4
;KK4 5
}LL 
}MM 
}NN 
}OO 
catchPP 
(PP "
CommunicationExceptionPP '"
communicationExceptionPP( >
)PP> ?
{QQ 
loggerRR 
.RR 
LogErrorRR 
(RR  "
communicationExceptionRR  6
)RR6 7
;RR7 8
}SS 
catchSS 
(SS 
TimeoutExceptionSS "
timeoutExceptionSS# 3
)SS3 4
{TT 
loggerUU 
.UU 
LogErrorUU 
(UU  
timeoutExceptionUU  0
)UU0 1
;UU1 2
}VV 
}WW 	
privateYY 
voidYY 
NotifyPlayersYY "
(YY" #
stringYY# )
	codeLobbyYY* 3
)YY3 4
{ZZ 	
HostBehaviorManager[[ 
.[[  !
ChangeModeToReentrant[[  5
([[5 6
)[[6 7
;[[7 8
LoggerManager\\ 
logger\\  
=\\! "
new\\# &
LoggerManager\\' 4
(\\4 5
this\\5 9
.\\9 :
GetType\\: A
(\\A B
)\\B C
)\\C D
;\\D E
List]] 
<]] 
UserSession]] 
>]] 
usersInLobby]] *
=]]+ ,
lobbyPlayers]]- 9
[]]9 :
	codeLobby]]: C
]]]C D
;]]D E
List^^ 
<^^ 
UserSession^^ 
>^^ 
hostHasLeft^^ )
=^^* +
new^^, /
List^^0 4
<^^4 5
UserSession^^5 @
>^^@ A
(^^A B
)^^B C
;^^C D
UserSession__ 
hostLeft__  
=__! "
new__# &
UserSession__' 2
(__2 3
)__3 4
{`` 
	idAccountaa 
=aa 
-aa 
$numaa 
}bb 
;bb 
hostHasLeftcc 
.cc 
Addcc 
(cc 
hostLeftcc $
)cc$ %
;cc% &
fordd 
(dd 
intdd 
usersInLobbyIndexdd %
=dd% &
$numdd' (
;dd( )
usersInLobbyIndexdd* ;
<dd< =
usersInLobbydd> J
.ddJ K
CountddK P
;ddP Q
usersInLobbyIndexddR c
++ddc e
)dde f
{ee 
tryff 
{gg 
UserSessionhh 
userToNotifyhh  ,
=hh- .
usersInLobbyhh/ ;
[hh; <
usersInLobbyIndexhh< M
]hhM N
;hhN O
ifii 
(ii 
lobbiesCallbackii '
.ii' (
ContainsKeyii( 3
(ii3 4
userToNotifyii4 @
)ii@ A
)iiA B
{jj 
	GameMatchkk !
	gameMatchkk" +
=kk, -
newkk. 1
	GameMatchkk2 ;
(kk; <
)kk< =
{kk= >
	idAccountll %
=ll& '
userToNotifyll( 4
.ll4 5
	idAccountll5 >
,ll> ?
codemm  
=mm! "
	codeLobbymm# ,
}nn 
;nn 
intoo 
verifyIfHostleftoo ,
=oo- .#
VerifyCreatorOfTheMatchoo/ F
(ooF G
	gameMatchooG P
)ooP Q
;ooQ R
ifpp 
(pp 
verifyIfHostleftpp ,
==pp, .
	Constantspp. 7
.pp7 8
NO_DATA_MATCHESpp8 G
&&ppH J
lobbyPlayersppK W
[ppW X
	codeLobbyppX a
]ppa b
.ppb c
Countppc h
==pph j
$numppj k
)ppk l
{qq 
lobbiesCallbackrr +
[rr+ ,
userToNotifyrr, 8
]rr8 9
.rr9 :!
ReceivePlayersToLobbyrr: O
(rrO P
hostHasLeftrrP [
)rr[ \
;rr\ ]
}ss 
elsett 
{uu 
lobbiesCallbackvv +
[vv+ ,
userToNotifyvv, 8
]vv8 9
.vv9 :!
ReceivePlayersToLobbyvv: O
(vvO P
usersInLobbyvvP \
)vv\ ]
;vv] ^
}ww 
}xx 
}yy 
catchzz 
(zz "
CommunicationExceptionzz -"
communicationExceptionzz. D
)zzD E
{{{ 
logger|| 
.|| 
LogError|| #
(||# $"
communicationException||$ :
)||: ;
;||; <
}}} 
catch~~ 
(~~ 
TimeoutException~~ '
timeoutException~~( 8
)~~8 9
{ 
logger
€€ 
.
€€ 
LogError
€€ #
(
€€# $
timeoutException
€€$ 4
)
€€4 5
;
€€5 6
}
 
}
‚‚ 
}
ƒƒ 	
public
…… 
int
…… %
VerifyCreatorOfTheMatch
…… *
(
……* +
	GameMatch
……+ 4
match
……5 :
)
……: ;
{
†† 	!
HostBehaviorManager
‡‡ 
.
‡‡   
ChangeModeToSingle
‡‡  2
(
‡‡2 3
)
‡‡3 4
;
‡‡4 5
MatchOperation
 
matchOperation
 )
=
* +
new
, /
MatchOperation
0 >
(
> ?
)
? @
;
@ A
Match
‰‰ 
matchToFind
‰‰ 
=
‰‰ 
new
‰‰  #
Match
‰‰$ )
(
‰‰) *
)
‰‰* +
{
 
FK_IdAccount
‹‹ 
=
‹‹ 
match
‹‹ $
.
‹‹$ %
	idAccount
‹‹% .
,
‹‹. /
code
 
=
 
match
 
.
 
code
 !
,
! "
}
 
;
 
int
  
verificationResult
 "
=
# $
matchOperation
% 3
.
3 4 
VerifyMatchCreator
4 F
(
F G
matchToFind
G R
)
R S
;
S T
return
  
verificationResult
 %
;
% &
}
 	
public
’’ 
void
’’ 

StartMatch
’’ 
(
’’ 
string
’’ %
code
’’& *
)
’’* +
{
““ 	!
HostBehaviorManager
”” 
.
””  #
ChangeModeToReentrant
””  5
(
””5 6
)
””6 7
;
””7 8
LoggerManager
•• 
logger
••  
=
••! "
new
••# &
LoggerManager
••' 4
(
••4 5
this
••5 9
.
••9 :
GetType
••: A
(
••A B
)
••B C
)
••C D
;
••D E
if
–– 
(
–– 
lobbyPlayers
–– 
.
–– 
ContainsKey
–– (
(
––( )
code
––) -
)
––- .
)
––. /
{
—— 
List
 
<
 
UserSession
  
>
  !
userInLobby
" -
=
. /
lobbyPlayers
0 <
[
< =
code
= A
]
A B
;
B C
try
™™ 
{
 
UserSession
›› 
userToNotify
››  ,
=
››- .
userInLobby
››/ :
[
››: ;
$num
››; <
]
››< =
;
››= >
if
 
(
 
lobbiesCallback
 '
.
' (
ContainsKey
( 3
(
3 4
userToNotify
4 @
)
@ A
)
A B
{
 
lobbiesCallback
 '
[
' (
userToNotify
( 4
]
4 5
.
5 6+
ReceiveStartMatchNotification
6 S
(
S T
)
T U
;
U V
}
 
}
   
catch
΅΅ 
(
΅΅ $
CommunicationException
΅΅ -$
communicationException
΅΅. D
)
΅΅D E
{
ΆΆ 
logger
££ 
.
££ 
LogError
££ #
(
££# $$
communicationException
££$ :
)
££: ;
;
££; <
}
¤¤ 
catch
¥¥ 
(
¥¥ 
TimeoutException
¥¥ '
timeoutException
¥¥( 8
)
¥¥8 9
{
¦¦ 
logger
§§ 
.
§§ 
LogError
§§ #
(
§§# $
timeoutException
§§$ 4
)
§§4 5
;
§§5 6
}
¨¨ 
}
©© 
}
ªª 	
}
«« 
}¬¬ ¥=
kC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\LeaderBoardService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
public 

partial 
class 
HiveGameService (
:) *
ILeaderBoardManager+ >
{ 
public 
List 
< 
LeaderBoardPlayer %
>% &%
GetAllPlayersLeaderboards' @
(@ A
)A B
{ 	
List 
< 
LeaderBoardPlayer "
>" #&
playersLeaderBoardObtained$ >
=? @
newA D
ListE I
<I J
LeaderBoardPlayerJ [
>[ \
(\ ]
)] ^
;^ _ 
LeaderBoardOperation   
leaderBoardOperation! 5
=6 7
new8 ; 
LeaderBoardOperation< P
(P Q
)Q R
;R S
var )
leaderBoardPlayerObtainedList -
=. / 
leaderBoardOperation0 D
.D E1
%GetAllPlayersLeaderboardsFromDataBaseE j
(j k
)k l
;l m
for 
( 
int .
"leaderBoardPlayerObtainedListIndex 6
=7 8
$num9 :
;: ;.
"leaderBoardPlayerObtainedListIndex< ^
<_ `)
leaderBoardPlayerObtainedLista ~
.~ 
Count	 „
;
„ …0
"leaderBoardPlayerObtainedListIndex
† ¨
++
¨ ª
)
ª «
{ 
LeaderBoardPlayer !%
playerLeaderBoardObtained" ;
=< =
new> A
LeaderBoardPlayerB S
(S T
)T U
;U V%
playerLeaderBoardObtained )
.) *
username* 2
=3 4)
leaderBoardPlayerObtainedList5 R
[R S.
"leaderBoardPlayerObtainedListIndexS u
]u v
.v w
usernamew 
;	 €%
playerLeaderBoardObtained )
.) *
	idAccount* 3
=4 5)
leaderBoardPlayerObtainedList6 S
[S T.
"leaderBoardPlayerObtainedListIndexT v
]v w
.w x
	idAccount	x 
;
 ‚%
playerLeaderBoardObtained )
.) *
totalWonMatches* 9
=: ;)
leaderBoardPlayerObtainedList< Y
[Y Z.
"leaderBoardPlayerObtainedListIndexZ |
]| }
.} ~

wonMatches	~ 
;
 ‰%
playerLeaderBoardObtained )
.) *
totalLostMatches* :
=; <)
leaderBoardPlayerObtainedList= Z
[Z [.
"leaderBoardPlayerObtainedListIndex[ }
]} ~
.~ 
lostMatches	 
;
 ‹%
playerLeaderBoardObtained )
.) *
totalDrawMatches* :
=; <)
leaderBoardPlayerObtainedList= Z
[Z [.
"leaderBoardPlayerObtainedListIndex[ }
]} ~
.~ 
drawMatches	 
;
 ‹%
playerLeaderBoardObtained )
.) *
totalMatches* 6
=7 8)
leaderBoardPlayerObtainedList9 V
[V W.
"leaderBoardPlayerObtainedListIndexW y
]y z
.z {
totalMatches	{ ‡
;
‡ %
playerLeaderBoardObtained )
.) *
imageProfile* 6
=7 8)
leaderBoardPlayerObtainedList9 V
[V W.
"leaderBoardPlayerObtainedListIndexW y
]y z
.z {
imageProfile	{ ‡
;
‡ &
playersLeaderBoardObtained *
.* +
Add+ .
(. /%
playerLeaderBoardObtained/ H
)H I
;I J
} 
return   &
playersLeaderBoardObtained   -
;  - .
}!! 	
public## 
LeaderBoardPlayer##  "
GetPersonalLeaderBoard##! 7
(##7 8
int##8 ;
	idAccount##< E
)##E F
{$$ 	
LeaderBoardPlayer%% 
leaderBoardPlayer%% /
=%%0 1
new%%2 5
LeaderBoardPlayer%%6 G
(%%G H
)%%H I
;%%I J 
LeaderBoardOperation&&   
leaderBoardOperation&&! 5
=&&6 7
new&&8 ; 
LeaderBoardOperation&&< P
(&&P Q
)&&Q R
;&&R S
var'' 
playerLeaderBoard'' !
=''" # 
leaderBoardOperation''$ 8
.''8 9"
GetPersonalLeaderBoard''9 O
(''O P
	idAccount''P Y
)''Y Z
;''Z [
leaderBoardPlayer(( 
.(( 
	idAccount(( '
=((( )
playerLeaderBoard((* ;
.((; <
	idAccount((< E
;((E F
leaderBoardPlayer)) 
.)) 
username)) &
=))' (
playerLeaderBoard))) :
.)): ;
username)); C
;))C D
leaderBoardPlayer** 
.** 
totalMatches** *
=**+ ,
playerLeaderBoard**- >
.**> ?
totalMatches**? K
;**K L
leaderBoardPlayer++ 
.++ 
totalLostMatches++ .
=++/ 0
playerLeaderBoard++1 B
.++B C
lostMatches++C N
;++N O
leaderBoardPlayer,, 
.,, 
totalWonMatches,, -
=,,. /
playerLeaderBoard,,0 A
.,,A B

wonMatches,,B L
;,,L M
leaderBoardPlayer-- 
.-- 
totalDrawMatches-- .
=--/ 0
playerLeaderBoard--1 B
.--B C
drawMatches--C N
;--N O
return.. 
leaderBoardPlayer.. $
;..$ %
}// 	
public11 
int11 /
#UpdateDrawResultToPlayerLeaderBoard11 6
(116 7
int117 :
	idAccount11; D
)11D E
{22 	 
LeaderBoardOperation33   
leaderBoardOperation33! 5
=336 7
new338 ; 
LeaderBoardOperation33< P
(33P Q
)33Q R
;33R S
int44 
updateResult44 
=44  
leaderBoardOperation44 3
.443 49
-UpdateDrawResultToPlayerLeaderBoardToDataBase444 a
(44a b
	idAccount44b k
)44k l
;44l m
return55 
updateResult55 
;55  
}66 	
public99 
int99 0
$UpdateLoserResultToPlayerLeaderBoard99 7
(997 8
int998 ;
	idAccount99< E
)99E F
{:: 	 
LeaderBoardOperation;;   
leaderBoardOperation;;! 5
=;;6 7
new;;8 ; 
LeaderBoardOperation;;< P
(;;P Q
);;Q R
;;;R S
int<< 
updateResult<< 
=<<  
leaderBoardOperation<< 3
.<<3 4:
.UpdateLoserResultToPlayerLeaderBoardToDataBase<<4 b
(<<b c
	idAccount<<c l
)<<l m
;<<m n
return== 
updateResult== 
;==  
}>> 	
public@@ 
int@@ 1
%UpdateWinnerResultToPlayerLeaderBoard@@ 8
(@@8 9
int@@9 <
	idAccounr@@= F
)@@F G
{AA 	 
LeaderBoardOperationBB   
leaderBoardOperationBB! 5
=BB6 7
newBB8 ; 
LeaderBoardOperationBB< P
(BBP Q
)BBQ R
;BBR S
intCC 
updateResultCC 
=CC  
leaderBoardOperationCC 3
.CC3 4;
/UpdateWinnerResultToPlayerLeaderBoardToDataBaseCC4 c
(CCc d
	idAccounrCCd m
)CCm n
;CCn o
returnDD 
updateResultDD 
;DD  
}EE 	
}GG 
}HH O
mC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\FriendRequestService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
public 

partial 
class 
HiveGameService (
:) *!
IFriendRequestManager+ @
{ 
public 
int 
CreateFriendRequest &
(& '
	Contracts' 0
.0 1
Profile1 8
	playerOne9 B
,B C
	ContractsD M
.M N
ProfileN U
	playerTwoV _
)_ `
{ 	"
FriendRequestOperation "!
friendRequestObtained# 8
=9 :
new; >"
FriendRequestOperation? U
(U V
)V W
;W X
DataBaseManager 
. 
AccessAccount )
senderPlayer* 6
=7 8
new9 <
DataBaseManager= L
.L M
AccessAccountM Z
(Z [
)[ \
{ 
idAccessAccount 
=  !
	playerOne" +
.+ ,
idAccesAccount, :
} 
; 
DataBaseManager 
. 
AccessAccount )
receiverPlayer* 8
=9 :
new; >
DataBaseManager? N
.N O
AccessAccountO \
(\ ]
)] ^
{ 
idAccessAccount 
=  !
	playerTwo" +
.+ ,
idAccesAccount, :
} 
; 
int 
creationResult 
=  !
friendRequestObtained! 6
.6 7)
CreateFriendRequestToDataBase7 T
(T U
senderPlayerU a
,a b
receiverPlayerc q
)q r
;r s
return 
creationResult !
;! "
} 	
public   
List   
<   
	Contracts   
.   
Profile   %
>  % &
GetFriendRequests  ' 8
(  8 9
	Contracts  9 B
.  B C
Profile  C J
player  K Q
)  Q R
{!! 	"
FriendRequestOperation"" ""
friendRequestOperation""# 9
="": ;
new""< ?"
FriendRequestOperation""@ V
(""V W
)""W X
;""X Y
DataBaseManager## 
.## 
Profile## #
searcherPlayer##$ 2
=##3 4
new##5 8
DataBaseManager##9 H
.##H I
Profile##I P
(##P Q
)##Q R
{$$ 
FK_IdAccount%% 
=%% 
player%% %
.%%% &
idAccesAccount%%& 4
}&& 
;&& 
List'' 
<'' 
DataBaseManager''  
.''  !
Profile''! (
>''( )"
friendRequestsObtained''* @
=''A B"
friendRequestOperation''C Y
.''Y Z)
GetFriendRequestsFromDataBase''Z w
(''w x
searcherPlayer	''x †
)
''† ‡
;
''‡ 
List(( 
<(( 
	Contracts(( 
.(( 
Profile(( "
>((" #
friendRequestList(($ 5
=((6 7
new((8 ;
List((< @
<((@ A
	Contracts((A J
.((J K
Profile((K R
>((R S
(((S T
)((T U
;((U V
for)) 
()) 
int)) '
friendRequestsObtainedIndex)) 0
=))1 2
$num))3 4
;))4 5"
friendRequestsObtained))5 K
.))K L
Count))L Q
>))R S'
friendRequestsObtainedIndex))T o
;))o p(
friendRequestsObtainedIndex	))p ‹
++
))‹ 
)
)) 
{** 
	Contracts++ 
.++ 
Profile++ !!
friendRequestObtained++" 7
=++8 9
new++: =
	Contracts++> G
.++G H
Profile++H O
(++O P
)++P Q
{,, 
nickname-- 
=-- "
friendRequestsObtained-- 5
[--5 6'
friendRequestsObtainedIndex--6 Q
]--Q R
.--R S
nickname--S [
,--[ \
createdDate.. 
=..  !"
friendRequestsObtained.." 8
[..8 9'
friendRequestsObtainedIndex..9 T
]..T U
...U V
createdDate..V a
,..a b
	imagePath// 
=// "
friendRequestsObtained//  6
[//6 7'
friendRequestsObtainedIndex//7 R
]//R S
.//S T
	imagePath//T ]
,//] ^
	idProfile00 
=00 "
friendRequestsObtained00  6
[006 7'
friendRequestsObtainedIndex007 R
]00R S
.00S T
	idProfile00T ]
,00] ^
idAccesAccount11 "
=11# $"
friendRequestsObtained11% ;
[11; <'
friendRequestsObtainedIndex11< W
]11W X
.11X Y
FK_IdAccount11Y e
}22 
;22 
friendRequestList33 !
.33! "
Add33" %
(33% &!
friendRequestObtained33& ;
)33; <
;33< =
}44 
return55 
friendRequestList55 $
;55$ %
}66 	
public88 
int88 
AcceptFriendRequest88 &
(88& '
	Contracts88' 0
.880 1
Profile881 8
	playerOne889 B
,88B C
	Contracts88D M
.88M N
Profile88N U
	playerTwo88V _
)88_ `
{99 	"
FriendRequestOperation:: ""
friendRequestOperation::# 9
=::: ;
new::< ?"
FriendRequestOperation::@ V
(::V W
)::W X
;::X Y
DataBaseManager;; 
.;; 
AccessAccount;; )
askerPlayer;;* 5
=;;6 7
new;;8 ;
DataBaseManager;;< K
.;;K L
AccessAccount;;L Y
(;;Y Z
);;Z [
{<< 
idAccessAccount== 
===  !
	playerOne==" +
.==+ ,
idAccesAccount==, :
}>> 
;>> 
DataBaseManager?? 
.?? 
AccessAccount?? )
answeredPlayer??* 8
=??9 :
new??; >
DataBaseManager??? N
.??N O
AccessAccount??O \
(??\ ]
)??] ^
{@@ 
idAccessAccountAA 
=AA  !
	playerTwoAA" +
.AA+ ,
idAccesAccountAA, :
}BB 
;BB 
intCC 
responseResultCC 
=CC  "
friendRequestOperationCC! 7
.CC7 8+
AcceptFriendRequestInToDataBaseCC8 W
(CCW X
askerPlayerCCX c
,CCc d
answeredPlayerCCe s
)CCs t
;CCt u
returnDD 
responseResultDD !
;DD! "
}EE 	
publicGG 
intGG  
DeclineFriendRequestGG '
(GG' (
	ContractsGG( 1
.GG1 2
ProfileGG2 9
	playerOneGG: C
,GGC D
	ContractsGGE N
.GGN O
ProfileGGO V
	playerTwoGGW `
)GG` a
{HH 	"
FriendRequestOperationII ""
friendRequestOperationII# 9
=II: ;
newII< ?"
FriendRequestOperationII@ V
(IIV W
)IIW X
;IIX Y
DataBaseManagerJJ 
.JJ 
AccessAccountJJ )
askerPlayerJJ* 5
=JJ6 7
newJJ8 ;
DataBaseManagerJJ< K
.JJK L
AccessAccountJJL Y
(JJY Z
)JJZ [
{KK 
idAccessAccountLL 
=LL  !
	playerOneLL" +
.LL+ ,
idAccesAccountLL, :
}MM 
;MM 
DataBaseManagerNN 
.NN 
AccessAccountNN )
answeredPlayerNN* 8
=NN9 :
newNN; >
DataBaseManagerNN? N
.NNN O
AccessAccountNNO \
(NN\ ]
)NN] ^
{OO 
idAccessAccountPP 
=PP  !
	playerTwoPP" +
.PP+ ,
idAccesAccountPP, :
}QQ 
;QQ 
intRR 
responseResultRR 
=RR  "
friendRequestOperationRR! 7
.RR7 8*
DeclineFriendRequestToDataBaseRR8 V
(RRV W
askerPlayerRRW b
,RRb c
answeredPlayerRRd r
)RRr s
;RRs t
returnSS 
responseResultSS !
;SS! "
}TT 	
publicVV 
intVV )
VerifyFriendRequestRegisteredVV 0
(VV0 1
	ContractsVV1 :
.VV: ;
ProfileVV; B
	playerOneVVC L
,VVL M
	ContractsVVN W
.VVW X
ProfileVVX _
	playerTwoVV` i
)VVi j
{WW 	"
FriendRequestOperationXX ""
friendRequestOperationXX# 9
=XX: ;
newXX< ?"
FriendRequestOperationXX@ V
(XXV W
)XXW X
;XXX Y
DataBaseManagerYY 
.YY 
AccessAccountYY )
askerPlayerYY* 5
=YY6 7
newYY8 ;
DataBaseManagerYY< K
.YYK L
AccessAccountYYL Y
(YYY Z
)YYZ [
{ZZ 
idAccessAccount[[ 
=[[  !
	playerOne[[" +
.[[+ ,
idAccesAccount[[, :
}\\ 
;\\ 
DataBaseManager]] 
.]] 
AccessAccount]] )
answeredPlayer]]* 8
=]]9 :
new]]; >
DataBaseManager]]? N
.]]N O
AccessAccount]]O \
(]]\ ]
)]]] ^
{^^ 
idAccessAccount__ 
=__  !
	playerTwo__" +
.__+ ,
idAccesAccount__, :
}`` 
;`` 
intaa 
verifyResultaa 
=aa "
friendRequestOperationaa 5
.aa5 63
'VerifyExistingFriendRequestInToDataBaseaa6 ]
(aa] ^
askerPlayeraa^ i
,aai j
answeredPlayeraak y
)aay z
;aaz {
returnbb 
verifyResultbb 
;bb  
}cc 	
}dd 
}ee …A
jC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\FriendshipService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
public 

partial 
class 
HiveGameService (
:) *
IFriendshipManager+ =
{ 
public 
int 
DeleteFriend 
(  
	Contracts  )
.) *
Profile* 1
removingPlayer2 @
,@ A
	ContractsB K
.K L
ProfileL S
friendToRemoveT b
)b c
{ 	
FriendshipOperation  
friendshipOperations  4
=5 6
new7 :
FriendshipOperation; N
(N O
)O P
;P Q
DataBaseManager 
. 
AccessAccount )"
removingPlayerDataBase* @
=A B
newC F
DataBaseManagerG V
.V W
AccessAccountW d
(d e
)e f
{ 
idAccessAccount 
=  !
removingPlayer" 0
.0 1
idAccesAccount1 ?
} 
; 
DataBaseManager 
. 
AccessAccount )"
friendToRemoveDataBase* @
=A B
newC F
DataBaseManagerG V
.V W
AccessAccountW d
(d e
)e f
{ 
idAccessAccount 
=  !
friendToRemove" 0
.0 1
idAccesAccount1 ?
} 
; 
int 
deleteResult 
=  
friendshipOperations 3
.3 4$
DeleteFriendFromDataBase4 L
(L M"
removingPlayerDataBaseM c
,c d"
friendToRemoveDataBasee {
){ |
;| }
return 
deleteResult 
;  
} 	
public!! 
List!! 
<!! 
	Contracts!! 
.!! 
Profile!! %
>!!% &
GetAllFriends!!' 4
(!!4 5
	Contracts!!5 >
.!!> ?
Profile!!? F
player!!G M
)!!M N
{"" 	
FriendshipOperation##  
friendshipOperations##  4
=##5 6
new##7 :
FriendshipOperation##; N
(##N O
)##O P
;##P Q
DataBaseManager$$ 
.$$ 
AccessAccount$$ )
searcherPlayer$$* 8
=$$9 :
new$$; >
DataBaseManager$$? N
.$$N O
AccessAccount$$O \
($$\ ]
)$$] ^
{%% 
idAccessAccount&& 
=&&  !
player&&" (
.&&( )
idAccesAccount&&) 7
}'' 
;'' 
List(( 
<(( 
UserData(( 
>(( '
friendsObtainedFromDataBase(( 6
=((7 8 
friendshipOperations((9 M
.((M N%
GetAllFriendsFromDataBase((N g
(((g h
searcherPlayer((h v
)((v w
;((w x
List)) 
<)) 
	Contracts)) 
.)) 
Profile)) "
>))" #
friendsObtained))$ 3
=))4 5
new))6 9
List)): >
<))> ?
	Contracts))? H
.))H I
Profile))I P
>))P Q
())Q R
)))R S
;))S T
for** 
(** 
int** ,
 friendsObtainedFromDataBaseIndex** 4
=**5 6
$num**7 8
;**8 9,
 friendsObtainedFromDataBaseIndex**: Z
<**[ \'
friendsObtainedFromDataBase**] x
.**x y
Count**y ~
;**~ .
 friendsObtainedFromDataBaseIndex
**€  
++
**  Ά
)
**Ά £
{++ 
	Contracts,, 
.,, 
Profile,, !
friend,," (
=,,) *
new,,+ .
	Contracts,,/ 8
.,,8 9
Profile,,9 @
(,,@ A
),,A B
{-- 
nickname.. 
=.. '
friendsObtainedFromDataBase.. :
[..: ;,
 friendsObtainedFromDataBaseIndex..; [
]..[ \
...\ ]
nickname..] e
,..e f
	idProfile// 
=// '
friendsObtainedFromDataBase//  ;
[//; <,
 friendsObtainedFromDataBaseIndex//< \
]//\ ]
.//] ^
	idProfile//^ g
,//g h
	imagePath00 
=00 '
friendsObtainedFromDataBase00  ;
[00; <,
 friendsObtainedFromDataBaseIndex00< \
]00\ ]
.00] ^
	imagePath00^ g
,00g h
	idAccount11 
=11 '
friendsObtainedFromDataBase11  ;
[11; <,
 friendsObtainedFromDataBaseIndex11< \
]11\ ]
.11] ^
idAccessAccount11^ m
,11m n
description22 
=22  !'
friendsObtainedFromDataBase22" =
[22= >,
 friendsObtainedFromDataBaseIndex22> ^
]22^ _
.22_ `
description22` k
,22k l

reputation33 
=33  '
friendsObtainedFromDataBase33! <
[33< =,
 friendsObtainedFromDataBaseIndex33= ]
]33] ^
.33^ _

reputation33_ i
,33i j
email44 
=44 '
friendsObtainedFromDataBase44 7
[447 8,
 friendsObtainedFromDataBaseIndex448 X
]44X Y
.44Y Z
email44Z _
,44_ `
username55 
=55 '
friendsObtainedFromDataBase55 :
[55: ;,
 friendsObtainedFromDataBaseIndex55; [
]55[ \
.55\ ]
username55] e
,55e f
createdDate66 
=66  !'
friendsObtainedFromDataBase66" =
[66= >,
 friendsObtainedFromDataBaseIndex66> ^
]66^ _
.66_ `
createdDate66` k
}77 
;77 
friendsObtained88 
.88  
Add88  #
(88# $
friend88$ *
)88* +
;88+ ,
}99 
return:: 
friendsObtained:: "
;::" #
};; 	
public== 
	Contracts== 
.== 
Profile==  
GetFriendByUsername==! 4
(==4 5
	Contracts==5 >
.==> ?
Profile==? F
player==G M
,==M N
string==O U
username==V ^
)==^ _
{>> 	
FriendshipOperation??  
friendshipOperations??  4
=??5 6
new??7 :
FriendshipOperation??; N
(??N O
)??O P
;??P Q
DataBaseManager@@ 
.@@ 
AccessAccount@@ )
searcherPlayer@@* 8
=@@9 :
new@@; >
DataBaseManager@@? N
.@@N O
AccessAccount@@O \
(@@\ ]
)@@] ^
{AA 
idAccessAccountBB 
=BB  !
playerBB" (
.BB( )
idAccesAccountBB) 7
}CC 
;CC 
DataBaseManagerDD 
.DD 
ProfileDD #&
friendObtainedFromDataBaseDD$ >
=DD? @ 
friendshipOperationsDDA U
.DDU V
GetFriendByUsernameDDV i
(DDi j
searcherPlayerDDj x
,DDx y
username	DDz ‚
)
DD‚ ƒ
;
DDƒ „
	ContractsEE 
.EE 
ProfileEE 
friendObtainedEE ,
=EE- .
newEE/ 2
	ContractsEE3 <
.EE< =
ProfileEE= D
(EED E
)EEE F
{FF 
	idProfileGG 
=GG &
friendObtainedFromDataBaseGG 6
.GG6 7
	idProfileGG7 @
,GG@ A
nicknameHH 
=HH &
friendObtainedFromDataBaseHH 5
.HH5 6
nicknameHH6 >
,HH> ?
	imagePathII 
=II &
friendObtainedFromDataBaseII 6
.II6 7
	imagePathII7 @
,II@ A
	idAccountJJ 
=JJ &
friendObtainedFromDataBaseJJ 6
.JJ6 7
FK_IdAccountJJ7 C
,JJC D
descriptionKK 
=KK &
friendObtainedFromDataBaseKK 8
.KK8 9
descriptionKK9 D
}LL 
;LL 
returnMM 
friendObtainedMM !
;MM! "
}NN 	
}OO 
}PP ξο
dC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\GameService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
public 

partial 
class 
HiveGameService (
:) *
IGameManager+ 7
{ 
private  
IGameManagerCallback $
gameManagerCallback% 8
;8 9
private 
static 
readonly 

Dictionary  *
<* +
UserSession+ 6
,6 7 
IGameManagerCallback8 L
>L M
gameCallbacksN [
=\ ]
new^ a

Dictionaryb l
<l m
UserSessionm x
,x y!
IGameManagerCallback	z 
>
 
(
 
)
 ‘
;
‘ ’
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
List3 7
<7 8
UserSession8 C
>C D
>D E
gamePlayersF Q
=R S
newT W

DictionaryX b
<b c
stringc i
,i j
Listk o
<o p
UserSessionp {
>{ |
>| }
(} ~
)~ 
;	 €
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
List3 7
<7 8

PlayerSide8 B
>B C
>C D
playersSideE P
=Q R
newS V

DictionaryW a
<a b
stringb h
,h i
Listj n
<n o

PlayerSideo y
>y z
>z {
({ |
)| }
;} ~
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
string3 9
>9 :
turnsInMatch; G
=H I
newJ M

DictionaryN X
<X Y
stringY _
,_ `
stringa g
>g h
(h i
)i j
;j k
public 
void 
ConnectToGameBoard &
(& '
UserSession' 2
session3 :
,: ;
string< B
	codeMatchC L
)L M
{ 	
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
HostBehaviorManager 
.  !
ChangeModeToReentrant  5
(5 6
)6 7
;7 8
try 
{ 
if 
( 
lobbiesCallback #
.# $
ContainsKey$ /
(/ 0
session0 7
)7 8
)8 9
{ 
lobbiesCallback #
.# $
Remove$ *
(* +
session+ 2
)2 3
;3 4
chatCallBacks !
.! "
Remove" (
(( )
session) 0
.0 1
username1 9
)9 :
;: ;
lobbyPlayers    
[    !
	codeMatch  ! *
]  * +
.  + ,
Remove  , 2
(  2 3
session  3 :
)  : ;
;  ; <
}!! 
gameManagerCallback"" #
=""$ %
OperationContext""& 6
.""6 7
Current""7 >
.""> ?
GetCallbackChannel""? Q
<""Q R 
IGameManagerCallback""R f
>""f g
(""g h
)""h i
;""i j
if## 
(## 
!## 
gameCallbacks## "
.##" #
ContainsKey### .
(##. /
session##/ 6
)##6 7
)##7 8
{$$ 
gameCallbacks%% !
.%%! "
Add%%" %
(%%% &
session%%& -
,%%- .
gameManagerCallback%%. A
)%%A B
;%%B C
if&& 
(&& 
!&& 
gamePlayers&& $
.&&$ %
ContainsKey&&% 0
(&&0 1
	codeMatch&&1 :
)&&: ;
)&&; <
{'' 
gamePlayers(( #
[((# $
	codeMatch(($ -
]((- .
=((/ 0
new((1 4
List((5 9
<((9 :
UserSession((: E
>((E F
(((F G
)((G H
;((H I
playersSide)) #
[))# $
	codeMatch))$ -
]))- .
=))/ 0
new))1 4
List))5 9
<))9 :

PlayerSide)): D
>))D E
())E F
)))F G
;))G H
}** 
gamePlayers++ 
[++  
	codeMatch++  )
]++) *
.++* +
Add+++ .
(++. /
session++/ 6
)++6 7
;++7 8
SetPlayersSide,, "
(,," #
session,,# *
),,* +
;,,+ ,"
NotifyPlayersMatchJoin-- *
(--* +
	codeMatch--+ 4
)--4 5
;--5 6
SetInitialTurn.. "
(.." #
session..# *
,..* +
	codeMatch..+ 4
)..4 5
;..5 6
}// 
}00 
catch11 
(11 "
CommunicationException11 )"
communicationException11* @
)11@ A
{22 
logger33 
.33 
LogError33 
(33  "
communicationException33  6
)336 7
;337 8
}44 
catch55 
(55 
TimeoutException55 #
timeoutException55$ 4
)554 5
{66 
logger77 
.77 
LogError77 
(77  
timeoutException77  0
)770 1
;771 2
}88 
}99 	
private;; 
void;; 
SetInitialTurn;; #
(;;# $
UserSession;;$ /
userSession;;0 ;
,;;; <
string;;= C
	codeMatch;;D M
);;M N
{<< 	
LoggerManager== 
logger==  
===! "
new==# &
LoggerManager==' 4
(==4 5
this==5 9
.==9 :
GetType==: A
(==A B
)==B C
)==C D
;==D E
HostBehaviorManager>> 
.>>  !
ChangeModeToReentrant>>  5
(>>5 6
)>>6 7
;>>7 8
try?? 
{@@ 
ifAA 
(AA 
!AA 
turnsInMatchAA !
.AA! "
ContainsKeyAA" -
(AA- .
	codeMatchAA. 7
)AA7 8
)AA8 9
{BB 
turnsInMatchCC  
[CC  !
	codeMatchCC! *
]CC* +
=CC, -
userSessionCC. 9
.CC9 :
usernameCC: B
;CCB C
gameCallbacksDD !
[DD! "
userSessionDD" -
]DD- .
.DD. /
ReceiveTurnsDD/ ;
(DD; <
trueDD< @
)DD@ A
;DDA B
}EE 
elseFF 
{GG 
gameCallbacksHH !
[HH! "
userSessionHH" -
]HH- .
.HH. /
ReceiveTurnsHH/ ;
(HH; <
falseHH< A
)HHA B
;HHB C
}II 
}JJ 
catchKK 
(KK "
CommunicationExceptionKK )"
communicationExceptionKK* @
)KK@ A
{LL 
loggerMM 
.MM 
LogErrorMM 
(MM  "
communicationExceptionMM  6
)MM6 7
;MM7 8
}NN 
catchOO 
(OO 
TimeoutExceptionOO #
timeoutExceptionOO$ 4
)OO4 5
{PP 
loggerQQ 
.QQ 
LogErrorQQ 
(QQ  
timeoutExceptionQQ  0
)QQ0 1
;QQ1 2
}RR 
}SS 	
publicUU 
voidUU 
LeaveTheGameUU  
(UU  !
UserSessionUU! ,
sessionUU- 4
,UU4 5
stringUU6 <
	codeMatchUU= F
)UUF G
{VV 	
LoggerManagerWW 
loggerWW  
=WW! "
newWW# &
LoggerManagerWW' 4
(WW4 5
thisWW5 9
.WW9 :
GetTypeWW: A
(WWA B
)WWB C
)WWC D
;WWD E
HostBehaviorManagerXX 
.XX  !
ChangeModeToReentrantXX  5
(XX5 6
)XX6 7
;XX7 8
tryYY 
{ZZ 
if[[ 
([[ 
gameCallbacks[[ !
.[[! "
ContainsKey[[" -
([[- .
session[[. 5
)[[5 6
)[[6 7
{\\ 
if]] 
(]] 
gamePlayers]] #
[]]# $
	codeMatch]]$ -
]]]- .
.]]. /
Count]]/ 4
==]]4 6
$num]]6 7
)]]7 8
{^^ 
gamePlayers__ #
.__# $
Remove__$ *
(__* +
	codeMatch__+ 4
)__4 5
;__5 6
gameCallbacks`` %
.``% &
Remove``& ,
(``, -
session``- 4
)``4 5
;``5 6
turnsInMatchaa $
.aa$ %
Removeaa% +
(aa+ ,
	codeMatchaa, 5
)aa5 6
;aa6 7
}bb 
elsecc 
{dd 
gamePlayersee #
[ee# $
	codeMatchee$ -
]ee- .
.ee. /
Removeee/ 5
(ee5 6
sessionee6 =
)ee= >
;ee> ?
gameCallbacksff %
.ff% &
Removeff& ,
(ff, -
sessionff- 4
)ff4 5
;ff5 6'
NotifyPlayerUserLeftTheGamegg 3
(gg3 4
	codeMatchgg4 =
)gg= >
;gg> ?
}hh 
}ii 
}jj 
catchkk 
(kk "
CommunicationExceptionkk )"
communicationExceptionkk* @
)kk@ A
{ll 
loggermm 
.mm 
LogErrormm 
(mm  "
communicationExceptionmm  6
)mm6 7
;mm7 8
}nn 
catchoo 
(oo 
TimeoutExceptionoo #
timeoutExceptionoo$ 4
)oo4 5
{pp 
loggerqq 
.qq 
LogErrorqq 
(qq  
timeoutExceptionqq  0
)qq0 1
;qq1 2
}rr 
}ss 	
privateuu 
voiduu '
NotifyPlayerUserLeftTheGameuu 0
(uu0 1
stringuu1 7
	codeMatchuu8 A
)uuA B
{vv 	
LoggerManagerww 
loggerww  
=ww! "
newww# &
LoggerManagerww' 4
(ww4 5
thisww5 9
.ww9 :
GetTypeww: A
(wwA B
)wwB C
)wwC D
;wwD E
HostBehaviorManagerxx 
.xx  !
ChangeModeToReentrantxx  5
(xx5 6
)xx6 7
;xx7 8
tryyy 
{zz 
List{{ 
<{{ 
UserSession{{  
>{{  !
usersInMatch{{" .
={{/ 0
gamePlayers{{1 <
[{{< =
	codeMatch{{= F
]{{F G
;{{G H
for|| 
(|| 
int|| 
indexUsersInGame|| (
=||* +
$num||, -
;||- .
indexUsersInGame||/ ?
<||@ A
usersInMatch||B N
.||N O
Count||O T
;||T U
indexUsersInGame||V f
++||f h
)||h i
{}} 
UserSession~~ 
userToNotify~~  ,
=~~- .
usersInMatch~~/ ;
[~~; <
indexUsersInGame~~< L
]~~L M
;~~M N
gameCallbacks !
[! "
userToNotify" .
]. /
./ 0,
 ReceivePlayerHasLeftNotification0 P
(P Q
trueQ U
)U V
;V W
}
€€ 
}
 
catch
‚‚ 
(
‚‚ $
CommunicationException
‚‚ ($
communicationException
‚‚) ?
)
‚‚? @
{
ƒƒ 
logger
„„ 
.
„„ 
LogError
„„ 
(
„„  $
communicationException
„„  6
)
„„6 7
;
„„7 8
}
…… 
catch
†† 
(
†† 
TimeoutException
†† "
timeoutException
††# 3
)
††3 4
{
‡‡ 
logger
 
.
 
LogError
 
(
  
timeoutException
  0
)
0 1
;
1 2
}
‰‰ 
}
 	
public
 
void
 
	MovePiece
 
(
 
GamePice
 &
piece
' ,
,
, -
UserSession
. 9
session
: A
,
A B
string
C I
	codeMatch
J S
)
S T
{
 	!
HostBehaviorManager
 
.
  #
ChangeModeToReentrant
  5
(
5 6
)
6 7
;
7 8
LoggerManager
 
logger
  
=
! "
new
# &
LoggerManager
' 4
(
4 5
this
5 9
.
9 :
GetType
: A
(
A B
)
B C
)
C D
;
D E
try
 
{
‘‘ 
List
’’ 
<
’’ 
UserSession
’’  
>
’’  !
usersInMatch
’’" .
=
’’/ 0
gamePlayers
’’1 <
[
’’< =
	codeMatch
’’= F
]
’’F G
.
’’G H
ToList
’’H N
(
’’N O
)
’’O P
;
’’P Q
for
““ 
(
““ 
int
““ !
indexLobbyCallbacks
““ +
=
““, -
$num
““. /
;
““/ 0!
indexLobbyCallbacks
““1 D
<
““E F
usersInMatch
““G S
.
““S T
Count
““T Y
;
““Y Z!
indexLobbyCallbacks
““[ n
++
““n p
)
““p q
{
”” 
if
•• 
(
•• 
!
•• 
usersInMatch
•• %
[
••% &!
indexLobbyCallbacks
••& 9
]
••9 :
.
••: ;
Equals
••; A
(
••A B
session
••B I
)
••I J
)
••J K
{
–– 
gameCallbacks
—— %
[
——% &
usersInMatch
——& 2
[
——2 3!
indexLobbyCallbacks
——3 F
]
——F G
]
——G H
.
——H I
ReceivePieceMoved
——I Z
(
——Z [
piece
——[ `
)
——` a
;
——a b
}
 
}
 
}
›› 
catch
 
(
 $
CommunicationException
 )$
communicationException
* @
)
@ A
{
 
logger
 
.
 
LogError
 
(
  $
communicationException
  6
)
6 7
;
7 8
}
 
catch
   
(
   
TimeoutException
   #
timeoutException
  $ 4
)
  4 5
{
΅΅ 
logger
ΆΆ 
.
ΆΆ 
LogError
ΆΆ 
(
ΆΆ  
timeoutException
ΆΆ  0
)
ΆΆ0 1
;
ΆΆ1 2
}
££ 
}
¤¤ 	
public
¦¦ 
void
¦¦ 
SetTurns
¦¦ 
(
¦¦ 
UserSession
¦¦ (
session
¦¦) 0
,
¦¦0 1
string
¦¦2 8
	codeMatch
¦¦9 B
)
¦¦B C
{
§§ 	!
HostBehaviorManager
¨¨ 
.
¨¨  #
ChangeModeToReentrant
¨¨  5
(
¨¨5 6
)
¨¨6 7
;
¨¨7 8
LoggerManager
©© 
logger
©©  
=
©©! "
new
©©# &
LoggerManager
©©' 4
(
©©4 5
this
©©5 9
.
©©9 :
GetType
©©: A
(
©©A B
)
©©B C
)
©©C D
;
©©D E
try
ªª 
{
«« 
if
¬¬ 
(
¬¬ 
turnsInMatch
¬¬  
[
¬¬  !
	codeMatch
¬¬! *
]
¬¬* +
.
¬¬+ ,
Contains
¬¬, 4
(
¬¬4 5
session
¬¬5 <
.
¬¬< =
username
¬¬= E
)
¬¬E F
)
¬¬F G
{
­­ 
string
®® 
userTurnUsername
®® +
=
®®, -
session
®®. 5
.
®®5 6
username
®®6 >
;
®®> ?
List
―― 
<
―― 
UserSession
―― $
>
――$ %
usersInMatch
――& 2
=
――3 4
gamePlayers
――5 @
[
――@ A
	codeMatch
――A J
]
――J K
;
――K L
for
°° 
(
°° 
int
°° !
indexPlayersInLobby
°° 0
=
°°1 2
$num
°°3 4
;
°°4 5!
indexPlayersInLobby
°°6 I
<
°°J K
usersInMatch
°°L X
.
°°X Y
Count
°°Y ^
;
°°^ _!
indexPlayersInLobby
°°` s
++
°°s u
)
°°u v
{
±± 
if
²² 
(
²² 
!
²² 
turnsInMatch
²² )
[
²²) *
	codeMatch
²²* 3
]
²²3 4
.
²²4 5
Contains
²²5 =
(
²²= >
usersInMatch
²²> J
[
²²J K!
indexPlayersInLobby
²²K ^
]
²²^ _
.
²²_ `
username
²²` h
)
²²h i
)
²²i j
{
³³ 
userTurnUsername
΄΄ ,
=
΄΄- .
usersInMatch
΄΄/ ;
[
΄΄; <!
indexPlayersInLobby
΄΄< O
]
΄΄O P
.
΄΄P Q
username
΄΄Q Y
;
΄΄Y Z
}
µµ 
}
¶¶ 
turnsInMatch
··  
[
··  !
	codeMatch
··! *
]
··* +
=
··, -
userTurnUsername
··. >
;
··> ?
for
ΈΈ 
(
ΈΈ 
int
ΈΈ '
indexPlayerLobbyCallbacks
ΈΈ 6
=
ΈΈ7 8
$num
ΈΈ9 :
;
ΈΈ: ;'
indexPlayerLobbyCallbacks
ΈΈ< U
<
ΈΈV W
usersInMatch
ΈΈX d
.
ΈΈd e
Count
ΈΈe j
;
ΈΈj k
++
ΈΈl n(
indexPlayerLobbyCallbacksΈΈn ‡
)ΈΈ‡ 
{
ΉΉ 
if
ΊΊ 
(
ΊΊ 
turnsInMatch
ΊΊ (
[
ΊΊ( )
	codeMatch
ΊΊ) 2
]
ΊΊ2 3
.
ΊΊ3 4
Contains
ΊΊ4 <
(
ΊΊ< =
usersInMatch
ΊΊ= I
[
ΊΊI J'
indexPlayerLobbyCallbacks
ΊΊJ c
]
ΊΊc d
.
ΊΊd e
username
ΊΊe m
)
ΊΊm n
)
ΊΊn o
{
»» 
gameCallbacks
ΌΌ )
[
ΌΌ) *
usersInMatch
ΌΌ* 6
[
ΌΌ6 7'
indexPlayerLobbyCallbacks
ΌΌ7 P
]
ΌΌP Q
]
ΌΌQ R
.
ΌΌR S
ReceiveTurns
ΌΌS _
(
ΌΌ_ `
true
ΌΌ` d
)
ΌΌd e
;
ΌΌe f
}
½½ 
else
ΎΎ 
{
ΏΏ 
gameCallbacks
ΐΐ )
[
ΐΐ) *
usersInMatch
ΐΐ* 6
[
ΐΐ6 7'
indexPlayerLobbyCallbacks
ΐΐ7 P
]
ΐΐP Q
]
ΐΐQ R
.
ΐΐR S
ReceiveTurns
ΐΐS _
(
ΐΐ_ `
false
ΐΐ` e
)
ΐΐe f
;
ΐΐf g
}
ΑΑ 
}
ΒΒ 
}
ΓΓ 
}
ΔΔ 
catch
ΕΕ 
(
ΕΕ $
CommunicationException
ΕΕ )$
communicationException
ΕΕ* @
)
ΕΕ@ A
{
ΖΖ 
logger
ΗΗ 
.
ΗΗ 
LogError
ΗΗ 
(
ΗΗ  $
communicationException
ΗΗ  6
)
ΗΗ6 7
;
ΗΗ7 8
}
ΘΘ 
catch
ΙΙ 
(
ΙΙ 
TimeoutException
ΙΙ #
timeoutException
ΙΙ$ 4
)
ΙΙ4 5
{
ΚΚ 
logger
ΛΛ 
.
ΛΛ 
LogError
ΛΛ 
(
ΛΛ  
timeoutException
ΛΛ  0
)
ΛΛ0 1
;
ΛΛ1 2
}
ΜΜ 
}
ΝΝ 	
private
ΟΟ 
void
ΟΟ 
SetPlayersSide
ΟΟ #
(
ΟΟ# $
UserSession
ΟΟ$ /
session
ΟΟ0 7
)
ΟΟ7 8
{
ΠΠ 	!
HostBehaviorManager
ΡΡ 
.
ΡΡ  #
ChangeModeToReentrant
ΡΡ  5
(
ΡΡ5 6
)
ΡΡ6 7
;
ΡΡ7 8
LoggerManager
ÒÒ 
logger
ÒÒ  
=
ÒÒ! "
new
ÒÒ# &
LoggerManager
ÒÒ' 4
(
ÒÒ4 5
this
ÒÒ5 9
.
ÒÒ9 :
GetType
ÒÒ: A
(
ÒÒA B
)
ÒÒB C
)
ÒÒC D
;
ÒÒD E

PlayerSide
ΣΣ 

playerSide
ΣΣ !
=
ΣΣ" #
new
ΣΣ$ '

PlayerSide
ΣΣ( 2
(
ΣΣ2 3
)
ΣΣ3 4
{
ΤΤ 
username
ΥΥ 
=
ΥΥ 
session
ΥΥ "
.
ΥΥ" #
username
ΥΥ# +
,
ΥΥ+ ,
	playerOne
ΦΦ 
=
ΦΦ 
false
ΦΦ !
,
ΦΦ! "
	playerTwo
ΧΧ 
=
ΧΧ 
false
ΧΧ !
,
ΧΧ! "
}
ΨΨ 
;
ΨΨ 
try
ΩΩ 
{
ΪΪ 
List
ΫΫ 
<
ΫΫ 
UserSession
ΫΫ  
>
ΫΫ  !
firstUserToJoin
ΫΫ" 1
=
ΫΫ2 3
gamePlayers
ΫΫ4 ?
[
ΫΫ? @
session
ΫΫ@ G
.
ΫΫG H
	codeMatch
ΫΫH Q
]
ΫΫQ R
;
ΫΫR S
if
άά 
(
άά 
firstUserToJoin
άά #
[
άά# $
$num
άά$ %
]
άά% &
==
άά' )
session
άά* 1
)
άά1 2
{
έέ 

playerSide
ήή 
.
ήή 
	playerOne
ήή (
=
ήή) *
true
ήή+ /
;
ήή/ 0
}
ίί 
else
ΰΰ 
{
αα 

playerSide
ββ 
.
ββ 
	playerTwo
ββ (
=
ββ) *
true
ββ+ /
;
ββ/ 0
}
γγ 
gameCallbacks
δδ 
[
δδ 
session
δδ %
]
δδ% &
.
δδ& '#
ChargePlayerGameBoard
δδ' <
(
δδ< =

playerSide
δδ= G
)
δδG H
;
δδH I
}
εε 
catch
ζζ 
(
ζζ $
CommunicationException
ζζ ($
communicationException
ζζ) ?
)
ζζ? @
{
ηη 
logger
θθ 
.
θθ 
LogError
θθ 
(
θθ  $
communicationException
θθ  6
)
θθ6 7
;
θθ7 8
}
ιι 
catch
κκ 
(
κκ 
TimeoutException
κκ #
timeoutException
κκ$ 4
)
κκ4 5
{
λλ 
logger
μμ 
.
μμ 
LogError
μμ 
(
μμ  
timeoutException
μμ  0
)
μμ0 1
;
μμ1 2
}
νν 
}
ξξ 	
private
ππ 
void
ππ $
NotifyPlayersMatchJoin
ππ +
(
ππ+ ,
string
ππ, 2
	codeMatch
ππ3 <
)
ππ< =
{
ρρ 	!
HostBehaviorManager
ςς 
.
ςς  #
ChangeModeToReentrant
ςς  5
(
ςς5 6
)
ςς6 7
;
ςς7 8
LoggerManager
σσ 
logger
σσ  
=
σσ! "
new
σσ# &
LoggerManager
σσ' 4
(
σσ4 5
this
σσ5 9
.
σσ9 :
GetType
σσ: A
(
σσA B
)
σσB C
)
σσC D
;
σσD E
List
ττ 
<
ττ 
UserSession
ττ 
>
ττ 
usersInMatch
ττ *
=
ττ+ ,
gamePlayers
ττ- 8
[
ττ8 9
	codeMatch
ττ9 B
]
ττB C
;
ττC D
for
υυ 
(
υυ 
int
υυ 
gamePlayersIndex
υυ $
=
υυ% &
$num
υυ' (
;
υυ( )
gamePlayersIndex
υυ* :
<
υυ; <
usersInMatch
υυ= I
.
υυI J
Count
υυJ O
;
υυO P
gamePlayersIndex
υυQ a
++
υυa c
)
υυc d
{
φφ 
try
χχ 
{
ψψ 
UserSession
ωω 
userToNotify
ωω  ,
=
ωω- .
usersInMatch
ωω/ ;
[
ωω; <
gamePlayersIndex
ωω< L
]
ωωL M
;
ωωM N
if
ϊϊ 
(
ϊϊ 
gameCallbacks
ϊϊ %
.
ϊϊ% &
ContainsKey
ϊϊ& 1
(
ϊϊ1 2
userToNotify
ϊϊ2 >
)
ϊϊ> ?
)
ϊϊ? @
{
ϋϋ 
gameCallbacks
όό %
[
όό% &
userToNotify
όό& 2
]
όό2 3
.
όό3 4#
ReceivePlayersToMatch
όό4 I
(
όόI J
usersInMatch
όόJ V
)
όόV W
;
όόW X
}
ύύ 
}
ώώ 
catch
ÿÿ 
(
ÿÿ $
CommunicationException
ÿÿ -$
communicationException
ÿÿ. D
)
ÿÿD E
{
€€ 
logger
 
.
 
LogError
 #
(
# $$
communicationException
$ :
)
: ;
;
; <
}
‚‚ 
catch
ƒƒ 
(
ƒƒ 
TimeoutException
ƒƒ '
timeoutException
ƒƒ( 8
)
ƒƒ8 9
{
„„ 
logger
…… 
.
…… 
LogError
…… #
(
……# $
timeoutException
……$ 4
)
……4 5
;
……5 6
}
†† 
}
‡‡ 
}
 	
public
 
void
 
FinishOfTheMatch
 $
(
$ %
string
% +
	codeMatch
, 5
,
5 6
string
7 =
winner
> D
)
D E
{
‹‹ 	!
HostBehaviorManager
 
.
  #
ChangeModeToReentrant
  5
(
5 6
)
6 7
;
7 8
LoggerManager
 
logger
  
=
! "
new
# &
LoggerManager
' 4
(
4 5
this
5 9
.
9 :
GetType
: A
(
A B
)
B C
)
C D
;
D E
List
 
<
 
UserSession
 
>
 
usersInMatch
 *
=
+ ,
gamePlayers
- 8
[
8 9
	codeMatch
9 B
]
B C
;
C D
for
 
(
 
int
 
gamePlayersIndex
 $
=
% &
$num
' (
;
( )
gamePlayersIndex
) 9
<
: ;
usersInMatch
< H
.
H I
Count
I N
;
N O
gamePlayersIndex
O _
++
_ a
)
a b
{
 
try
‘‘ 
{
’’ 
UserSession
““ 
userToNotify
““  ,
=
““- .
usersInMatch
““/ ;
[
““; <
gamePlayersIndex
““< L
]
““L M
;
““M N
if
”” 
(
”” 
gameCallbacks
”” %
.
””% &
ContainsKey
””& 1
(
””1 2
userToNotify
””2 >
)
””> ?
)
””? @
{
•• 
gameCallbacks
–– %
[
––% &
userToNotify
––& 2
]
––2 3
.
––3 4%
ReceiveFinalMatchResult
––4 K
(
––K L
winner
––L R
)
––R S
;
––S T
}
—— 
}
 
catch
™™ 
(
™™ $
CommunicationException
™™ -$
communicationException
™™. D
)
™™D E
{
 
logger
›› 
.
›› 
LogError
›› #
(
››# $$
communicationException
››$ :
)
››: ;
;
››; <
}
 
catch
 
(
 
TimeoutException
 '
timeoutException
( 8
)
8 9
{
 
logger
 
.
 
LogError
 #
(
# $
timeoutException
$ 4
)
4 5
;
5 6
}
   
}
΅΅ 
}
ΆΆ 	
public
¤¤ 
int
¤¤  
LeaveMatchFinished
¤¤ %
(
¤¤% &
string
¤¤& ,
	codeMatch
¤¤- 6
,
¤¤6 7
UserSession
¤¤8 C
session
¤¤D K
)
¤¤K L
{
¥¥ 	!
HostBehaviorManager
¦¦ 
.
¦¦  #
ChangeModeToReentrant
¦¦  5
(
¦¦5 6
)
¦¦6 7
;
¦¦7 8
LoggerManager
§§ 
logger
§§  
=
§§! "
new
§§# &
LoggerManager
§§' 4
(
§§4 5
this
§§5 9
.
§§9 :
GetType
§§: A
(
§§A B
)
§§B C
)
§§C D
;
§§D E
int
¨¨ !
disconnectionResult
¨¨ #
=
¨¨$ %
	Constants
¨¨& /
.
¨¨/ 0
ERROR_OPERATION
¨¨0 ?
;
¨¨? @
try
©© 
{
ªª 
if
«« 
(
«« 
gameCallbacks
«« !
.
««! "
ContainsKey
««" -
(
««- .
session
««. 5
)
««5 6
)
««6 7
{
¬¬ 
if
­­ 
(
­­ 
gamePlayers
­­ "
.
­­" #
Count
­­# (
==
­­) +
$num
­­, -
)
­­- .
{
®® 
gameCallbacks
―― %
.
――% &
Remove
――& ,
(
――, -
session
――- 4
)
――4 5
;
――5 6
gamePlayers
°° #
.
°°# $
Remove
°°$ *
(
°°* +
	codeMatch
°°+ 4
)
°°4 5
;
°°5 6!
disconnectionResult
±± +
=
±±, -
	Constants
±±. 7
.
±±7 8
SUCCES_OPERATION
±±8 H
;
±±H I
}
²² 
else
³³ 
{
΄΄ 
gameCallbacks
µµ %
.
µµ% &
Remove
µµ& ,
(
µµ, -
session
µµ- 4
)
µµ4 5
;
µµ5 6
gamePlayers
¶¶ #
[
¶¶# $
	codeMatch
¶¶$ -
]
¶¶- .
.
¶¶. /
Remove
¶¶/ 5
(
¶¶5 6
session
¶¶6 =
)
¶¶= >
;
¶¶> ?!
disconnectionResult
·· +
=
··, -
	Constants
··. 7
.
··7 8
SUCCES_OPERATION
··8 H
;
··H I
}
ΈΈ 
}
ΉΉ 
else
ΊΊ 
{
»» !
disconnectionResult
ΌΌ '
=
ΌΌ( )
	Constants
ΌΌ* 3
.
ΌΌ3 4
NO_DATA_MATCHES
ΌΌ4 C
;
ΌΌC D
}
½½ 
}
ΎΎ 
catch
ΏΏ 
(
ΏΏ $
CommunicationException
ΏΏ )$
communicationException
ΏΏ* @
)
ΏΏ@ A
{
ΐΐ 
logger
ΑΑ 
.
ΑΑ 
LogError
ΑΑ 
(
ΑΑ  $
communicationException
ΑΑ  6
)
ΑΑ6 7
;
ΑΑ7 8
}
ΒΒ 
catch
ΓΓ 
(
ΓΓ 
TimeoutException
ΓΓ #
timeoutException
ΓΓ$ 4
)
ΓΓ4 5
{
ΔΔ 
logger
ΕΕ 
.
ΕΕ 
LogError
ΕΕ 
(
ΕΕ  
timeoutException
ΕΕ  0
)
ΕΕ0 1
;
ΕΕ1 2
}
ΖΖ 
return
ΗΗ !
disconnectionResult
ΗΗ &
;
ΗΗ& '
}
ΘΘ 	
}
ΙΙ 
}ΚΚ άB
gC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\FriendsService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
public 

partial 
class 
HiveGameService (
:) *
IFriendsManager+ :
{ 
private #
IFriendsManagerCallback '"
friendsManagerCallback( >
;> ?
private 
static 
readonly 

Dictionary  *
<* +
UserSession+ 6
,6 7#
IFriendsManagerCallback8 O
>O P#
friendsManagerCallbacksQ h
=i j
newk n

Dictionaryo y
<y z
UserSession	z …
,
… †%
IFriendsManagerCallback
‡ 
>
 
(
  
)
  ΅
;
΅ Ά
public 
void 
GetFriendsList "
(" #
UserSession# .
user/ 3
)3 4
{ 	
HostBehaviorManager 
.  !
ChangeModeToReentrant  5
(5 6
)6 7
;7 8"
friendsManagerCallback "
=# $
OperationContext% 5
.5 6
Current6 =
.= >
GetCallbackChannel> P
<P Q#
IFriendsManagerCallbackQ h
>h i
(i j
)j k
;k l
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
List 
< 
UserSession 
> 
friendsConnected .
=/ 0
ObtainFriendsList1 B
(B C
userC G
.G H
	idAccountH Q
)Q R
;R S
try 
{ 
OperationContext  
.  !
Current! (
.( )
GetCallbackChannel) ;
<; <#
IFriendsManagerCallback< S
>S T
(T U
)U V
.V W"
ObtainConnectedFriendsW m
(m n
friendsConnectedn ~
)~ 
;	 €
} 
catch 
( "
CommunicationException )!
comunicationException* ?
)? @
{ 
logger 
. 
LogError 
(  !
comunicationException  5
)5 6
;6 7
}   
catch   
(   
TimeoutException   #
timeoutException  $ 4
)  4 5
{!! 
logger"" 
."" 
LogError"" 
(""  
timeoutException""  0
)""0 1
;""1 2
}## 
}$$ 	
public&& 
void&& !
JoinAsConnectedFriend&& )
(&&) *
UserSession&&* 5
user&&6 :
)&&: ;
{'' 	
LoggerManager(( 
logger((  
=((! "
new((# &
LoggerManager((' 4
(((4 5
this((5 9
.((9 :
GetType((: A
(((A B
)((B C
)((C D
;((D E
HostBehaviorManager)) 
.))  !
ChangeModeToReentrant))  5
())5 6
)))6 7
;))7 8"
friendsManagerCallback** "
=**# $
OperationContext**% 5
.**5 6
Current**6 =
.**= >
GetCallbackChannel**> P
<**P Q#
IFriendsManagerCallback**Q h
>**h i
(**i j
)**j k
;**k l
try++ 
{,, 
if-- 
(-- 
!-- #
friendsManagerCallbacks-- ,
.--, -
ContainsKey--- 8
(--8 9
user--9 =
)--= >
)--> ?
{.. #
friendsManagerCallbacks// +
.//+ ,
Add//, /
(/// 0
user//0 4
,//4 5"
friendsManagerCallback//6 L
)//L M
;//M N
}00 
}11 
catch22 
(22 "
CommunicationException22 )!
comunicationException22* ?
)22? @
{33 
logger44 
.44 
LogError44 
(44  !
comunicationException44  5
)445 6
;446 7
}55 
catch66 
(66 
TimeoutException66 #
timeoutException66$ 4
)664 5
{77 
logger88 
.88 
LogError88 
(88  
timeoutException88  0
)880 1
;881 2
}99 
}:: 	
private<< 
List<< 
<<< 
UserSession<<  
><<  !
ObtainFriendsList<<" 3
(<<3 4
int<<4 7
	idAccount<<8 A
)<<A B
{== 	
Profile>> 
profilePlayer>> !
=>>" #
new>>$ '
Profile>>( /
(>>/ 0
)>>0 1
{?? 
idAccesAccount@@ 
=@@  
	idAccount@@! *
}AA 
;AA 
ListBB 
<BB 
ProfileBB 
>BB 
listOFAllFriendsBB *
=BB+ ,
GetAllFriendsBB- :
(BB: ;
profilePlayerBB; H
)BBH I
;BBI J
ListCC 
<CC 
UserSessionCC 
>CC 
friendsConnectedCC .
=CC/ 0
newCC1 4
ListCC5 9
<CC9 :
UserSessionCC: E
>CCE F
(CCF G
)CCG H
;CCH I
forDD 
(DD 
intDD 
indexFriendsListDD %
=DD& '
$numDD( )
;DD) *
indexFriendsListDD+ ;
<DD< =
listOFAllFriendsDD> N
.DDN O
CountDDO T
;DDT U
indexFriendsListDDV f
++DDf h
)DDh i
{EE 
UserSessionFF 
friendObtainedFF *
=FF+ ,
newFF- 0
UserSessionFF1 <
(FF< =
)FF= >
{GG 
usernameHH 
=HH 
listOFAllFriendsHH /
[HH/ 0
indexFriendsListHH0 @
]HH@ A
.HHA B
usernameHHB J
,HHJ K
	idAccountII 
=II 
listOFAllFriendsII  0
[II0 1
indexFriendsListII1 A
]IIA B
.IIB C
	idAccountIIC L
,IIL M
}JJ 
;JJ 
ifKK 
(KK 
usersConnectedKK "
.KK" #
ContainsKK# +
(KK+ ,
friendObtainedKK, :
)KK: ;
)KK; <
{LL 
UserSessionMM 
friendConnectedMM  /
=MM0 1
newMM2 5
UserSessionMM6 A
(MMA B
)MMB C
{MMC D
usernameNN  
=NN! "
listOFAllFriendsNN# 3
[NN3 4
indexFriendsListNN4 D
]NND E
.NNE F
usernameNNF N
,NNN O
	idAccountOO !
=OO" #
listOFAllFriendsOO$ 4
[OO4 5
indexFriendsListOO5 E
]OOE F
.OOF G
	idAccountOOG P
,OOP Q
}PP 
;PP 
friendsConnectedQQ $
.QQ$ %
AddQQ% (
(QQ( )
friendConnectedQQ) 8
)QQ8 9
;QQ9 :
}RR 
}SS 
returnTT 
friendsConnectedTT #
;TT# $
}UU 	
publicWW 
intWW '
DeleteUserAsConnectedFriendWW .
(WW. /
UserSessionWW/ :
userWW; ?
)WW? @
{XX 	
intYY 
deleteResultYY 
=YY 
	ConstantsYY (
.YY( )
ERROR_OPERATIONYY) 8
;YY8 9
ifZZ 
(ZZ #
friendsManagerCallbacksZZ '
.ZZ' (
ContainsKeyZZ( 3
(ZZ3 4
userZZ4 8
)ZZ8 9
)ZZ9 :
{[[ #
friendsManagerCallbacks\\ '
.\\' (
Remove\\( .
(\\. /
user\\/ 3
)\\3 4
;\\4 5
deleteResult]] 
=]] 
	Constants]] (
.]]( )
SUCCES_OPERATION]]) 9
;]]9 :
}^^ 
else__ 
{`` 
deleteResultaa 
=aa 
	Constantsaa (
.aa( )
NO_DATA_MATCHESaa) 8
;aa8 9
}bb 
returncc 
deleteResultcc 
;cc  
}dd 	
}ee 
}ff T
qC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\EmailVerificationService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
public 

partial 
class 
HiveGameService (
:) *%
IEmailVerificationManager+ D
{ 
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
string3 9
>9 :4
(codeVerificationAccesAccountRegistration; c
=d e
newf i

Dictionaryj t
<t u
stringu {
,{ |
string	} ƒ
>
ƒ „
(
„ …
)
… †
;
† ‡
public 
int !
SendVerificationEmail (
(( )
string) /
emailToSend0 ;
); <
{ 	
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
int 
resultSendedEmail !
=" #
	Constants$ -
.- .
ERROR_OPERATION. =
;= >
string 
codeGenerated  
=! "#
GenerateVerificatonCode# :
(: ;
emailToSend; F
)F G
;G H
string '
templateVerificationMessage .
=/ 0
BodyMessageFormat1 B
(B C
)C D
;D E
string 
emailSender 
=   
ConfigurationManager! 5
.5 6
AppSettings6 A
[A B
$strB O
]O P
;P Q
string 
password 
=  
ConfigurationManager 2
.2 3
AppSettings3 >
[> ?
$str? N
]N O
;O P
string 

smtpServer 
=  
ConfigurationManager  4
.4 5
AppSettings5 @
[@ A
$strA M
]M N
;N O
int 
port 
= 
int 
. 
Parse  
(  ! 
ConfigurationManager! 5
.5 6
AppSettings6 A
[A B
$strB L
]L M
)M N
;N O
try   
{!! 
if"" 
("" '
templateVerificationMessage"" /
!=""0 2
$str""3 L
)""L M
{## 
MailMessage%% 
messageToSend%%  -
=%%. /
new%%0 3
MailMessage%%4 ?
(%%? @
)%%@ A
;%%A B
messageToSend&& !
.&&! "
Subject&&" )
=&&* +
$str&&, F
;&&F G
messageToSend'' !
.''! "
From''" &
=''' (
new'') ,
MailAddress''- 8
(''8 9
emailSender''9 D
)''D E
;''E F
messageToSend(( !
.((! "
To((" $
.(($ %
Add((% (
(((( )
emailToSend(() 4
)((4 5
;((5 6
messageToSend)) !
.))! "
Body))" &
=))' ('
templateVerificationMessage))) D
.))D E
Replace))E L
())L M
$str))M U
,))U V
codeGenerated))W d
)))d e
;))e f
messageToSend** !
.**! "

IsBodyHtml**" ,
=**- .
true**/ 3
;**3 4
var++ 

smtpClient++ "
=++# $
new++% (

SmtpClient++) 3
(++3 4

smtpServer++4 >
)++> ?
{,, 
Port-- 
=-- 
port-- #
,--# $
Credentials.. #
=..$ %
new..& )
NetworkCredential..* ;
(..; <
emailSender..< G
,..G H
password..I Q
)..Q R
,..R S
	EnableSsl// !
=//" #
true//$ (
}00 
;00 

smtpClient11 
.11 
Send11 #
(11# $
messageToSend11$ 1
)111 2
;112 3
resultSendedEmail22 %
=22& '
	Constants22( 1
.221 2
SUCCES_OPERATION222 B
;22B C
}33 
}44 
catch55 
(55 !
FileNotFoundException55 (!
fileNotFoundException55) >
)55> ?
{66 
logger77 
.77 
LogError77 
(77  !
fileNotFoundException77  5
)775 6
;776 7
}88 
catch99 
(99 (
SmtpFailedRecipientException99 /(
smtpFailedRecipientException990 L
)99L M
{:: 
logger;; 
.;; 
LogError;; 
(;;  (
smtpFailedRecipientException;;  <
);;< =
;;;= >
}<< 
catch== 
(== 
SmtpException==  
smtpException==! .
)==. /
{>> 
logger?? 
.?? 
LogError?? 
(??  
smtpException??  -
)??- .
;??. /
}@@ 
catchAA 
(AA 
FormatExceptionAA "
formatExceptionAA# 2
)AA2 3
{BB 
loggerCC 
.CC 
LogErrorCC 
(CC  
formatExceptionCC  /
)CC/ 0
;CC0 1
}DD 
catchEE 
(EE %
InvalidOperationExceptionEE ,%
invalidOperationExceptionEE- F
)EEF G
{FF 
loggerGG 
.GG 
LogErrorGG 
(GG  %
invalidOperationExceptionGG  9
)GG9 :
;GG: ;
}HH 
returnII 
resultSendedEmailII $
;II$ %
}JJ 	
privateLL 
stringLL 
BodyMessageFormatLL (
(LL( )
)LL) *
{MM 	
LoggerManagerNN 
loggerNN  
=NN! "
newNN# &
LoggerManagerNN' 4
(NN4 5
thisNN5 9
.NN9 :
GetTypeNN: A
(NNA B
)NNB C
)NNC D
;NND E
stringOO 
bodyMessageFormatOO $
;OO$ %
tryPP 
{QQ 
stringRR 
baseDirectoryRR $
=RR% &
	AppDomainRR' 0
.RR0 1
CurrentDomainRR1 >
.RR> ?
BaseDirectoryRR? L
;RRL M
stringSS 

serverPathSS !
=SS" #
PathSS$ (
.SS( )
GetFullPathSS) 4
(SS4 5
PathSS5 9
.SS9 :
CombineSS: A
(SSA B
baseDirectorySSB O
,SSO P
$strSSQ \
)SS\ ]
)SS] ^
;SS^ _
stringTT 
templatePathTT #
=TT$ %
PathTT& *
.TT* +
CombineTT+ 2
(TT2 3

serverPathTT3 =
,TT= >
$strTT? q
)TTq r
;TTr s
bodyMessageFormatUU !
=UU" #
FileUU$ (
.UU( )
ReadAllTextUU) 4
(UU4 5
templatePathUU5 A
)UUA B
;UUB C
}VV 
catchVV 
(VV !
FileNotFoundExceptionVV (!
fileNotFoundExceptionVV) >
)VV> ?
{WW 
loggerXX 
.XX 
LogErrorXX 
(XX  !
fileNotFoundExceptionXX  5
)XX5 6
;XX6 7
bodyMessageFormatYY !
=YY" #
$strYY$ =
;YY= >
}ZZ 
return[[ 
bodyMessageFormat[[ $
;[[$ %
}\\ 	
public^^ 
bool^^ "
VerifyCodeVerification^^ *
(^^* +
UserVerificator^^+ :
verificator^^; F
)^^F G
{__ 	
LoggerManager`` 
logger``  
=``! "
new``# &
LoggerManager``' 4
(``4 5
this``5 9
.``9 :
GetType``: A
(``A B
)``B C
)``C D
;``D E
boolaa 
verificationResultaa #
=aa$ %
falseaa& +
;aa+ ,
trybb 
{cc 
stringdd 
codeToComparedd $
=dd% &4
(codeVerificationAccesAccountRegistrationdd' O
[ddO P
verificatorddP [
.dd[ \
emaildd\ a
]dda b
;ddb c
ifee 
(ee 
codeToCompareee !
==ee" $
verificatoree% 0
.ee0 1
codeee1 5
)ee5 6
{ff 
verificationResultgg &
=gg' (
truegg) -
;gg- .4
(codeVerificationAccesAccountRegistrationhh <
.hh< =
Removehh= C
(hhC D
codeToComparehhD Q
)hhQ R
;hhR S
}ii 
}jj 
catchjj 
(jj  
KeyNotFoundExceptionjj ' 
keyNotFoundExceptionjj( <
)jj< =
{jj= >
verificationResultkk "
=kk# $
falsekk% *
;kk* +
loggerll 
.ll 
LogWarnll 
(ll  
keyNotFoundExceptionll 3
)ll3 4
;ll4 5
}mm 
returnnn 
verificationResultnn %
;nn% &
}oo 	
publicqq 
stringqq #
GenerateVerificatonCodeqq -
(qq- .
stringqq. 4
emailqq5 :
)qq: ;
{rr 	
ifss 
(ss 4
(codeVerificationAccesAccountRegistrationss 8
.ss8 9
ContainsKeyss9 D
(ssD E
emailssE J
)ssJ K
)ssK L
{tt 4
(codeVerificationAccesAccountRegistrationuu 8
.uu8 9
Removeuu9 ?
(uu? @
emailuu@ E
)uuE F
;uuF G
}vv 
Randomww 
randomww 
=ww 
newww 
Randomww  &
(ww& '
)ww' (
;ww( )
intxx 
codeGeneratedxx 
=xx 
randomxx  &
.xx& '
Nextxx' +
(xx+ ,
$numxx, 2
,xx2 3
$numxx4 :
)xx: ;
;xx; <
stringyy 
stringCodeGeneratedyy &
=yy' (
codeGeneratedyy) 6
.yy6 7
ToStringyy7 ?
(yy? @
)yy@ A
;yyA B4
(codeVerificationAccesAccountRegistrationzz 4
.zz4 5
Addzz5 8
(zz8 9
emailzz9 >
,zz> ?
stringCodeGeneratedzz@ S
)zzS T
;zzT U
return{{ 
stringCodeGenerated{{ &
;{{& '
}|| 	
}~~ 
} κ;
oC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\EmailInvitationService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
public 

partial 
class 
HiveGameService (
:) *#
IEmailInvitationManager+ B
{ 
public 
int 
SendEmailInvitation &
(& '
UserVerificator' 6
verificator7 B
)B C
{ 	
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
int 
resultSendedEmail !
=" #
	Constants$ -
.- .
ERROR_OPERATION. =
;= >
string %
templateInvitationMessage ,
=- .'
BodyMessageInvitationFormat/ J
(J K
)K L
;L M
string 
emailSender 
=   
ConfigurationManager! 5
.5 6
AppSettings6 A
[A B
$strB O
]O P
;P Q
string 
password 
=  
ConfigurationManager 2
.2 3
AppSettings3 >
[> ?
$str? N
]N O
;O P
string 

smtpServer 
=  
ConfigurationManager  4
.4 5
AppSettings5 @
[@ A
$strA M
]M N
;N O
int 
port 
= 
int 
. 
Parse  
(  ! 
ConfigurationManager! 5
.5 6
AppSettings6 A
[A B
$strB L
]L M
)M N
;N O
if 
( %
templateInvitationMessage )
!=* ,
$str- F
)F G
{ 
try   
{!! 
MailMessage"" 
messageToSend""  -
="". /
new""0 3
MailMessage""4 ?
(""? @
)""@ A
;""A B
messageToSend## !
.##! "
Subject##" )
=##* +
$str##, H
;##H I
messageToSend$$ !
.$$! "
From$$" &
=$$' (
new$$) ,
MailAddress$$- 8
($$8 9
emailSender$$9 D
)$$D E
;$$E F
messageToSend%% !
.%%! "
To%%" $
.%%$ %
Add%%% (
(%%( )
verificator%%) 4
.%%4 5
email%%5 :
)%%: ;
;%%; <
messageToSend&& !
.&&! "
Body&&" &
=&&' (%
templateInvitationMessage&&) B
.&&B C
Replace&&C J
(&&J K
$str&&K S
,&&S T
verificator&&U `
.&&` a
code&&a e
)&&e f
;&&f g
messageToSend'' !
.''! "

IsBodyHtml''" ,
=''- .
true''/ 3
;''3 4
var(( 

smtpClient(( "
=((# $
new((% (

SmtpClient(() 3
(((3 4

smtpServer((4 >
)((> ?
{)) 
Port** 
=** 
port** #
,**# $
Credentials++ #
=++$ %
new++& )
NetworkCredential++* ;
(++; <
emailSender++< G
,++G H
password++I Q
)++Q R
,++R S
	EnableSsl,, !
=,," #
true,,$ (
}-- 
;-- 

smtpClient.. 
... 
Send.. #
(..# $
messageToSend..$ 1
)..1 2
;..2 3
resultSendedEmail// %
=//& '
	Constants//( 1
.//1 2
SUCCES_OPERATION//2 B
;//B C
}00 
catch11 
(11 !
FileNotFoundException11 ,!
fileNotFoundException11- B
)11B C
{22 
logger33 
.33 
LogError33 #
(33# $!
fileNotFoundException33$ 9
)339 :
;33: ;
}44 
catch55 
(55 (
SmtpFailedRecipientException55 3(
smtpFailedRecipientException554 P
)55P Q
{66 
logger77 
.77 
LogError77 #
(77# $(
smtpFailedRecipientException77$ @
)77@ A
;77A B
}88 
catch99 
(99 
SmtpException99 $
smtpException99% 2
)992 3
{:: 
logger;; 
.;; 
LogError;; #
(;;# $
smtpException;;$ 1
);;1 2
;;;2 3
}<< 
catch== 
(== 
FormatException== &
formatException==' 6
)==6 7
{>> 
logger?? 
.?? 
LogError?? #
(??# $
formatException??$ 3
)??3 4
;??4 5
}@@ 
catchAA 
(AA %
InvalidOperationExceptionAA 0%
invalidOperationExceptionAA1 J
)AAJ K
{BB 
loggerCC 
.CC 
LogErrorCC #
(CC# $%
invalidOperationExceptionCC$ =
)CC= >
;CC> ?
}DD 
}EE 
returnFF 
resultSendedEmailFF $
;FF$ %
}GG 	
publicII 
stringII '
BodyMessageInvitationFormatII 1
(II1 2
)II2 3
{JJ 	
LoggerManagerKK 
loggerKK  
=KK! "
newKK# &
LoggerManagerKK' 4
(KK4 5
thisKK5 9
.KK9 :
GetTypeKK: A
(KKA B
)KKB C
)KKC D
;KKD E
stringLL 
bodyMessageFormatLL $
;LL$ %
tryMM 
{NN 
stringOO 
baseDirectoryOO $
=OO% &
	AppDomainOO' 0
.OO0 1
CurrentDomainOO1 >
.OO> ?
BaseDirectoryOO? L
;OOL M
stringPP 

serverPathPP !
=PP" #
PathPP$ (
.PP( )
GetFullPathPP) 4
(PP4 5
PathPP5 9
.PP9 :
CombinePP: A
(PPA B
baseDirectoryPPB O
,PPO P
$strPPQ \
)PP\ ]
)PP] ^
;PP^ _
stringQQ 
templatePathQQ #
=QQ$ %
PathQQ& *
.QQ* +
CombineQQ+ 2
(QQ2 3

serverPathQQ3 =
,QQ= >
$strQQ? o
)QQo p
;QQp q
bodyMessageFormatRR !
=RR" #
FileRR$ (
.RR( )
ReadAllTextRR) 4
(RR4 5
templatePathRR5 A
)RRA B
;RRB C
}SS 
catchSS 
(SS &
DirectoryNotFoundExceptionSS -&
directoryNotFoundExceptionSS. H
)SSH I
{TT 
loggerUU 
.UU 
LogErrorUU 
(UU  &
directoryNotFoundExceptionUU  :
)UU: ;
;UU; <
bodyMessageFormatVV !
=VV" #
$strVV$ =
;VV= >
}WW 
catchXX 
(XX !
FileNotFoundExceptionXX '!
fileNotFoundExceptionXX( =
)XX= >
{YY 
loggerZZ 
.ZZ 
LogErrorZZ 
(ZZ  !
fileNotFoundExceptionZZ  5
)ZZ5 6
;ZZ6 7
bodyMessageFormat[[ !
=[[" #
$str[[$ =
;[[= >
}\\ 
return]] 
bodyMessageFormat]] $
;]]$ %
}^^ 	
}`` 
}aa »H
dC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\ChatService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
[ 
ServiceBehavior 
( 
ConcurrencyMode $
=% &
ConcurrencyMode' 6
.6 7
	Reentrant7 @
)@ A
]A B
public 

partial 
class 
HiveGameService (
:) *
IChatManager+ 7
{ 
private  
IChatManagerCallback $
chatManagerCallback% 8
;8 9
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2 
IChatManagerCallback3 G
>G H
chatCallBacksI V
=W X
newY \

Dictionary] g
<g h
stringh n
,n o!
IChatManagerCallback	p „
>
„ …
(
… †
)
† ‡
;
‡ 
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
List3 7
<7 8
Message8 ?
>? @
>@ A
messagesFromLobbyB S
=T U
newV Y

DictionaryZ d
<d e
stringe k
,k l
Listm q
<q r
Messager y
>y z
>z {
({ |
)| }
;} ~
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
List3 7
<7 8
Profile8 ?
>? @
>@ A
usersByLobbyB N
=O P
newQ T

DictionaryU _
<_ `
string` f
,f g
Listh l
<l m
Profilem t
>t u
>u v
(v w
)w x
;x y
public 
void 
ConnectToChatLobby &
(& '
Profile' .
user/ 3
,3 4
string5 ;
code< @
)@ A
{ 	
HostBehaviorManager 
.  !
ChangeModeToReentrant  5
(5 6
)6 7
;7 8
chatManagerCallback 
=  !
OperationContext" 2
.2 3
Current3 :
.: ;
GetCallbackChannel; M
<M N 
IChatManagerCallbackN b
>b c
(c d
)d e
;e f
chatCallBacks 
. 
Add 
( 
user "
." #
username# +
,+ ,
chatManagerCallback- @
)@ A
;A B
if 
( 
! 
usersByLobby 
. 
ContainsKey )
() *
code* .
). /
)/ 0
{ 
usersByLobby 
[ 
code !
]! "
=# $
new% (
List) -
<- .
Profile. 5
>5 6
(6 7
)7 8
;8 9
} 
usersByLobby 
[ 
code 
] 
. 
Add "
(" #
user# '
)' (
;( )&
showNewMessageConversation   &
(  & '
code  ' +
)  + ,
;  , -
}!! 	
public## 
void## 
SendMessages##  
(##  !
Message##! (
message##) 0
,##0 1
string##2 8
code##9 =
)##= >
{$$ 	
HostBehaviorManager%% 
.%%  !
ChangeModeToReentrant%%  5
(%%5 6
)%%6 7
;%%7 8
if&& 
(&& 
!&& 
messagesFromLobby&& "
.&&" #
ContainsKey&&# .
(&&. /
code&&/ 3
)&&3 4
)&&4 5
{'' 
messagesFromLobby(( !
[((! "
code((" &
]((& '
=((( )
new((* -
List((. 2
<((2 3
Message((3 :
>((: ;
(((; <
)((< =
;((= >
})) 
messagesFromLobby** 
[** 
code** "
]**" #
.**# $
Add**$ '
(**' (
message**( /
)**/ 0
;**0 1&
showNewMessageConversation++ &
(++& '
code++' +
)+++ ,
;++, -
},, 	
public.. 
void.. &
showNewMessageConversation.. .
(... /
string../ 5
code..6 :
)..: ;
{// 	
LoggerManager00 
logger00  
=00! "
new00# &
LoggerManager00' 4
(004 5
this005 9
.009 :
GetType00: A
(00A B
)00B C
)00C D
;00D E
List11 
<11 
Profile11 
>11 
	usersList11 #
=11$ %
usersByLobby11& 2
[112 3
code113 7
]117 8
;118 9
for22 
(22 
int22 

usersIndex22 
=22  
$num22! "
;22" #

usersIndex22$ .
<22/ 0
	usersList221 :
.22: ;
Count22; @
;22@ A

usersIndex22B L
++22L N
)22N O
{33 
if44 
(44 
chatCallBacks44 !
.44! "
ContainsKey44" -
(44- .
	usersList44. 7
[447 8

usersIndex448 B
]44B C
.44C D
username44D L
)44L M
)44M N
{55 
try66 
{77 
chatCallBacks88 %
[88% &
	usersList88& /
[88/ 0

usersIndex880 :
]88: ;
.88; <
username88< D
]88D E
.88E F
ReceiveMessage88F T
(88T U-
!ObtainMessagesFromAnSpecificLobby88U v
(88v w
code88w {
)88{ |
)88| }
;88} ~
}99 
catch:: 
(:: "
CommunicationException:: 0"
communicationException::1 G
)::G H
{;; 
logger<< 
.<< 
LogError<< '
(<<' ("
communicationException<<( >
)<<> ?
;<<? @
}== 
catch== 
(== 
TimeoutException== +
timeOutException==, <
)==< =
{>> 
logger?? 
.?? 
LogError?? '
(??' (
timeOutException??( 8
)??8 9
;??9 :
}@@ 
}AA 
}BB 
}CC 	
publicEE 
ListEE 
<EE 
MessageEE 
>EE -
!ObtainMessagesFromAnSpecificLobbyEE >
(EE> ?
stringEE? E
codeEEF J
)EEJ K
{FF 	
ifGG 
(GG 
!GG 
messagesFromLobbyGG "
.GG" #
ContainsKeyGG# .
(GG. /
codeGG/ 3
)GG3 4
)GG4 5
{HH 
ListII 
<II 
MessageII 
>II 
messagesII &
=II' (
newII) ,
ListII- 1
<II1 2
MessageII2 9
>II9 :
(II: ;
)II; <
;II< =
messagesFromLobbyJJ !
.JJ! "
AddJJ" %
(JJ% &
codeJJ& *
,JJ* +
messagesJJ, 4
)JJ4 5
;JJ5 6
}KK 
returnLL 
messagesFromLobbyLL $
[LL$ %
codeLL% )
]LL) *
;LL* +
}MM 	
publicOO 
intOO #
DisconectPlayerFromChatOO *
(OO* +
ProfileOO+ 2
userOO3 7
,OO7 8
stringOO9 ?
codeOO@ D
)OOD E
{PP 	
intQQ 
disconectionResultQQ "
=QQ# $
	ConstantsQQ% .
.QQ. /
ERROR_OPERATIONQQ/ >
;QQ> ?
ifRR 
(RR 
chatCallBacksRR 
.RR 
ContainsKeyRR )
(RR) *
userRR* .
.RR. /
usernameRR/ 7
)RR7 8
)RR8 9
{SS 
chatCallBacksUU 
.UU 
RemoveUU $
(UU$ %
userUU% )
.UU) *
usernameUU* 2
)UU2 3
;UU3 4
ifVV 
(VV 
usersByLobbyVV  
.VV  !
ContainsKeyVV! ,
(VV, -
codeVV- 1
)VV1 2
)VV2 3
{WW 
usersByLobbyXX  
[XX  !
codeXX! %
]XX% &
.XX& '
	RemoveAllXX' 0
(XX0 1
userToDisconnectXX1 A
=>XXB D
userToDisconnectXXE U
.XXU V
usernameXXV ^
==XX_ a
userXXb f
.XXf g
usernameXXg o
)XXo p
;XXp q
}YY 
disconectionResultZZ "
=ZZ# $
	ConstantsZZ% .
.ZZ. /
SUCCES_OPERATIONZZ/ ?
;ZZ? @
}[[ 
return\\ 
disconectionResult\\ %
;\\% &
}]] 	
}^^ 
}__ ’
gC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Properties\AssemblyInfo.cs
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
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *‡
mC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Contracts\IUserSessionManager.cs
	namespace		 	
HiveGameService		
 
.		 
	Contracts		 #
{

 
[ 
ServiceContract 
] 
public 

	interface 
IUserSessionManager (
{ 
[ 	
OperationContract	 
] 
int 
ConnectToGame 
( 
UserSession %
user& *
)* +
;+ ,
[ 	
OperationContract	 
] 
int 

Disconnect 
( 
UserSession "
user# '
,' (
bool) -
	isInMatch. 7
)7 8
;8 9
[ 	
OperationContract	 
] 
bool 
VerifyConnectivity 
(  
UserSession  +
user, 0
)0 1
;1 2
} 
[ 
DataContract 
] 
public 

class 
UserSession 
{ 
[ 	

DataMember	 
] 
public 
string 
username 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
int 
	idAccount 
{ 
get "
;" #
set$ '
;' (
}) *
[!! 	

DataMember!!	 
]!! 
public"" 
string"" 
	codeMatch"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
public$$ 
override$$ 
bool$$ 
Equals$$ #
($$# $
object$$$ *
obj$$+ .
)$$. /
{%% 	
bool&& 
comparation&& 
=&& 
false&& $
;&&$ %
if'' 
('' 
obj'' 
is'' 
UserSession'' !
other''" '
)''' (
{(( 
comparation)) 
=)) 
username)) &
.))& '
Equals))' -
())- .
other)). 3
.))3 4
username))4 <
)))< =
&&))> @
	idAccount** 
.** 
Equals** $
(**$ %
other**% *
.*** +
	idAccount**+ 4
)**4 5
&&**6 8
(++ 
	codeMatch++ 
?++ 
.++  
Equals++  &
(++& '
other++' ,
.++, -
	codeMatch++- 6
)++6 7
??++8 :
other++; @
.++@ A
	codeMatch++A J
==++K M
null++N R
)++R S
;++S T
},, 
return-- 
comparation-- 
;-- 
}.. 	
public00 
override00 
int00 
GetHashCode00 '
(00' (
)00( )
{11 	
int22 
hashUsername22 
=22 
username22 '
?22' (
.22( )
GetHashCode22) 4
(224 5
)225 6
??227 9
$num22: ;
;22; <
int33 
hashIdAccount33 
=33 
	idAccount33  )
.33) *
GetHashCode33* 5
(335 6
)336 7
;337 8
int44 
hashCodeMatch44 
=44 
	codeMatch44  )
?44) *
.44* +
GetHashCode44+ 6
(446 7
)447 8
??449 ;
$num44< =
;44= >
return55 
hashUsername55 
^55  !
hashIdAccount55" /
^550 1
hashCodeMatch552 ?
;55? @
}66 	
}77 
}88 ”N
fC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Contracts\IUserManager.cs
	namespace 	
HiveGameService
 
. 
	Contracts #
{ 
[ 
ServiceContract 
] 
public 

	interface 
IUserManager !
{		 
[ 	
OperationContract	 
] 
int 
AddUser 
( 
Profile 
profile #
)# $
;$ %
[ 	
OperationContract	 
] 
Profile $
GetUserProfileByUsername (
(( )
string) /
username0 8
)8 9
;9 :
[ 	
OperationContract	 
] 
Profile 
GetUserProfile 
( 
string %
username& .
,. /
string0 6
password7 ?
)? @
;@ A
[ 	
OperationContract	 
] 
int "
UpdateLoginCredentials "
(" #
AccessAccount# 0
oldAccessProfile1 A
,A B
AccessAccountC P
newAccessProfileQ a
)a b
;b c
[ 	
OperationContract	 
] 
int $
UpdatePlusUserReputation $
($ %
string% +
username, 4
,4 5
int6 9

reputation: D
)D E
;E F
[ 	
OperationContract	 
] 
int %
UpdateMinusUserReputation %
(% &
string& ,
username- 5
,5 6
int7 :

reputation; E
)E F
;F G
[ 	
OperationContract	 
] 
int 
UpdateProfile 
( 
Profile !
profile" )
,) *
string+ 1
email2 7
)7 8
;8 9
[   	
OperationContract  	 
]   
int!! &
VerifyExistingAccesAccount!! &
(!!& '
string!!' -
email!!. 3
,!!3 4
string!!5 ;
username!!< D
)!!D E
;!!E F
[## 	
OperationContract##	 
]## 
int$$ 
VerifyCredentials$$ 
($$ 
string$$ $
username$$% -
,$$- .
string$$/ 5
email$$6 ;
)$$; <
;$$< =
[&& 	
OperationContract&&	 
]&& 
int'' %
VerifyPasswordCredentials'' %
(''% &
string''& ,
email''- 2
,''2 3
string''4 :
password''; C
)''C D
;''D E
})) 
[++ 
DataContract++ 
]++ 
public,, 

class,, 
Profile,, 
:,, 
AccessAccount,, (
{-- 
[// 	

DataMember//	 
]// 
public00 
int00 
	idProfile00 
{00 
get00  #
;00# $
set00% (
;00( )
}00* +
[11 	

DataMember11	 
]11 
public22 
DateTime22 
createdDate22 #
{22$ %
get22' *
;22* +
set22, /
;22/ 0
}221 2
[33 	

DataMember33	 
]33 
public44 
string44 
	imagePath44 
{44  !
get44# &
;44& '
set44( +
;44+ ,
}44- .
[55 	

DataMember55	 
]55 
public66 
string66 
nickname66 
{66  
get66" %
;66% &
set66' *
;66* +
}66, -
[77 	

DataMember77	 
]77 
public88 
int88 
	idAccount88 
{88 
get88  #
;88# $
set88% (
;88( )
}88* +
[99 	

DataMember99	 
]99 
public:: 
string:: 
description:: !
{::" #
get::$ '
;::' (
set::) ,
;::, -
}::. /
public<< 
override<< 
bool<< 
Equals<< #
(<<# $
object<<$ *
obj<<+ .
)<<. /
{== 	
bool>> 
comparation>> 
=>> 
false>> $
;>>$ %
if?? 
(?? 
obj?? 
is?? 
Profile?? 
other?? $
)??$ %
{@@ 
comparationAA 
=AA 
(AA 
usernameAA '
?AA' (
.AA( )
EqualsAA) /
(AA/ 0
otherAA0 5
.AA5 6
usernameAA6 >
)AA> ?
??AA@ B
otherAAC H
.AAH I
usernameAAI Q
==AAR T
nullAAU Y
)AAY Z
&&AA[ ]
(BB 
nicknameBB 
?BB 
.BB 
EqualsBB %
(BB% &
otherBB& +
.BB+ ,
nicknameBB, 4
)BB4 5
??BB6 8
otherBB9 >
.BB> ?
nicknameBB? G
==BBH J
nullBBK O
)BBO P
&&BBQ S
idAccesAccountCC "
==CC# %
otherCC& +
.CC+ ,
idAccesAccountCC, :
&&CC; =
	idProfileCC> G
==CCH J
otherCCK P
.CCP Q
	idProfileCCQ Z
&&CC[ ]
	idAccountDD 
==DD  
otherDD! &
.DD& '
	idAccountDD' 0
&&DD1 3
(DD4 5
descriptionDD5 @
?DD@ A
.DDA B
EqualsDDB H
(DDH I
otherDDI N
.DDN O
descriptionDDO Z
)DDZ [
??DD\ ^
otherDD_ d
.DDd e
descriptionDDe p
==DDq s
nullDDt x
)DDx y
&&DDy {
(EE 
emailEE 
?EE 
.EE 
EqualsEE "
(EE" #
otherEE# (
.EE( )
emailEE) .
)EE. /
??EE/ 1
otherEE1 6
.EE6 7
emailEE7 <
==EE< >
nullEE> B
)EEB C
&&EED F
(EEG H
	imagePathEEH Q
?EEQ R
.EER S
EqualsEES Y
(EEY Z
otherEEZ _
.EE_ `
	imagePathEE` i
)EEi j
??EEk m
otherEEn s
.EEs t
	imagePathEEt }
==	EE~ €
null
EE …
)
EE… †
;
EE† ‡
}FF 
returnGG 
comparationGG 
;GG 
}HH 	
publicJJ 
overrideJJ 
intJJ 
GetHashCodeJJ '
(JJ' (
)JJ( )
{KK 	
intLL 
hashUsernameLL 
=LL 
usernameLL '
?LL' (
.LL( )
GetHashCodeLL) 4
(LL4 5
)LL5 6
??LL7 9
$numLL: ;
;LL; <
intMM 
hashNicknameMM 
=MM 
nicknameMM '
?MM' (
.MM( )
GetHashCodeMM) 4
(MM4 5
)MM5 6
??MM7 9
$numMM: ;
;MM; <
intNN 
hashIdProfileNN 
=NN 
	idProfileNN  )
.NN) *
GetHashCodeNN* 5
(NN5 6
)NN6 7
;NN7 8
intOO 
hashIdAccountOO 
=OO 
	idAccountOO  )
.OO) *
GetHashCodeOO* 5
(OO5 6
)OO6 7
;OO7 8
intPP 
hashIdAccesAccountPP "
=PP# $
idAccesAccountPP% 3
.PP3 4
GetHashCodePP4 ?
(PP? @
)PP@ A
;PPA B
intQQ 
hashDescriptionQQ 
=QQ  !
descriptionQQ" -
?QQ- .
.QQ. /
GetHashCodeQQ/ :
(QQ: ;
)QQ; <
??QQ= ?
$numQQ@ A
;QQA B
intRR 
	hashEmailRR 
=RR 
emailRR !
?RR! "
.RR" #
GetHashCodeRR# .
(RR. /
)RR/ 0
??RR1 3
$numRR4 5
;RR5 6
intSS 
hashImagePathSS 
=SS 
	imagePathSS  )
?SS) *
.SS* +
GetHashCodeSS+ 6
(SS6 7
)SS7 8
??SS9 ;
$numSS< =
;SS= >
returnTT 
hashUsernameTT 
^TT  !
hashNicknameTT" .
^TT/ 0
hashIdProfileTT1 >
^TT? @
hashIdAccountTTA N
^TTO P
hashIdAccesAccountTTQ c
^TTd e
hashDescriptionTTf u
^TTv w
	hashEmailUU 
^UU 
hashImagePathUU )
;UU) *
}VV 	
}XX 
[ZZ 
DataContractZZ 
]ZZ 
public[[ 

class[[ 
AccessAccount[[ 
{\\ 
[^^ 	

DataMember^^	 
]^^ 
public__ 
int__ 
idAccesAccount__ !
{__" #
get__% (
;__( )
set__* -
;__- .
}__/ 0
[`` 	

DataMember``	 
]`` 
publicaa 
stringaa 
usernameaa 
{aa  
getaa" %
;aa% &
setaa' *
;aa* +
}aa, -
[bb 	

DataMemberbb	 
]bb 
publiccc 
stringcc 
passwordcc 
{cc  
getcc" %
;cc% &
setcc' *
;cc* +
}cc, -
[dd 	

DataMemberdd	 
]dd 
publicee 
stringee 
emailee 
{ee 
getee "
;ee" #
setee$ '
;ee' (
}ee) *
[ff 	

DataMemberff	 
]ff 
publicgg 
intgg 

reputationgg 
{gg 
getgg! $
;gg$ %
setgg& )
;gg) *
}gg+ ,
}ii 
}jj λ
gC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Contracts\ILobbyManager.cs
	namespace		 	
HiveGameService		
 
.		 
	Contracts		 #
{

 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /!
ILobbyManagerCallback/ D
)D E
)E F
]F G
	interface 
ILobbyManager 
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ConnectToLobby 
( 
UserSession '
lobbyPlayer( 3
,3 4
string5 ;
	codeLobby< E
)E F
;F G
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void  
LeavePlayerFromLobby !
(! "
UserSession" -
lobbyPlayer. 9
,9 :
string; A
	codeLobbyB K
,K L
boolM Q
isKickedR Z
)Z [
;[ \
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

StartMatch 
( 
string 
code #
)# $
;$ %
[ 	
OperationContract	 
] 
int #
VerifyCreatorOfTheMatch #
(# $
	GameMatch$ -
match. 3
)3 4
;4 5
} 
[ 
ServiceContract 
] 
public 

	interface !
ILobbyManagerCallback *
{ 
[ 	
OperationContract	 
] 
void !
ReceivePlayersToLobby "
(" #
List# '
<' (
UserSession( 3
>3 4
user5 9
)9 :
;: ;
[!! 	
OperationContract!!	 
]!! 
void"" %
ReceiveKickedNotification"" &
(""& '
)""' (
;""( )
[$$ 	
OperationContract$$	 
]$$ 
void%% )
ReceiveStartMatchNotification%% *
(%%* +
)%%+ ,
;%%, -
}&& 
[)) 
DataContract)) 
])) 
public** 

class** 
	GameMatch** 
{++ 
[,, 	

DataMember,,	 
],, 
public-- 
string-- 
code-- 
{-- 
get--  
;--  !
set--" %
;--% &
}--' (
[// 	

DataMember//	 
]// 
public00 
int00 
	idAccount00 
{00 
get00 "
;00" #
set00$ '
;00' (
}00) *
}11 
}22 «
nC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Contracts\IMatchCreatorManager.cs
	namespace		 	
HiveGameService		
 
.		 
	Contracts		 #
{

 
[ 
ServiceContract 
] 
public 

	interface  
IMatchCreatorManager )
{ 
[ 	
OperationContract	 
] 
int 
CreateMatch 
( 
MatchCreator $
matchCreator% 1
)1 2
;2 3
[ 	
OperationContract	 
] 
int 
UpdateMatchState 
( 
MatchCreator )
matchCreator* 6
)6 7
;7 8
[ 	
OperationContract	 
] 
int %
VerifyExistingActiveMatch %
(% &
MatchCreator& 2
matchCreator3 ?
)? @
;@ A
[ 	
OperationContract	 
] 
bool 
VerifyIfLobbyIsFull  
(  !
string! '
	codeLobby( 1
)1 2
;2 3
[ 	
OperationContract	 
] 
bool 
VerifyExistingCode 
(  
string  &
code' +
)+ ,
;, -
[ 	
OperationContract	 
] 
string 
GenerateLobbyCode  
(  !
string! '
email( -
)- .
;. /
}   
["" 
DataContract"" 
]"" 
public## 

class## 
MatchCreator## 
{$$ 
[%% 	

DataMember%%	 
]%% 
public&& 
int&& 
idCreatorAccount&& #
{&&$ %
get&&' *
;&&* +
set&&, /
;&&/ 0
}&&1 2
[(( 	

DataMember((	 
](( 
public)) 
string)) 
	codeMatch)) 
{))  !
get))" %
;))% &
set))' *
;))* +
})), -
[++ 	

DataMember++	 
]++ 
public,, 
string,, 

stateMatch,,  
{,,! "
get,,# &
;,,& '
set,,( +
;,,+ ,
},,- .
[.. 	

DataMember..	 
].. 
public// 
DateTime// 
	dateMatch// !
{//" #
get//$ '
;//' (
set//) ,
;//, -
}//. /
}11 
}33 ό
mC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Contracts\ILeaderBoardManager.cs
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
	Contracts

 #
{ 
[ 
ServiceContract 
] 
public 

	interface 
ILeaderBoardManager (
{ 
[ 	
OperationContract	 
] 
int 1
%UpdateWinnerResultToPlayerLeaderBoard 1
(1 2
int2 5
	idAccounr6 ?
)? @
;@ A
[ 	
OperationContract	 
] 
int 0
$UpdateLoserResultToPlayerLeaderBoard 0
(0 1
int1 4
	idAccount5 >
)> ?
;? @
[ 	
OperationContract	 
] 
int /
#UpdateDrawResultToPlayerLeaderBoard /
(/ 0
int0 3
	idAccount4 =
)= >
;> ?
[ 	
OperationContract	 
] 
LeaderBoardPlayer "
GetPersonalLeaderBoard 0
(0 1
int1 4
	idAccount5 >
)> ?
;? @
[ 	
OperationContract	 
] 
List 
< 
LeaderBoardPlayer 
> %
GetAllPlayersLeaderboards  9
(9 :
): ;
;; <
} 
[ 
DataContract 
] 
public 

class 
LeaderBoardPlayer "
{ 
[ 	

DataMember	 
] 
public   
int   
totalMatches   
;    
[!! 	

DataMember!!	 
]!! 
public"" 
int"" 
totalDrawMatches"" #
;""# $
[## 	

DataMember##	 
]## 
public$$ 
int$$ 
totalWonMatches$$ "
;$$" #
[%% 	

DataMember%%	 
]%% 
public&& 
int&& 
totalLostMatches&& #
;&&# $
['' 	

DataMember''	 
]'' 
public(( 
string(( 
username(( 
;(( 
[)) 	

DataMember))	 
])) 
public** 
int** 
	idAccount** 
;** 
[++ 	

DataMember++	 
]++ 
public,, 
string,, 
imageProfile,, "
;,," #
}-- 
}.. ©4
fC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Contracts\IGameManager.cs
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
	Contracts

 #
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. / 
IGameManagerCallback/ C
)C D
)D E
]E F
	interface 
IGameManager 
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ConnectToGameBoard 
(  
UserSession  +
session, 3
,3 4
string5 ;
	codeMatch< E
)E F
;F G
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
FinishOfTheMatch 
( 
string $
	codeMatch% .
,. /
string0 6
winner7 =
)= >
;> ?
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	MovePiece 
( 
GamePice 
piece  %
,% &
UserSession' 2
session3 :
,: ;
string< B
	codeMatchC L
)L M
;M N
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SetTurns 
( 
UserSession !
session" )
,) *
string+ 1
	codeMatch2 ;
); <
;< =
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
LeaveTheGame 
( 
UserSession %
session& -
,- .
string/ 5
	codeMatch6 ?
)? @
;@ A
[ 	
OperationContract	 
] 
int 
LeaveMatchFinished 
( 
string %
	codeMatch& /
,/ 0
UserSession1 <
session= D
)D E
;E F
}   
["" 
ServiceContract"" 
]"" 
public## 

	interface##  
IGameManagerCallback## )
{$$ 
[%% 	
OperationContract%%	 
]%% 
void&& !
ChargePlayerGameBoard&& "
(&&" #

PlayerSide&&# -
side&&. 2
)&&2 3
;&&3 4
[(( 	
OperationContract((	 
](( 
void)) 
ReceivePieceMoved)) 
()) 
GamePice)) '
piece))( -
)))- .
;)). /
[++ 	
OperationContract++	 
]++ 
void,, 
ReceiveTurns,, 
(,, 
bool,, 
isTurn,, %
),,% &
;,,& '
[.. 	
OperationContract..	 
].. 
void// !
ReceivePlayersToMatch// "
(//" #
List//# '
<//' (
UserSession//( 3
>//3 4
userSession//5 @
)//@ A
;//A B
[11 	
OperationContract11	 
]11 
void22 ,
 ReceivePlayerHasLeftNotification22 -
(22- .
bool22. 2
doPlayerLeftTheGame223 F
)22F G
;22G H
[44 	
OperationContract44	 
]44 
void55 #
ReceiveFinalMatchResult55 $
(55$ %
string55% +
winner55, 2
)552 3
;553 4
}66 
[88 
DataContract88 
]88 
public99 

class99 

PlayerSide99 
{:: 
[;; 	

DataMember;;	 
];; 
public<< 
string<< 
username<< 
{<<  
get<<" %
;<<% &
set<<' *
;<<* +
}<<, -
[>> 	

DataMember>>	 
]>> 
public?? 
bool?? 
	playerOne?? 
{?? 
get??  #
;??# $
set??% (
;??( )
}??* +
[AA 	

DataMemberAA	 
]AA 
publicBB 
boolBB 
	playerTwoBB 
{BB 
getBB  #
;BB# $
setBB% (
;BB( )
}BB* +
}DD 
[FF 
DataContractFF 
]FF 
publicGG 

classGG 
GamePiceGG 
{HH 
[II 	

DataMemberII	 
]II 
publicJJ 
PieceJJ 
pieceJJ 
{JJ 
getJJ  
;JJ  !
setJJ" %
;JJ% &
}JJ' (
[LL 	

DataMemberLL	 
]LL 
publicMM 
stringMM 
	imagePathMM 
{MM  !
getMM" %
;MM% &
setMM' *
;MM* +
}MM, -
[OO 	

DataMemberOO	 
]OO 
publicPP 
intPP 
numberOfPiecePP  
{PP! "
getPP$ '
;PP' (
setPP) ,
;PP, -
}PP. /
[RR 	

DataMemberRR	 
]RR 
publicSS 
PointSS 
positionSS 
{SS 
getSS! $
;SS$ %
setSS& )
;SS) *
}SS+ ,
[UU 	

DataMemberUU	 
]UU 
publicVV 
stringVV 

playerNameVV  
{VV! "
getVV$ '
;VV' (
setVV) ,
;VV, -
}VV. /
}WW 
[YY 
DataContractYY 
]YY 
publicZZ 

classZZ 
PieceZZ 
{[[ 
[\\ 	

DataMember\\	 
]\\ 
public]] 
string]] 
name]] 
{]] 
get]]  
;]]  !
set]]" %
;]]% &
}]]' (
[__ 	

DataMember__	 
]__ 
public`` 
string`` 

playerName``  
{``! "
get``# &
;``& '
set``( +
;``+ ,
}``- .
[bb 	

DataMemberbb	 
]bb 
publiccc 
Pointcc 
positioncc 
{cc 
getcc  #
;cc# $
setcc% (
;cc( )
}cc* +
}ee 
}ff Ϊ
iC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Contracts\IFriendsManager.cs
	namespace 	
HiveGameService
 
. 
	Contracts #
{		 
[

 
ServiceContract

 
(

 
CallbackContract

 %
=

& '
typeof

( .
(

. /#
IFriendsManagerCallback

/ F
)

F G
)

G H
]

H I
public 

	interface 
IFriendsManager $
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
GetFriendsList 
( 
UserSession '
user( ,
), -
;- .
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void !
JoinAsConnectedFriend "
(" #
UserSession# .
user/ 3
)3 4
;4 5
[ 	
OperationContract	 
] 
int '
DeleteUserAsConnectedFriend '
(' (
UserSession( 3
username4 <
)< =
;= >
} 
[ 
ServiceContract 
] 
public 

	interface #
IFriendsManagerCallback ,
{ 
[ 	
OperationContract	 
] 
void "
ObtainConnectedFriends #
(# $
List$ (
<( )
UserSession) 4
>4 5
connectedFriends6 F
)F G
;G H
} 
} ÿ
lC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Contracts\IFriendshipManager.cs
	namespace		 	
HiveGameService		
 
.		 
	Contracts		 #
{

 
[ 
ServiceContract 
] 
public 

	interface 
IFriendshipManager '
{ 
[ 	
OperationContract	 
] 
int 
DeleteFriend 
( 
Profile  
removingPlayer! /
,/ 0
Profile1 8
friendToRemove9 G
)G H
;H I
[ 	
OperationContract	 
] 
List 
< 
Profile 
> 
GetAllFriends #
(# $
Profile$ +
player, 2
)2 3
;3 4
[ 	
OperationContract	 
] 
Profile 
GetFriendByUsername #
(# $
Profile$ +
player, 2
,2 3
string4 :
username; C
)C D
;D E
} 
} φ
oC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Contracts\IFriendRequestManager.cs
	namespace		 	
HiveGameService		
 
.		 
	Contracts		 #
{

 
[ 
ServiceContract 
] 
public 

	interface !
IFriendRequestManager *
{ 
[ 	
OperationContract	 
] 
int 
CreateFriendRequest 
(  
Profile  '
	playerOne( 1
,1 2
Profile3 :
	playerTwo; D
)D E
;E F
[ 	
OperationContract	 
] 
List 
< 
Profile 
> 
GetFriendRequests '
(' (
Profile( /
player0 6
)6 7
;7 8
[ 	
OperationContract	 
] 
int 
AcceptFriendRequest 
(  
Profile  '
	playerOne( 1
,1 2
Profile3 :
	playerTwo; D
)D E
;E F
[ 	
OperationContract	 
] 
int  
DeclineFriendRequest  
(  !
Profile! (
	playerOne) 2
,2 3
Profile4 ;
	playerTwo< E
)E F
;F G
[ 	
OperationContract	 
] 
int )
VerifyFriendRequestRegistered )
() *
Profile* 1
	playerOne2 ;
,; <
Profile= D
	playerTwoE N
)N O
;O P
} 
[ 
DataContract 
] 
public 

class 

FriendShip 
{ 
[ 	

DataMember	 
] 
public   
int   
idFriendRequest   "
{  # $
get  & )
;  ) *
set  + .
;  . /
}  0 1
[!! 	

DataMember!!	 
]!! 
public"" 
int"" 
idPlayerOne"" 
{""  
get""" %
;""% &
set""' *
;""* +
}"", -
[## 	

DataMember##	 
]## 
public$$ 
int$$ 
idPlayerTwo$$ 
{$$  
get$$! $
;$$$ %
set$$& )
;$$) *
}$$+ ,
[%% 	

DataMember%%	 
]%% 
public&& 
string&& 
state&& 
{&& 
get&& !
;&&! "
set&&# &
;&&& '
}&&( )
}'' 
}(( 
sC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Contracts\IEmailVerificationManager.cs
	namespace		 	
HiveGameService		
 
.		 
	Contracts		 #
{

 
[ 
ServiceContract 
] 
public 

	interface %
IEmailVerificationManager .
{ 
[ 	
OperationContract	 
] 
int !
SendVerificationEmail !
(! "
string" (
emailToSend) 4
)4 5
;5 6
[ 	
OperationContract	 
] 
bool "
VerifyCodeVerification #
(# $
UserVerificator$ 3
userVerificator4 C
)C D
;D E
[ 	
OperationContract	 
] 
string #
GenerateVerificatonCode &
(& '
string' -
email. 3
)3 4
;4 5
} 
[ 
DataContract 
] 
public 

class 
UserVerificator  
{ 
[ 	

DataMember	 
] 
public 
string 
email 
; 
[ 	

DataMember	 
] 
public 
string 
code 
; 
}   
}!! ΰ
qC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Contracts\IEmailInvitationManager.cs
	namespace 	
HiveGameService
 
. 
	Contracts #
{		 
[

 
ServiceContract

 
]

 
public 

	interface #
IEmailInvitationManager ,
{ 
[ 	
OperationContract	 
] 
int 
SendEmailInvitation 
(  
UserVerificator  /
verificator0 ;
); <
;< =
} 
} £
fC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Contracts\IChatManager.cs
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
	Contracts

 #
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. / 
IChatManagerCallback/ C
)C D
)D E
]E F
public 

	interface 
IChatManager !
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ConnectToChatLobby 
(  
Profile  '
user( ,
,, -
string. 4
code5 9
)9 :
;: ;
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMessages 
( 
Message !
message" )
,) *
string+ 1
code2 6
)6 7
;7 8
[ 	
OperationContract	 
] 
int #
DisconectPlayerFromChat #
(# $
Profile$ +
user, 0
,0 1
string2 8
code9 =
)= >
;> ?
} 
[ 
ServiceContract 
] 
public 

	interface  
IChatManagerCallback )
{ 
[ 	
OperationContract	 
] 
void 
ReceiveMessage 
( 
List  
<  !
Message! (
>( )
messages* 2
)2 3
;3 4
} 
[   
DataContract   
]   
public!! 

class!! 
Message!! 
{"" 
[## 	

DataMember##	 
(## 

IsRequired## 
=##  
true##! %
)##% &
]##& '
public$$ 
string$$ 
username$$ 
{$$  
get$$! $
;$$$ %
set$$& )
;$$) *
}$$+ ,
[%% 	

DataMember%%	 
(%% 

IsRequired%% 
=%%  
true%%! %
)%%% &
]%%& '
public&& 
string&& 
text&& 
{&& 
get&&  
;&&  !
set&&" %
;&&% &
}&&' (
}'' 
}(( 