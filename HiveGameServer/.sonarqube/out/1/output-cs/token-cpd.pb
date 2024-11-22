π
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
} ¢
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
}!! √
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
}44 Œ
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
} à	
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
} Ï9
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
=$ %
	Constants& /
./ 0
ERROR_OPERATION0 ?
;? @
if 
( 
usersConnected 
. 
Any "
(" #
userToDisconnect# 3
=>4 6
userToDisconnect7 G
.G H
usernameH P
==Q S
userT X
.X Y
usernameY a
)a b
)b c
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
connectedFriendsListIndex	FFh Å
++
FFÅ É
)
FFÉ Ñ
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
ObtainFriendsList	LLu Ü
(
LLÜ á
connnectedFriends
LLá ò
[
LLò ô'
connectedFriendsListIndex
LLô ≤
]
LL≤ ≥
.
LL≥ ¥
	idAccount
LL¥ Ω
)
LLΩ æ
)
LLæ ø
;
LLø ¿
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
}YY óq
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
=::3 4
(::5 6
	Utilities::6 ?
.::? @
UserData::@ H
)::H I

operations::I S
.::S T#
GetUserDataFromDataBase::T k
(::k l
username::l t
,::t u
password::v ~
)::~ 
;	:: Ä
if;; 
(;; 
profileFromDataBase;; "
.;;" #
idAccessAccount;;# 2
!=;;2 4
	Constants;;4 =
.;;= >
ERROR_OPERATION;;> M
&&;;M O
profileFromDataBase;;P c
.;;c d
idAccessAccount;;d s
!=;;t v
	Constants	;;w Ä
.
;;Ä Å
ERROR_OPERATION
;;Å ê
)
;;ê ë
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
AccessAccountKK4 A
oldCredentialsKKB P
,KKP Q
	ContractsKKR [
.KK[ \
AccessAccountKK\ i
newCredentialsKKj x
)KKx y
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
=PP  !
oldCredentialsPP" 0
.PP0 1
idAccesAccountPP1 ?
,PP? @
passwordQQ 
=QQ 
oldCredentialsQQ )
.QQ) *
passwordQQ* 2
,QQ2 3
emailRR 
=RR 
oldCredentialsRR &
.RR& '
emailRR' ,
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
=VV  !
newCredentialsVV" 0
.VV0 1
idAccesAccountVV1 ?
,VV? @
passwordWW 
=WW 
newCredentialsWW )
.WW) *
passwordWW* 2
,WW2 3
emailXX 
=XX 
newCredentialsXX &
.XX& '
emailXX' ,
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
ÄÄ 	
UserOperation
ÅÅ 
	operation
ÅÅ #
=
ÅÅ$ %
new
ÅÅ& )
UserOperation
ÅÅ* 7
(
ÅÅ7 8
)
ÅÅ8 9
;
ÅÅ9 :
int
ÇÇ  
modificationResult
ÇÇ "
=
ÇÇ# $
	operation
ÇÇ% .
.
ÇÇ. /2
$UpdatePlusPlayerReputationToDataBase
ÇÇ/ S
(
ÇÇS T
username
ÇÇT \
,
ÇÇ\ ]

reputation
ÇÇ^ h
)
ÇÇh i
;
ÇÇi j
return
ÉÉ  
modificationResult
ÉÉ %
;
ÉÉ% &
}
ÑÑ 	
public
ÜÜ 
int
ÜÜ '
UpdateMinusUserReputation
ÜÜ ,
(
ÜÜ, -
string
ÜÜ- 3
username
ÜÜ4 <
,
ÜÜ< =
int
ÜÜ> A

reputation
ÜÜB L
)
ÜÜL M
{
áá 	
UserOperation
àà 
	operation
àà #
=
àà# $
new
àà% (
UserOperation
àà) 6
(
àà6 7
)
àà7 8
;
àà8 9
int
ââ  
modificationResult
ââ "
=
ââ# $
	operation
ââ% .
.
ââ. /3
%UpdateMinusPlayerReputationToDataBase
ââ/ T
(
ââT U
username
ââU ]
,
ââ] ^

reputation
ââ^ h
)
ââh i
;
ââi j
return
ää  
modificationResult
ää %
;
ää% &
}
ãã 	
}
åå 
}çç ª5
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
}\\ ”u
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
)	 Ä
;
Ä Å
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
ILobbyManagerCallback	} í
>
í ì
(
ì î
)
î ï
;
ï ñ
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
ÄÄ 
.
ÄÄ 
LogError
ÄÄ #
(
ÄÄ# $
timeoutException
ÄÄ$ 4
)
ÄÄ4 5
;
ÄÄ5 6
}
ÅÅ 
}
ÇÇ 
}
ÉÉ 	
public
ÖÖ 
int
ÖÖ %
VerifyCreatorOfTheMatch
ÖÖ *
(
ÖÖ* +
	GameMatch
ÖÖ+ 4
match
ÖÖ5 :
)
ÖÖ: ;
{
ÜÜ 	!
HostBehaviorManager
áá 
.
áá   
ChangeModeToSingle
áá  2
(
áá2 3
)
áá3 4
;
áá4 5
MatchOperation
àà 
matchOperation
àà )
=
àà* +
new
àà, /
MatchOperation
àà0 >
(
àà> ?
)
àà? @
;
àà@ A
Match
ââ 
matchToFind
ââ 
=
ââ 
new
ââ  #
Match
ââ$ )
(
ââ) *
)
ââ* +
{
ää 
FK_IdAccount
ãã 
=
ãã 
match
ãã $
.
ãã$ %
	idAccount
ãã% .
,
ãã. /
code
åå 
=
åå 
match
åå 
.
åå 
code
åå !
,
åå! "
}
çç 
;
çç 
int
éé  
verificationResult
éé "
=
éé# $
matchOperation
éé% 3
.
éé3 4 
VerifyMatchCreator
éé4 F
(
ééF G
matchToFind
ééG R
)
ééR S
;
ééS T
return
èè  
verificationResult
èè %
;
èè% &
}
êê 	
public
íí 
void
íí 

StartMatch
íí 
(
íí 
string
íí %
code
íí& *
)
íí* +
{
ìì 	!
HostBehaviorManager
îî 
.
îî  #
ChangeModeToReentrant
îî  5
(
îî5 6
)
îî6 7
;
îî7 8
LoggerManager
ïï 
logger
ïï  
=
ïï! "
new
ïï# &
LoggerManager
ïï' 4
(
ïï4 5
this
ïï5 9
.
ïï9 :
GetType
ïï: A
(
ïïA B
)
ïïB C
)
ïïC D
;
ïïD E
if
ññ 
(
ññ 
lobbyPlayers
ññ 
.
ññ 
ContainsKey
ññ (
(
ññ( )
code
ññ) -
)
ññ- .
)
ññ. /
{
óó 
List
òò 
<
òò 
UserSession
òò  
>
òò  !
userInLobby
òò" -
=
òò. /
lobbyPlayers
òò0 <
[
òò< =
code
òò= A
]
òòA B
;
òòB C
try
ôô 
{
öö 
UserSession
õõ 
userToNotify
õõ  ,
=
õõ- .
userInLobby
õõ/ :
[
õõ: ;
$num
õõ; <
]
õõ< =
;
õõ= >
if
úú 
(
úú 
lobbiesCallback
úú '
.
úú' (
ContainsKey
úú( 3
(
úú3 4
userToNotify
úú4 @
)
úú@ A
)
úúA B
{
ùù 
lobbiesCallback
ûû '
[
ûû' (
userToNotify
ûû( 4
]
ûû4 5
.
ûû5 6+
ReceiveStartMatchNotification
ûû6 S
(
ûûS T
)
ûûT U
;
ûûU V
}
üü 
}
†† 
catch
°° 
(
°° $
CommunicationException
°° -$
communicationException
°°. D
)
°°D E
{
¢¢ 
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
§§ 
catch
•• 
(
•• 
TimeoutException
•• '
timeoutException
••( 8
)
••8 9
{
¶¶ 
logger
ßß 
.
ßß 
LogError
ßß #
(
ßß# $
timeoutException
ßß$ 4
)
ßß4 5
;
ßß5 6
}
®® 
}
©© 
}
™™ 	
}
´´ 
}¨¨ •=
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
Count	 Ñ
;
Ñ Ö0
"leaderBoardPlayerObtainedListIndex
Ü ®
++
® ™
)
™ ´
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
;	 Ä%
playerLeaderBoardObtained )
.) *
	idAccount* 3
=4 5)
leaderBoardPlayerObtainedList6 S
[S T.
"leaderBoardPlayerObtainedListIndexT v
]v w
.w x
	idAccount	x Å
;
Å Ç%
playerLeaderBoardObtained )
.) *
totalWonMatches* 9
=: ;)
leaderBoardPlayerObtainedList< Y
[Y Z.
"leaderBoardPlayerObtainedListIndexZ |
]| }
.} ~

wonMatches	~ à
;
à â%
playerLeaderBoardObtained )
.) *
totalLostMatches* :
=; <)
leaderBoardPlayerObtainedList= Z
[Z [.
"leaderBoardPlayerObtainedListIndex[ }
]} ~
.~ 
lostMatches	 ä
;
ä ã%
playerLeaderBoardObtained )
.) *
totalDrawMatches* :
=; <)
leaderBoardPlayerObtainedList= Z
[Z [.
"leaderBoardPlayerObtainedListIndex[ }
]} ~
.~ 
drawMatches	 ä
;
ä ã%
playerLeaderBoardObtained )
.) *
totalMatches* 6
=7 8)
leaderBoardPlayerObtainedList9 V
[V W.
"leaderBoardPlayerObtainedListIndexW y
]y z
.z {
totalMatches	{ á
;
á à%
playerLeaderBoardObtained )
.) *
imageProfile* 6
=7 8)
leaderBoardPlayerObtainedList9 V
[V W.
"leaderBoardPlayerObtainedListIndexW y
]y z
.z {
imageProfile	{ á
;
á à&
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
}HH √√
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
IGameManagerCallback	z é
>
é è
(
è ê
)
ê ë
;
ë í
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
;	 Ä
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
ÄÄ 
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ $
CommunicationException
ÇÇ ($
communicationException
ÇÇ) ?
)
ÇÇ? @
{
ÉÉ 
logger
ÑÑ 
.
ÑÑ 
LogError
ÑÑ 
(
ÑÑ  $
communicationException
ÑÑ  6
)
ÑÑ6 7
;
ÑÑ7 8
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
TimeoutException
ÜÜ "
timeoutException
ÜÜ# 3
)
ÜÜ3 4
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
timeoutException
àà  0
)
àà0 1
;
àà1 2
}
ââ 
}
ää 	
public
åå 
void
åå 
	MovePiece
åå 
(
åå 
GamePice
åå &
piece
åå' ,
,
åå, -
UserSession
åå. 9
session
åå: A
,
ååA B
string
ååC I
	codeMatch
ååJ S
)
ååS T
{
çç 	!
HostBehaviorManager
éé 
.
éé  #
ChangeModeToReentrant
éé  5
(
éé5 6
)
éé6 7
;
éé7 8
LoggerManager
èè 
logger
èè  
=
èè! "
new
èè# &
LoggerManager
èè' 4
(
èè4 5
this
èè5 9
.
èè9 :
GetType
èè: A
(
èèA B
)
èèB C
)
èèC D
;
èèD E
try
êê 
{
ëë 
List
íí 
<
íí 
UserSession
íí  
>
íí  !
usersInMatch
íí" .
=
íí/ 0
gamePlayers
íí1 <
[
íí< =
	codeMatch
íí= F
]
ííF G
.
ííG H
ToList
ííH N
(
ííN O
)
ííO P
;
ííP Q
for
ìì 
(
ìì 
int
ìì !
indexLobbyCallbacks
ìì +
=
ìì, -
$num
ìì. /
;
ìì/ 0!
indexLobbyCallbacks
ìì1 D
<
ììE F
usersInMatch
ììG S
.
ììS T
Count
ììT Y
;
ììY Z!
indexLobbyCallbacks
ìì[ n
++
ììn p
)
ììp q
{
îî 
if
ïï 
(
ïï 
!
ïï 
usersInMatch
ïï %
[
ïï% &!
indexLobbyCallbacks
ïï& 9
]
ïï9 :
.
ïï: ;
Equals
ïï; A
(
ïïA B
session
ïïB I
)
ïïI J
)
ïïJ K
{
ññ 
gameCallbacks
óó %
[
óó% &
usersInMatch
óó& 2
[
óó2 3!
indexLobbyCallbacks
óó3 F
]
óóF G
]
óóG H
.
óóH I
ReceivePieceMoved
óóI Z
(
óóZ [
piece
óó[ `
)
óó` a
;
óóa b
}
òò 
}
öö 
}
õõ 
catch
úú 
(
úú $
CommunicationException
úú )$
communicationException
úú* @
)
úú@ A
{
ùù 
logger
ûû 
.
ûû 
LogError
ûû 
(
ûû  $
communicationException
ûû  6
)
ûû6 7
;
ûû7 8
}
üü 
catch
†† 
(
†† 
TimeoutException
†† #
timeoutException
††$ 4
)
††4 5
{
°° 
logger
¢¢ 
.
¢¢ 
LogError
¢¢ 
(
¢¢  
timeoutException
¢¢  0
)
¢¢0 1
;
¢¢1 2
}
££ 
}
§§ 	
public
¶¶ 
void
¶¶ 
SetTurns
¶¶ 
(
¶¶ 
UserSession
¶¶ (
session
¶¶) 0
,
¶¶0 1
string
¶¶2 8
	codeMatch
¶¶9 B
)
¶¶B C
{
ßß 	!
HostBehaviorManager
®® 
.
®®  #
ChangeModeToReentrant
®®  5
(
®®5 6
)
®®6 7
;
®®7 8
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
™™ 
{
´´ 
if
¨¨ 
(
¨¨ 
turnsInMatch
¨¨  
[
¨¨  !
	codeMatch
¨¨! *
]
¨¨* +
.
¨¨+ ,
Contains
¨¨, 4
(
¨¨4 5
session
¨¨5 <
.
¨¨< =
username
¨¨= E
)
¨¨E F
)
¨¨F G
{
≠≠ 
string
ÆÆ 
userTurnUsername
ÆÆ +
=
ÆÆ, -
session
ÆÆ. 5
.
ÆÆ5 6
username
ÆÆ6 >
;
ÆÆ> ?
List
ØØ 
<
ØØ 
UserSession
ØØ $
>
ØØ$ %
usersInMatch
ØØ& 2
=
ØØ3 4
gamePlayers
ØØ5 @
[
ØØ@ A
	codeMatch
ØØA J
]
ØØJ K
;
ØØK L
for
∞∞ 
(
∞∞ 
int
∞∞ !
indexPlayersInLobby
∞∞ 0
=
∞∞1 2
$num
∞∞3 4
;
∞∞4 5!
indexPlayersInLobby
∞∞6 I
<
∞∞J K
usersInMatch
∞∞L X
.
∞∞X Y
Count
∞∞Y ^
;
∞∞^ _!
indexPlayersInLobby
∞∞` s
++
∞∞s u
)
∞∞u v
{
±± 
if
≤≤ 
(
≤≤ 
!
≤≤ 
turnsInMatch
≤≤ )
[
≤≤) *
	codeMatch
≤≤* 3
]
≤≤3 4
.
≤≤4 5
Contains
≤≤5 =
(
≤≤= >
usersInMatch
≤≤> J
[
≤≤J K!
indexPlayersInLobby
≤≤K ^
]
≤≤^ _
.
≤≤_ `
username
≤≤` h
)
≤≤h i
)
≤≤i j
{
≥≥ 
userTurnUsername
¥¥ ,
=
¥¥- .
usersInMatch
¥¥/ ;
[
¥¥; <!
indexPlayersInLobby
¥¥< O
]
¥¥O P
.
¥¥P Q
username
¥¥Q Y
;
¥¥Y Z
}
µµ 
}
∂∂ 
turnsInMatch
∑∑  
[
∑∑  !
	codeMatch
∑∑! *
]
∑∑* +
=
∑∑, -
userTurnUsername
∑∑. >
;
∑∑> ?
for
∏∏ 
(
∏∏ 
int
∏∏ '
indexPlayerLobbyCallbacks
∏∏ 6
=
∏∏7 8
$num
∏∏9 :
;
∏∏: ;'
indexPlayerLobbyCallbacks
∏∏< U
<
∏∏V W
usersInMatch
∏∏X d
.
∏∏d e
Count
∏∏e j
;
∏∏j k
++
∏∏l n(
indexPlayerLobbyCallbacks∏∏n á
)∏∏á à
{
ππ 
if
∫∫ 
(
∫∫ 
turnsInMatch
∫∫ (
[
∫∫( )
	codeMatch
∫∫) 2
]
∫∫2 3
.
∫∫3 4
Contains
∫∫4 <
(
∫∫< =
usersInMatch
∫∫= I
[
∫∫I J'
indexPlayerLobbyCallbacks
∫∫J c
]
∫∫c d
.
∫∫d e
username
∫∫e m
)
∫∫m n
)
∫∫n o
{
ªª 
gameCallbacks
ºº )
[
ºº) *
usersInMatch
ºº* 6
[
ºº6 7'
indexPlayerLobbyCallbacks
ºº7 P
]
ººP Q
]
ººQ R
.
ººR S
ReceiveTurns
ººS _
(
ºº_ `
true
ºº` d
)
ººd e
;
ººe f
}
ΩΩ 
else
ææ 
{
øø 
gameCallbacks
¿¿ )
[
¿¿) *
usersInMatch
¿¿* 6
[
¿¿6 7'
indexPlayerLobbyCallbacks
¿¿7 P
]
¿¿P Q
]
¿¿Q R
.
¿¿R S
ReceiveTurns
¿¿S _
(
¿¿_ `
false
¿¿` e
)
¿¿e f
;
¿¿f g
}
¡¡ 
}
¬¬ 
}
√√ 
}
ƒƒ 
catch
≈≈ 
(
≈≈ $
CommunicationException
≈≈ )$
communicationException
≈≈* @
)
≈≈@ A
{
∆∆ 
logger
«« 
.
«« 
LogError
«« 
(
««  $
communicationException
««  6
)
««6 7
;
««7 8
}
»» 
catch
…… 
(
…… 
TimeoutException
…… #
timeoutException
……$ 4
)
……4 5
{
   
logger
ÀÀ 
.
ÀÀ 
LogError
ÀÀ 
(
ÀÀ  
timeoutException
ÀÀ  0
)
ÀÀ0 1
;
ÀÀ1 2
}
ÃÃ 
}
ÕÕ 	
private
œœ 
void
œœ 
SetPlayersSide
œœ #
(
œœ# $
UserSession
œœ$ /
session
œœ0 7
)
œœ7 8
{
–– 	!
HostBehaviorManager
—— 
.
——  #
ChangeModeToReentrant
——  5
(
——5 6
)
——6 7
;
——7 8
LoggerManager
““ 
logger
““  
=
““! "
new
““# &
LoggerManager
““' 4
(
““4 5
this
““5 9
.
““9 :
GetType
““: A
(
““A B
)
““B C
)
““C D
;
““D E

PlayerSide
”” 

playerSide
”” !
=
””" #
new
””$ '

PlayerSide
””( 2
(
””2 3
)
””3 4
{
‘‘ 
username
’’ 
=
’’ 
session
’’ "
.
’’" #
username
’’# +
,
’’+ ,
	playerOne
÷÷ 
=
÷÷ 
false
÷÷ !
,
÷÷! "
	playerTwo
◊◊ 
=
◊◊ 
false
◊◊ !
,
◊◊! "
}
ÿÿ 
;
ÿÿ 
try
ŸŸ 
{
⁄⁄ 
List
€€ 
<
€€ 
UserSession
€€  
>
€€  !
firstUserToJoin
€€" 1
=
€€2 3
gamePlayers
€€4 ?
[
€€? @
session
€€@ G
.
€€G H
	codeMatch
€€H Q
]
€€Q R
;
€€R S
if
‹‹ 
(
‹‹ 
firstUserToJoin
‹‹ #
[
‹‹# $
$num
‹‹$ %
]
‹‹% &
==
‹‹' )
session
‹‹* 1
)
‹‹1 2
{
›› 

playerSide
ﬁﬁ 
.
ﬁﬁ 
	playerOne
ﬁﬁ (
=
ﬁﬁ) *
true
ﬁﬁ+ /
;
ﬁﬁ/ 0
}
ﬂﬂ 
else
‡‡ 
{
·· 

playerSide
‚‚ 
.
‚‚ 
	playerTwo
‚‚ (
=
‚‚) *
true
‚‚+ /
;
‚‚/ 0
}
„„ 
gameCallbacks
‰‰ 
[
‰‰ 
session
‰‰ %
]
‰‰% &
.
‰‰& '#
ChargePlayerGameBoard
‰‰' <
(
‰‰< =

playerSide
‰‰= G
)
‰‰G H
;
‰‰H I
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ $
CommunicationException
ÊÊ ($
communicationException
ÊÊ) ?
)
ÊÊ? @
{
ÁÁ 
logger
ËË 
.
ËË 
LogError
ËË 
(
ËË  $
communicationException
ËË  6
)
ËË6 7
;
ËË7 8
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ 
TimeoutException
ÍÍ #
timeoutException
ÍÍ$ 4
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
timeoutException
ÏÏ  0
)
ÏÏ0 1
;
ÏÏ1 2
}
ÌÌ 
}
ÓÓ 	
private
 
void
 $
NotifyPlayersMatchJoin
 +
(
+ ,
string
, 2
	codeMatch
3 <
)
< =
{
ÒÒ 	!
HostBehaviorManager
ÚÚ 
.
ÚÚ  #
ChangeModeToReentrant
ÚÚ  5
(
ÚÚ5 6
)
ÚÚ6 7
;
ÚÚ7 8
LoggerManager
ÛÛ 
logger
ÛÛ  
=
ÛÛ! "
new
ÛÛ# &
LoggerManager
ÛÛ' 4
(
ÛÛ4 5
this
ÛÛ5 9
.
ÛÛ9 :
GetType
ÛÛ: A
(
ÛÛA B
)
ÛÛB C
)
ÛÛC D
;
ÛÛD E
List
ÙÙ 
<
ÙÙ 
UserSession
ÙÙ 
>
ÙÙ 
usersInMatch
ÙÙ *
=
ÙÙ+ ,
gamePlayers
ÙÙ- 8
[
ÙÙ8 9
	codeMatch
ÙÙ9 B
]
ÙÙB C
;
ÙÙC D
for
ıı 
(
ıı 
int
ıı 
gamePlayersIndex
ıı $
=
ıı% &
$num
ıı' (
;
ıı( )
gamePlayersIndex
ıı* :
<
ıı; <
usersInMatch
ıı= I
.
ııI J
Count
ııJ O
;
ııO P
gamePlayersIndex
ııQ a
++
ııa c
)
ııc d
{
ˆˆ 
try
˜˜ 
{
¯¯ 
UserSession
˘˘ 
userToNotify
˘˘  ,
=
˘˘- .
usersInMatch
˘˘/ ;
[
˘˘; <
gamePlayersIndex
˘˘< L
]
˘˘L M
;
˘˘M N
if
˙˙ 
(
˙˙ 
gameCallbacks
˙˙ %
.
˙˙% &
ContainsKey
˙˙& 1
(
˙˙1 2
userToNotify
˙˙2 >
)
˙˙> ?
)
˙˙? @
{
˚˚ 
gameCallbacks
¸¸ %
[
¸¸% &
userToNotify
¸¸& 2
]
¸¸2 3
.
¸¸3 4#
ReceivePlayersToMatch
¸¸4 I
(
¸¸I J
usersInMatch
¸¸J V
)
¸¸V W
;
¸¸W X
}
˝˝ 
}
˛˛ 
catch
ˇˇ 
(
ˇˇ $
CommunicationException
ˇˇ -$
communicationException
ˇˇ. D
)
ˇˇD E
{
ÄÄ 
logger
ÅÅ 
.
ÅÅ 
LogError
ÅÅ #
(
ÅÅ# $$
communicationException
ÅÅ$ :
)
ÅÅ: ;
;
ÅÅ; <
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
TimeoutException
ÉÉ '
timeoutException
ÉÉ( 8
)
ÉÉ8 9
{
ÑÑ 
logger
ÖÖ 
.
ÖÖ 
LogError
ÖÖ #
(
ÖÖ# $
timeoutException
ÖÖ$ 4
)
ÖÖ4 5
;
ÖÖ5 6
}
ÜÜ 
}
áá 
}
àà 	
}
ää 
}ãã ‹B
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
UserSession	z Ö
,
Ö Ü%
IFriendsManagerCallback
á û
>
û ü
(
ü †
)
† °
;
° ¢
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
;	 Ä
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
}ff ÖA
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
**Ä †
++
**† ¢
)
**¢ £
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
username	DDz Ç
)
DDÇ É
;
DDÉ Ñ
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
}PP ûO
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
searcherPlayer	''x Ü
)
''Ü á
;
''á à
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
friendRequestsObtainedIndex	))p ã
++
))ã ç
)
))ç é
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
}ee ÓN
qC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\EmailVerificationService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
public 

partial 
class 
HiveGameService (
:) *%
IEmailVerificationManager+ D
{ 
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
string3 9
>9 :4
(codeVerificationAccesAccountRegistration; c
=d e
newf i

Dictionaryj t
<t u
stringu {
,{ |
string	} É
>
É Ñ
(
Ñ Ö
)
Ö Ü
;
Ü á
public 
int !
SendVerificationEmail (
(( )
string) /
emailToSend0 ;
); <
{ 	
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
int 
resultSendedEmail !
=" #
	Constants$ -
.- .
ERROR_OPERATION. =
;= >
string 
codeGenerated  
=! "#
GenerateVerificatonCode# :
(: ;
emailToSend; F
)F G
;G H
string '
templateVerificationMessage .
=/ 0
BodyMessageFormat1 B
(B C
)C D
;D E
try 
{ 
if 
( '
templateVerificationMessage .
!=. 0
$str0 I
)I J
{ 
string 
emailSender &
=' (
$str) M
;M N
string   
password   #
=  $ %
$str  & ;
;  ; <
MailMessage!! 
messageToSend!!  -
=!!. /
new!!0 3
MailMessage!!4 ?
(!!? @
)!!@ A
;!!A B
messageToSend"" !
.""! "
Subject""" )
=""* +
$str"", F
;""F G
messageToSend## !
.##! "
From##" &
=##' (
new##) ,
MailAddress##- 8
(##8 9
emailSender##9 D
)##D E
;##E F
messageToSend$$ !
.$$! "
To$$" $
.$$$ %
Add$$% (
($$( )
emailToSend$$) 4
)$$4 5
;$$5 6
messageToSend%% !
.%%! "
Body%%" &
=%%' ('
templateVerificationMessage%%) D
.%%D E
Replace%%E L
(%%L M
$str%%M U
,%%U V
codeGenerated%%W d
)%%d e
;%%e f
messageToSend&& !
.&&! "

IsBodyHtml&&" ,
=&&- .
true&&/ 3
;&&3 4
var'' 

smtpClient'' "
=''# $
new''% (

SmtpClient'') 3
(''3 4
$str''4 D
)''D E
{(( 
Port)) 
=)) 
$num)) "
,))" #
Credentials** #
=**$ %
new**& )
NetworkCredential*** ;
(**; <
emailSender**< G
,**G H
password**I Q
)**Q R
,**R S
	EnableSsl++ !
=++" #
true++$ (
},, 
;,, 

smtpClient-- 
.-- 
Send-- #
(--# $
messageToSend--$ 1
)--1 2
;--2 3
resultSendedEmail.. %
=..& '
	Constants..( 1
...1 2
SUCCES_OPERATION..2 B
;..B C
}// 
}00 
catch00 
(00 !
FileNotFoundException00 )!
fileNotFoundException00* ?
)00? @
{11 
logger22 
.22 
LogError22 
(22  !
fileNotFoundException22  5
)225 6
;226 7
}33 
catch33 
(33 (
SmtpFailedRecipientException33 /(
smtpFailedRecipientException330 L
)33L M
{44 
logger55 
.55 
LogError55 
(55  (
smtpFailedRecipientException55  <
)55< =
;55= >
}66 
catch66 
(66 
SmtpException66 !
smtpException66" /
)66/ 0
{77 
logger88 
.88 
LogError88 
(88  
smtpException88  -
)88- .
;88. /
}99 
catch:: 
(:: 
FormatException:: "
formatException::# 2
)::2 3
{;; 
logger<< 
.<< 
LogError<< 
(<<  
formatException<<  /
)<</ 0
;<<0 1
}== 
catch>> 
(>> %
InvalidOperationException>> +%
invalidOperationException>>, E
)>>E F
{?? 
logger@@ 
.@@ 
LogError@@ 
(@@  %
invalidOperationException@@  9
)@@9 :
;@@: ;
}AA 
returnBB 
resultSendedEmailBB $
;BB$ %
}CC 	
privateEE 
stringEE 
BodyMessageFormatEE (
(EE( )
)EE) *
{FF 	
LoggerManagerGG 
loggerGG  
=GG! "
newGG# &
LoggerManagerGG' 4
(GG4 5
thisGG5 9
.GG9 :
GetTypeGG: A
(GGA B
)GGB C
)GGC D
;GGD E
stringHH 
bodyMessageFormatHH $
;HH$ %
tryII 
{JJ 
stringKK 
baseDirectoryKK $
=KK% &
	AppDomainKK' 0
.KK0 1
CurrentDomainKK1 >
.KK> ?
BaseDirectoryKK? L
;KKL M
stringLL 

serverPathLL !
=LL" #
PathLL$ (
.LL( )
GetFullPathLL) 4
(LL4 5
PathLL5 9
.LL9 :
CombineLL: A
(LLA B
baseDirectoryLLB O
,LLO P
$strLLQ \
)LL\ ]
)LL] ^
;LL^ _
stringMM 
templatePathMM #
=MM$ %
PathMM& *
.MM* +
CombineMM+ 2
(MM2 3

serverPathMM3 =
,MM= >
$strMM? q
)MMq r
;MMr s
bodyMessageFormatNN !
=NN" #
FileNN$ (
.NN( )
ReadAllTextNN) 4
(NN4 5
templatePathNN5 A
)NNA B
;NNB C
}OO 
catchOO 
(OO !
FileNotFoundExceptionOO (!
fileNotFoundExceptionOO) >
)OO> ?
{PP 
loggerQQ 
.QQ 
LogErrorQQ 
(QQ  !
fileNotFoundExceptionQQ  5
)QQ5 6
;QQ6 7
bodyMessageFormatRR !
=RR" #
$strRR$ =
;RR= >
}SS 
returnTT 
bodyMessageFormatTT $
;TT$ %
}UU 	
publicWW 
boolWW "
VerifyCodeVerificationWW *
(WW* +
UserVerificatorWW+ :
userVerificatorWW; J
)WWJ K
{XX 	
LoggerManagerYY 
loggerYY  
=YY! "
newYY# &
LoggerManagerYY' 4
(YY4 5
thisYY5 9
.YY9 :
GetTypeYY: A
(YYA B
)YYB C
)YYC D
;YYD E
boolZZ 
verificationResultZZ #
=ZZ$ %
falseZZ& +
;ZZ+ ,
try[[ 
{\\ 
string]] 
codeToCompare]] $
=]]% &4
(codeVerificationAccesAccountRegistration]]' O
[]]O P
userVerificator]]P _
.]]_ `
email]]` e
]]]e f
;]]f g
if^^ 
(^^ 
codeToCompare^^ !
==^^" $
userVerificator^^% 4
.^^4 5
code^^5 9
)^^9 :
{__ 
verificationResult`` &
=``' (
true``) -
;``- .4
(codeVerificationAccesAccountRegistrationaa <
.aa< =
Removeaa= C
(aaC D
codeToCompareaaD Q
)aaQ R
;aaR S
}bb 
}cc 
catchcc 
(cc  
KeyNotFoundExceptioncc ' 
keyNotFoundExceptioncc( <
)cc< =
{cc= >
verificationResultdd "
=dd# $
falsedd% *
;dd* +
loggeree 
.ee 
LogWarnee 
(ee  
keyNotFoundExceptionee 3
)ee3 4
;ee4 5
}ff 
returngg 
verificationResultgg %
;gg% &
}hh 	
publicjj 
stringjj #
GenerateVerificatonCodejj -
(jj- .
stringjj. 4
emailjj5 :
)jj: ;
{kk 	
ifll 
(ll 4
(codeVerificationAccesAccountRegistrationll 8
.ll8 9
ContainsKeyll9 D
(llD E
emailllE J
)llJ K
)llK L
{mm 4
(codeVerificationAccesAccountRegistrationnn 8
.nn8 9
Removenn9 ?
(nn? @
emailnn@ E
)nnE F
;nnF G
}oo 
Randompp 
randompp 
=pp 
newpp 
Randompp  &
(pp& '
)pp' (
;pp( )
intqq 
codeGeneratedqq 
=qq 
randomqq  &
.qq& '
Nextqq' +
(qq+ ,
$numqq, 2
,qq2 3
$numqq4 :
)qq: ;
;qq; <
stringrr 
stringCodeGeneratedrr &
=rr' (
codeGeneratedrr) 6
.rr6 7
ToStringrr7 ?
(rr? @
)rr@ A
;rrA B4
(codeVerificationAccesAccountRegistrationss 4
.ss4 5
Addss5 8
(ss8 9
emailss9 >
,ss> ?
stringCodeGeneratedss@ S
)ssS T
;ssT U
returntt 
stringCodeGeneratedtt &
;tt& '
}uu 	
}ww 
}xx –6
oC:\Users\chris\OneDrive\Escritorio\HiveServer\HiveGameServer\HiveGameService\Services\EmailInvitationService.cs
	namespace 	
HiveGameService
 
. 
Services "
{ 
public 

partial 
class 
HiveGameService (
:) *#
IEmailInvitationManager+ B
{ 
public 
int 
SendEmailInvitation &
(& '
UserVerificator' 6
userVerificator7 F
)F G
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
;D E
int 
resultSendedEmail !
=" #
	Constants$ -
.- .
ERROR_OPERATION. =
;= >
string %
templateInvitationMessage ,
=- .'
BodyMessageInvitationFormat/ J
(J K
)K L
;L M
if 
( %
templateInvitationMessage (
!=( *
$str* C
)C D
{ 
try 
{ 
string 
emailSender &
=' (
$str) M
;M N
string 
password #
=$ %
$str& ;
;; <
MailMessage 
messageToSend  -
=. /
new0 3
MailMessage4 ?
(? @
)@ A
;A B
messageToSend !
.! "
Subject" )
=* +
$str, H
;H I
messageToSend   !
.  ! "
From  " &
=  ' (
new  ) ,
MailAddress  - 8
(  8 9
emailSender  9 D
)  D E
;  E F
messageToSend!! !
.!!! "
To!!" $
.!!$ %
Add!!% (
(!!( )
userVerificator!!) 8
.!!8 9
email!!9 >
)!!> ?
;!!? @
messageToSend"" !
.""! "
Body""" &
=""' (%
templateInvitationMessage"") B
.""B C
Replace""C J
(""J K
$str""K S
,""S T
userVerificator""U d
.""d e
code""e i
)""i j
;""j k
messageToSend## !
.##! "

IsBodyHtml##" ,
=##- .
true##/ 3
;##3 4
var$$ 

smtpClient$$ "
=$$# $
new$$% (

SmtpClient$$) 3
($$3 4
$str$$4 D
)$$D E
{%% 
Port&& 
=&& 
$num&& "
,&&" #
Credentials'' #
=''$ %
new''& )
NetworkCredential''* ;
(''; <
emailSender''< G
,''G H
password''I Q
)''Q R
,''R S
	EnableSsl(( !
=((" #
true(($ (
})) 
;)) 

smtpClient** 
.** 
Send** #
(**# $
messageToSend**$ 1
)**1 2
;**2 3
resultSendedEmail++ %
=++& '
	Constants++( 1
.++1 2
SUCCES_OPERATION++2 B
;++B C
},, 
catch-- 
(-- !
FileNotFoundException-- ,!
fileNotFoundException--- B
)--B C
{.. 
logger// 
.// 
LogError// #
(//# $!
fileNotFoundException//$ 9
)//9 :
;//: ;
}00 
catch11 
(11 (
SmtpFailedRecipientException11 3(
smtpFailedRecipientException114 P
)11P Q
{22 
logger33 
.33 
LogError33 #
(33# $(
smtpFailedRecipientException33$ @
)33@ A
;33A B
}44 
catch55 
(55 
SmtpException55 $
smtpException55% 2
)552 3
{66 
logger77 
.77 
LogError77 #
(77# $
smtpException77$ 1
)771 2
;772 3
}88 
catch88 
(88 
FormatException88 &
formatException88' 6
)886 7
{99 
logger:: 
.:: 
LogError:: #
(::# $
formatException::$ 3
)::3 4
;::4 5
};; 
catch<< 
(<< %
InvalidOperationException<< 0%
invalidOperationException<<1 J
)<<J K
{== 
logger>> 
.>> 
LogError>> #
(>># $%
invalidOperationException>>$ =
)>>= >
;>>> ?
}?? 
}@@ 
returnAA 
resultSendedEmailAA $
;AA$ %
}BB 	
publicDD 
stringDD '
BodyMessageInvitationFormatDD 1
(DD1 2
)DD2 3
{EE 	
LoggerManagerFF 
loggerFF  
=FF! "
newFF# &
LoggerManagerFF' 4
(FF4 5
thisFF5 9
.FF9 :
GetTypeFF: A
(FFA B
)FFB C
)FFC D
;FFD E
stringGG 
bodyMessageFormatGG $
;GG$ %
tryHH 
{II 
stringJJ 
baseDirectoryJJ $
=JJ% &
	AppDomainJJ' 0
.JJ0 1
CurrentDomainJJ1 >
.JJ> ?
BaseDirectoryJJ? L
;JJL M
stringKK 

serverPathKK !
=KK" #
PathKK$ (
.KK( )
GetFullPathKK) 4
(KK4 5
PathKK5 9
.KK9 :
CombineKK: A
(KKA B
baseDirectoryKKB O
,KKO P
$strKKQ \
)KK\ ]
)KK] ^
;KK^ _
stringLL 
templatePathLL #
=LL$ %
PathLL& *
.LL* +
CombineLL+ 2
(LL2 3

serverPathLL3 =
,LL= >
$strLL? o
)LLo p
;LLp q
bodyMessageFormatMM !
=MM" #
FileMM$ (
.MM( )
ReadAllTextMM) 4
(MM4 5
templatePathMM5 A
)MMA B
;MMB C
}NN 
catchNN 
(NN &
DirectoryNotFoundExceptionNN -&
directoryNotFoundExceptionNN. H
)NNH I
{OO 
loggerPP 
.PP 
LogErrorPP 
(PP  &
directoryNotFoundExceptionPP  :
)PP: ;
;PP; <
bodyMessageFormatQQ !
=QQ" #
$strQQ$ =
;QQ= >
}RR 
catchSS 
(SS !
FileNotFoundExceptionSS '!
fileNotFoundExceptionSS( =
)SS= >
{TT 
loggerUU 
.UU 
LogErrorUU 
(UU  !
fileNotFoundExceptionUU  5
)UU5 6
;UU6 7
bodyMessageFormatVV !
=VV" #
$strVV$ =
;VV= >
}WW 
returnXX 
bodyMessageFormatXX $
;XX$ %
}YY 	
}[[ 
}\\ ¶J
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
IChatManagerCallback	p Ñ
>
Ñ Ö
(
Ö Ü
)
Ü á
;
á à
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
;7 8
chatManagerCallback 
=  !
OperationContext" 2
.2 3
Current3 :
.: ;
GetCallbackChannel; M
<M N 
IChatManagerCallbackN b
>b c
(c d
)d e
;e f
chatCallBacks 
. 
Add 
( 
user "
." #
username# +
,+ ,
chatManagerCallback- @
)@ A
;A B
if 
( 
! 
usersByLobby 
. 
ContainsKey )
() *
code* .
). /
)/ 0
{ 
usersByLobby 
[ 
code !
]! "
=# $
new% (
List) -
<- .
Profile. 5
>5 6
(6 7
)7 8
;8 9
} 
usersByLobby   
[   
code   
]   
.   
Add   "
(  " #
user  # '
)  ' (
;  ( )&
showNewMessageConversation!! &
(!!& '
code!!' +
)!!+ ,
;!!, -
}"" 	
public$$ 
void$$ 
SendMessages$$  
($$  !
Message$$! (
message$$) 0
,$$0 1
string$$2 8
code$$9 =
)$$= >
{%% 	
HostBehaviorManager&& 
.&&  !
ChangeModeToReentrant&&  5
(&&5 6
)&&6 7
;&&7 8
if'' 
('' 
!'' 
messagesFromLobby'' "
.''" #
ContainsKey''# .
(''. /
code''/ 3
)''3 4
)''4 5
{(( 
messagesFromLobby)) !
[))! "
code))" &
]))& '
=))( )
new))* -
List)). 2
<))2 3
Message))3 :
>)): ;
()); <
)))< =
;))= >
}** 
messagesFromLobby++ 
[++ 
code++ "
]++" #
.++# $
Add++$ '
(++' (
message++( /
)++/ 0
;++0 1&
showNewMessageConversation,, &
(,,& '
code,,' +
),,+ ,
;,,, -
}-- 	
public// 
void// &
showNewMessageConversation// .
(//. /
string/// 5
code//6 :
)//: ;
{00 	
LoggerManager11 
logger11  
=11! "
new11# &
LoggerManager11' 4
(114 5
this115 9
.119 :
GetType11: A
(11A B
)11B C
)11C D
;11D E
List22 
<22 
Profile22 
>22 
	usersList22 #
=22$ %
usersByLobby22& 2
[222 3
code223 7
]227 8
;228 9
for33 
(33 
int33 

usersIndex33 
=33  
$num33! "
;33" #

usersIndex33$ .
<33/ 0
	usersList331 :
.33: ;
Count33; @
;33@ A

usersIndex33B L
++33L N
)33N O
{44 
if55 
(55 
chatCallBacks55 !
.55! "
ContainsKey55" -
(55- .
	usersList55. 7
[557 8

usersIndex558 B
]55B C
.55C D
username55D L
)55L M
)55M N
{66 
try77 
{88 
chatCallBacks99 %
[99% &
	usersList99& /
[99/ 0

usersIndex990 :
]99: ;
.99; <
username99< D
]99D E
.99E F
ReceiveMessage99F T
(99T U-
!ObtainMessagesFromAnSpecificLobby99U v
(99v w
code99w {
)99{ |
)99| }
;99} ~
}:: 
catch;; 
(;; "
CommunicationException;; 0"
communicationException;;1 G
);;G H
{<< 
logger== 
.== 
LogError== '
(==' ("
communicationException==( >
)==> ?
;==? @
}>> 
catch>> 
(>> 
TimeoutException>> +
timeOutException>>, <
)>>< =
{?? 
logger@@ 
.@@ 
LogError@@ '
(@@' (
timeOutException@@( 8
)@@8 9
;@@9 :
}AA 
}BB 
}CC 
}DD 	
publicFF 
ListFF 
<FF 
MessageFF 
>FF -
!ObtainMessagesFromAnSpecificLobbyFF >
(FF> ?
stringFF? E
codeFFF J
)FFJ K
{GG 	
ifHH 
(HH 
!HH 
messagesFromLobbyHH "
.HH" #
ContainsKeyHH# .
(HH. /
codeHH/ 3
)HH3 4
)HH4 5
{II 
ListJJ 
<JJ 
MessageJJ 
>JJ 
messagesJJ &
=JJ' (
newJJ) ,
ListJJ- 1
<JJ1 2
MessageJJ2 9
>JJ9 :
(JJ: ;
)JJ; <
;JJ< =
messagesFromLobbyKK !
.KK! "
AddKK" %
(KK% &
codeKK& *
,KK* +
messagesKK, 4
)KK4 5
;KK5 6
}LL 
returnMM 
messagesFromLobbyMM $
[MM$ %
codeMM% )
]MM) *
;MM* +
}NN 	
publicPP 
intPP #
DisconectPlayerFromChatPP *
(PP* +
ProfilePP+ 2
userPP3 7
,PP7 8
stringPP9 ?
codePP@ D
)PPD E
{QQ 	
intRR 
disconectionResultRR "
=RR# $
	ConstantsRR% .
.RR. /
ERROR_OPERATIONRR/ >
;RR> ?
ifSS 
(SS 
chatCallBacksSS 
.SS 
ContainsKeySS )
(SS) *
userSS* .
.SS. /
usernameSS/ 7
)SS7 8
)SS8 9
{TT 
chatCallBacksVV 
.VV 
RemoveVV $
(VV$ %
userVV% )
.VV) *
usernameVV* 2
)VV2 3
;VV3 4
ifWW 
(WW 
usersByLobbyWW  
.WW  !
ContainsKeyWW! ,
(WW, -
codeWW- 1
)WW1 2
)WW2 3
{XX 
usersByLobbyYY  
[YY  !
codeYY! %
]YY% &
.YY& '
	RemoveAllYY' 0
(YY0 1
userToDisconnectYY1 A
=>YYB D
userToDisconnectYYE U
.YYU V
usernameYYV ^
==YY_ a
userYYb f
.YYf g
usernameYYg o
)YYo p
;YYp q
}ZZ 
disconectionResult[[ "
=[[# $
	Constants[[% .
.[[. /
SUCCES_OPERATION[[/ ?
;[[? @
}\\ 
return]] 
disconectionResult]] %
;]]% &
}^^ 	
}__ 
}`` í
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
]$$) *ñ
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
;++U V
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
}88 ´
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
}33 ¸
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
}.. âN
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
AccessAccount# 0
profile1 8
,8 9
AccessAccount: G
updatedProfileH V
)V W
;W X
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
==	EE~ Ä
null
EEÅ Ö
)
EEÖ Ü
;
EEÜ á
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
}jj Î
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
} 
[ 
ServiceContract 
] 
public 

	interface !
ILobbyManagerCallback *
{ 
[ 	
OperationContract	 
] 
void   !
ReceivePlayersToLobby   "
(  " #
List  # '
<  ' (
UserSession  ( 3
>  3 4
user  5 9
)  9 :
;  : ;
["" 	
OperationContract""	 
]"" 
void## %
ReceiveKickedNotification## &
(##& '
)##' (
;##( )
[%% 	
OperationContract%%	 
]%% 
void&& )
ReceiveStartMatchNotification&& *
(&&* +
)&&+ ,
;&&, -
}'' 
[** 
DataContract** 
]** 
public++ 

class++ 
	GameMatch++ 
{,, 
[-- 	

DataMember--	 
]-- 
public.. 
string.. 
code.. 
{.. 
get..  
;..  !
set.." %
;..% &
}..' (
[00 	

DataMember00	 
]00 
public11 
int11 
	idAccount11 
{11 
get11 "
;11" #
set11$ '
;11' (
}11) *
}22 
}33 å.
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
void 
	MovePiece 
( 
GamePice 
piece  %
,% &
UserSession' 2
session3 :
,: ;
string< B
	codeMatchC L
)L M
;M N
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SetTurns 
( 
UserSession !
session" )
,) *
string+ 1
	codeMatch2 ;
); <
;< =
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
LeaveTheGame 
( 
UserSession %
session& -
,- .
string/ 5
	codeMatch6 ?
)? @
;@ A
} 
[ 
ServiceContract 
] 
public 

	interface  
IGameManagerCallback )
{ 
[ 	
OperationContract	 
] 
void   !
ChargePlayerGameBoard   "
(  " #

PlayerSide  # -
side  . 2
)  2 3
;  3 4
["" 	
OperationContract""	 
]"" 
void## 
ReceivePieceMoved## 
(## 
GamePice## '
piece##( -
)##- .
;##. /
[%% 	
OperationContract%%	 
]%% 
void&& 
ReceiveTurns&& 
(&& 
bool&& 
isTurn&& %
)&&% &
;&&& '
[(( 	
OperationContract((	 
](( 
void)) !
ReceivePlayersToMatch)) "
())" #
List))# '
<))' (
UserSession))( 3
>))3 4
userSession))5 @
)))@ A
;))A B
[++ 	
OperationContract++	 
]++ 
void,, ,
 ReceivePlayerHasLeftNotification,, -
(,,- .
bool,,. 2
doPlayerLeftTheGame,,3 F
),,F G
;,,G H
}-- 
[// 
DataContract// 
]// 
public00 

class00 

PlayerSide00 
{11 
[22 	

DataMember22	 
]22 
public33 
string33 
username33 
{33  
get33" %
;33% &
set33' *
;33* +
}33, -
[55 	

DataMember55	 
]55 
public66 
bool66 
	playerOne66 
{66 
get66  #
;66# $
set66% (
;66( )
}66* +
[88 	

DataMember88	 
]88 
public99 
bool99 
	playerTwo99 
{99 
get99  #
;99# $
set99% (
;99( )
}99* +
};; 
[== 
DataContract== 
]== 
public>> 

class>> 
GamePice>> 
{?? 
[@@ 	

DataMember@@	 
]@@ 
publicAA 
PieceAA 
pieceAA 
{AA 
getAA  
;AA  !
setAA" %
;AA% &
}AA' (
[CC 	

DataMemberCC	 
]CC 
publicDD 
stringDD 
	imagePathDD 
{DD  !
getDD" %
;DD% &
setDD' *
;DD* +
}DD, -
[FF 	

DataMemberFF	 
]FF 
publicGG 
intGG 
numberOfPieceGG  
{GG! "
getGG$ '
;GG' (
setGG) ,
;GG, -
}GG. /
[II 	

DataMemberII	 
]II 
publicJJ 
PointJJ 
positionJJ 
{JJ 
getJJ! $
;JJ$ %
setJJ& )
;JJ) *
}JJ+ ,
[LL 	

DataMemberLL	 
]LL 
publicMM 
stringMM 

playerNameMM  
{MM! "
getMM$ '
;MM' (
setMM) ,
;MM, -
}MM. /
}NN 
[PP 
DataContractPP 
]PP 
publicQQ 

classQQ 
PieceQQ 
{RR 
[SS 	

DataMemberSS	 
]SS 
publicTT 
stringTT 
nameTT 
{TT 
getTT  
;TT  !
setTT" %
;TT% &
}TT' (
[VV 	

DataMemberVV	 
]VV 
publicWW 
stringWW 

playerNameWW  
{WW! "
getWW# &
;WW& '
setWW( +
;WW+ ,
}WW- .
[YY 	

DataMemberYY	 
]YY 
publicZZ 
PointZZ 
positionZZ 
{ZZ 
getZZ  #
;ZZ# $
setZZ% (
;ZZ( )
}ZZ* +
}\\ 
}]] ⁄
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
} ˇ
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
} ˆ
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
}(( ö
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
}!! ‡
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