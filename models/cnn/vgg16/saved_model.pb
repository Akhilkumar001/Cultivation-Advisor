ъ╖
А╒
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.9.12v2.9.0-18-gd8ce9f9c3018ми
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
З
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_1/kernel/v
А
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	А*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
З
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_1/kernel/m
А
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	А*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:А*
dtype0
М
block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv3/kernel
Е
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:А*
dtype0
М
block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv2/kernel
Е
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:А*
dtype0
М
block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv1/kernel
Е
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:А*
dtype0
М
block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv3/kernel
Е
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:А*
dtype0
М
block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv2/kernel
Е
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:А*
dtype0
М
block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv1/kernel
Е
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:А*
dtype0
М
block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv3/kernel
Е
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:А*
dtype0
М
block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv2/kernel
Е
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:А*
dtype0
М
block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv1/kernel
Е
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:А*
dtype0
М
block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock2_conv2/kernel
Е
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:А*
dtype0
Л
block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*$
shared_nameblock2_conv1/kernel
Д
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@А*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
К
block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
Г
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
К
block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
Г
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А*
dtype0

NoOpNoOp
сЦ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЫЦ
valueРЦBМЦ BДЦ
┴
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
х
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
 layer_with_weights-12
 layer-17
!layer-18
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses*
О
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
е
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses
4_random_generator* 
ж
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses

;kernel
<bias*
┌
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
M16
N17
O18
P19
Q20
R21
S22
T23
U24
V25
;26
<27*

;0
<1*
* 
░
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
\trace_0
]trace_1
^trace_2
_trace_3* 
6
`trace_0
atrace_1
btrace_2
ctrace_3* 
* 
l
diter

ebeta_1

fbeta_2
	gdecay
hlearning_rate;mР<mС;vТ<vУ*

iserving_default* 
* 
╚
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

=kernel
>bias
 p_jit_compiled_convolution_op*
╚
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

?kernel
@bias
 w_jit_compiled_convolution_op*
О
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses* 
═
~	variables
trainable_variables
Аregularization_losses
Б	keras_api
В__call__
+Г&call_and_return_all_conditional_losses

Akernel
Bbias
!Д_jit_compiled_convolution_op*
╧
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses

Ckernel
Dbias
!Л_jit_compiled_convolution_op*
Ф
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses* 
╧
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses

Ekernel
Fbias
!Ш_jit_compiled_convolution_op*
╧
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses

Gkernel
Hbias
!Я_jit_compiled_convolution_op*
╧
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses

Ikernel
Jbias
!ж_jit_compiled_convolution_op*
Ф
з	variables
иtrainable_variables
йregularization_losses
к	keras_api
л__call__
+м&call_and_return_all_conditional_losses* 
╧
н	variables
оtrainable_variables
пregularization_losses
░	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses

Kkernel
Lbias
!│_jit_compiled_convolution_op*
╧
┤	variables
╡trainable_variables
╢regularization_losses
╖	keras_api
╕__call__
+╣&call_and_return_all_conditional_losses

Mkernel
Nbias
!║_jit_compiled_convolution_op*
╧
╗	variables
╝trainable_variables
╜regularization_losses
╛	keras_api
┐__call__
+└&call_and_return_all_conditional_losses

Okernel
Pbias
!┴_jit_compiled_convolution_op*
Ф
┬	variables
├trainable_variables
─regularization_losses
┼	keras_api
╞__call__
+╟&call_and_return_all_conditional_losses* 
╧
╚	variables
╔trainable_variables
╩regularization_losses
╦	keras_api
╠__call__
+═&call_and_return_all_conditional_losses

Qkernel
Rbias
!╬_jit_compiled_convolution_op*
╧
╧	variables
╨trainable_variables
╤regularization_losses
╥	keras_api
╙__call__
+╘&call_and_return_all_conditional_losses

Skernel
Tbias
!╒_jit_compiled_convolution_op*
╧
╓	variables
╫trainable_variables
╪regularization_losses
┘	keras_api
┌__call__
+█&call_and_return_all_conditional_losses

Ukernel
Vbias
!▄_jit_compiled_convolution_op*
Ф
▌	variables
▐trainable_variables
▀regularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses* 
╩
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
M16
N17
O18
P19
Q20
R21
S22
T23
U24
V25*
* 
* 
Ш
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
:
шtrace_0
щtrace_1
ъtrace_2
ыtrace_3* 
:
ьtrace_0
эtrace_1
юtrace_2
яtrace_3* 
* 
* 
* 
Ц
Ёnon_trainable_variables
ёlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

їtrace_0* 

Ўtrace_0* 
* 
* 
* 
Ц
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 

№trace_0
¤trace_1* 

■trace_0
 trace_1* 
* 

;0
<1*

;0
<1*
* 
Ш
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*

Еtrace_0* 

Жtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock1_conv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock1_conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock1_conv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock1_conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock2_conv1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock2_conv1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock2_conv2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock2_conv2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock3_conv1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock3_conv1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv2/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv2/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv3/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv1/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv1/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv2/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv2/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv3/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv3/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
╩
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
M16
N17
O18
P19
Q20
R21
S22
T23
U24
V25*
'
0
1
2
3
4*

З0
И1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

=0
>1*
* 
* 
Ш
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*

Оtrace_0* 

Пtrace_0* 
* 

?0
@1*
* 
* 
Ш
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

Хtrace_0* 

Цtrace_0* 
* 
* 
* 
* 
Ц
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses* 

Ьtrace_0* 

Эtrace_0* 

A0
B1*
* 
* 
Ь
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
~	variables
trainable_variables
Аregularization_losses
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses*

гtrace_0* 

дtrace_0* 
* 

C0
D1*
* 
* 
Ю
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses*

кtrace_0* 

лtrace_0* 
* 
* 
* 
* 
Ь
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses* 

▒trace_0* 

▓trace_0* 

E0
F1*
* 
* 
Ю
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses*

╕trace_0* 

╣trace_0* 
* 

G0
H1*
* 
* 
Ю
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses*

┐trace_0* 

└trace_0* 
* 

I0
J1*
* 
* 
Ю
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses*

╞trace_0* 

╟trace_0* 
* 
* 
* 
* 
Ь
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
з	variables
иtrainable_variables
йregularization_losses
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses* 

═trace_0* 

╬trace_0* 

K0
L1*
* 
* 
Ю
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
н	variables
оtrainable_variables
пregularization_losses
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses*

╘trace_0* 

╒trace_0* 
* 

M0
N1*
* 
* 
Ю
╓non_trainable_variables
╫layers
╪metrics
 ┘layer_regularization_losses
┌layer_metrics
┤	variables
╡trainable_variables
╢regularization_losses
╕__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses*

█trace_0* 

▄trace_0* 
* 

O0
P1*
* 
* 
Ю
▌non_trainable_variables
▐layers
▀metrics
 рlayer_regularization_losses
сlayer_metrics
╗	variables
╝trainable_variables
╜regularization_losses
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses*

тtrace_0* 

уtrace_0* 
* 
* 
* 
* 
Ь
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
┬	variables
├trainable_variables
─regularization_losses
╞__call__
+╟&call_and_return_all_conditional_losses
'╟"call_and_return_conditional_losses* 

щtrace_0* 

ъtrace_0* 

Q0
R1*
* 
* 
Ю
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
╚	variables
╔trainable_variables
╩regularization_losses
╠__call__
+═&call_and_return_all_conditional_losses
'═"call_and_return_conditional_losses*

Ёtrace_0* 

ёtrace_0* 
* 

S0
T1*
* 
* 
Ю
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
╧	variables
╨trainable_variables
╤regularization_losses
╙__call__
+╘&call_and_return_all_conditional_losses
'╘"call_and_return_conditional_losses*

ўtrace_0* 

°trace_0* 
* 

U0
V1*
* 
* 
Ю
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
╓	variables
╫trainable_variables
╪regularization_losses
┌__call__
+█&call_and_return_all_conditional_losses
'█"call_and_return_conditional_losses*

■trace_0* 

 trace_0* 
* 
* 
* 
* 
Ь
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
▌	variables
▐trainable_variables
▀regularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses* 

Еtrace_0* 

Жtrace_0* 
╩
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
M16
N17
O18
P19
Q20
R21
S22
T23
U24
V25*
Т
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
 17
!18*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
З	variables
И	keras_api

Йtotal

Кcount*
M
Л	variables
М	keras_api

Нtotal

Оcount
П
_fn_kwargs*

=0
>1*
* 
* 
* 
* 
* 
* 

?0
@1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

A0
B1*
* 
* 
* 
* 
* 
* 

C0
D1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

E0
F1*
* 
* 
* 
* 
* 
* 

G0
H1*
* 
* 
* 
* 
* 
* 

I0
J1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

K0
L1*
* 
* 
* 
* 
* 
* 

M0
N1*
* 
* 
* 
* 
* 
* 

O0
P1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Q0
R1*
* 
* 
* 
* 
* 
* 

S0
T1*
* 
* 
* 
* 
* 
* 

U0
V1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Й0
К1*

З	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Н0
О1*

Л	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Б{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
О
serving_default_input_4Placeholder*1
_output_shapes
:         рр*
dtype0*&
shape:         рр
О
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4block1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense_1/kerneldense_1/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_4981
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
┘
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*6
Tin/
-2+	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *&
f!R
__inference__traced_save_6155
а
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biasblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_1/kernel/vAdam/dense_1/bias/v*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_restore_6288╫в
▐U
я
?__inference_vgg16_layer_call_and_return_conditional_losses_4087

inputs+
block1_conv1_4016:@
block1_conv1_4018:@+
block1_conv2_4021:@@
block1_conv2_4023:@,
block2_conv1_4027:@А 
block2_conv1_4029:	А-
block2_conv2_4032:АА 
block2_conv2_4034:	А-
block3_conv1_4038:АА 
block3_conv1_4040:	А-
block3_conv2_4043:АА 
block3_conv2_4045:	А-
block3_conv3_4048:АА 
block3_conv3_4050:	А-
block4_conv1_4054:АА 
block4_conv1_4056:	А-
block4_conv2_4059:АА 
block4_conv2_4061:	А-
block4_conv3_4064:АА 
block4_conv3_4066:	А-
block5_conv1_4070:АА 
block5_conv1_4072:	А-
block5_conv2_4075:АА 
block5_conv2_4077:	А-
block5_conv3_4080:АА 
block5_conv3_4082:	А
identityИв$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallД
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_4016block1_conv1_4018*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_3553л
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_4021block1_conv2_4023*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_3570ы
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_3484б
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_4027block2_conv1_4029*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_3588к
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_4032block2_conv2_4034*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_3605ь
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_3496б
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_4038block3_conv1_4040*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_3623к
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_4043block3_conv2_4045*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_3640к
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_4048block3_conv3_4050*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_3657ь
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_3508б
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_4054block4_conv1_4056*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_3675к
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_4059block4_conv2_4061*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_3692к
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_4064block4_conv3_4066*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_3709ь
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_3520б
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_4070block5_conv1_4072*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_3727к
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_4075block5_conv2_4077*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_3744к
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_4080block5_conv3_4082*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_3761ь
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_3532|
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А┴
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
ьN
─
__inference__traced_save_6155
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: б
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*╩
value└B╜*B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┴
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B П
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*╢
_input_shapesд
б: :	А::@:@:@@:@:@А:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А: : : : : : : : : :	А::	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	А: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :%&!

_output_shapes
:	А: '

_output_shapes
::%(!

_output_shapes
:	А: )

_output_shapes
::*

_output_shapes
: 
С
В
F__inference_block5_conv1_layer_call_and_return_conditional_losses_3727

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▓
э
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4912
input_4$

vgg16_4851:@

vgg16_4853:@$

vgg16_4855:@@

vgg16_4857:@%

vgg16_4859:@А

vgg16_4861:	А&

vgg16_4863:АА

vgg16_4865:	А&

vgg16_4867:АА

vgg16_4869:	А&

vgg16_4871:АА

vgg16_4873:	А&

vgg16_4875:АА

vgg16_4877:	А&

vgg16_4879:АА

vgg16_4881:	А&

vgg16_4883:АА

vgg16_4885:	А&

vgg16_4887:АА

vgg16_4889:	А&

vgg16_4891:АА

vgg16_4893:	А&

vgg16_4895:АА

vgg16_4897:	А&

vgg16_4899:АА

vgg16_4901:	А
dense_1_4906:	А
dense_1_4908:
identityИвdense_1/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallвvgg16/StatefulPartitionedCall╕
vgg16/StatefulPartitionedCallStatefulPartitionedCallinput_4
vgg16_4851
vgg16_4853
vgg16_4855
vgg16_4857
vgg16_4859
vgg16_4861
vgg16_4863
vgg16_4865
vgg16_4867
vgg16_4869
vgg16_4871
vgg16_4873
vgg16_4875
vgg16_4877
vgg16_4879
vgg16_4881
vgg16_4883
vgg16_4885
vgg16_4887
vgg16_4889
vgg16_4891
vgg16_4893
vgg16_4895
vgg16_4897
vgg16_4899
vgg16_4901*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_vgg16_layer_call_and_return_conditional_losses_3769√
*global_average_pooling2d_1/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_4357Ў
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_4534К
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_4906dense_1_4908*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_4438w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_4
С
В
F__inference_block5_conv2_layer_call_and_return_conditional_losses_3744

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
┌
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_4426

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Н
Б
F__inference_block2_conv1_layer_call_and_return_conditional_losses_3588

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppАY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ppАj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ppАw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs
Я
D
(__inference_dropout_1_layer_call_fn_5658

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_4426a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Є
в
+__inference_block2_conv1_layer_call_fn_5758

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_3588x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ppА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs
С
В
F__inference_block4_conv2_layer_call_and_return_conditional_losses_3692

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╤
Ї
/__inference_pretrained_vgg16_layer_call_fn_5103

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:
identityИвStatefulPartitionedCall┬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4664o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
Ї
░
$__inference_vgg16_layer_call_fn_5385

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А
identityИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_vgg16_layer_call_and_return_conditional_losses_3769x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
╞╩
° 
__inference__wrapped_model_3475
input_4\
Bpretrained_vgg16_vgg16_block1_conv1_conv2d_readvariableop_resource:@Q
Cpretrained_vgg16_vgg16_block1_conv1_biasadd_readvariableop_resource:@\
Bpretrained_vgg16_vgg16_block1_conv2_conv2d_readvariableop_resource:@@Q
Cpretrained_vgg16_vgg16_block1_conv2_biasadd_readvariableop_resource:@]
Bpretrained_vgg16_vgg16_block2_conv1_conv2d_readvariableop_resource:@АR
Cpretrained_vgg16_vgg16_block2_conv1_biasadd_readvariableop_resource:	А^
Bpretrained_vgg16_vgg16_block2_conv2_conv2d_readvariableop_resource:ААR
Cpretrained_vgg16_vgg16_block2_conv2_biasadd_readvariableop_resource:	А^
Bpretrained_vgg16_vgg16_block3_conv1_conv2d_readvariableop_resource:ААR
Cpretrained_vgg16_vgg16_block3_conv1_biasadd_readvariableop_resource:	А^
Bpretrained_vgg16_vgg16_block3_conv2_conv2d_readvariableop_resource:ААR
Cpretrained_vgg16_vgg16_block3_conv2_biasadd_readvariableop_resource:	А^
Bpretrained_vgg16_vgg16_block3_conv3_conv2d_readvariableop_resource:ААR
Cpretrained_vgg16_vgg16_block3_conv3_biasadd_readvariableop_resource:	А^
Bpretrained_vgg16_vgg16_block4_conv1_conv2d_readvariableop_resource:ААR
Cpretrained_vgg16_vgg16_block4_conv1_biasadd_readvariableop_resource:	А^
Bpretrained_vgg16_vgg16_block4_conv2_conv2d_readvariableop_resource:ААR
Cpretrained_vgg16_vgg16_block4_conv2_biasadd_readvariableop_resource:	А^
Bpretrained_vgg16_vgg16_block4_conv3_conv2d_readvariableop_resource:ААR
Cpretrained_vgg16_vgg16_block4_conv3_biasadd_readvariableop_resource:	А^
Bpretrained_vgg16_vgg16_block5_conv1_conv2d_readvariableop_resource:ААR
Cpretrained_vgg16_vgg16_block5_conv1_biasadd_readvariableop_resource:	А^
Bpretrained_vgg16_vgg16_block5_conv2_conv2d_readvariableop_resource:ААR
Cpretrained_vgg16_vgg16_block5_conv2_biasadd_readvariableop_resource:	А^
Bpretrained_vgg16_vgg16_block5_conv3_conv2d_readvariableop_resource:ААR
Cpretrained_vgg16_vgg16_block5_conv3_biasadd_readvariableop_resource:	АJ
7pretrained_vgg16_dense_1_matmul_readvariableop_resource:	АF
8pretrained_vgg16_dense_1_biasadd_readvariableop_resource:
identityИв/pretrained_vgg16/dense_1/BiasAdd/ReadVariableOpв.pretrained_vgg16/dense_1/MatMul/ReadVariableOpв:pretrained_vgg16/vgg16/block1_conv1/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block1_conv1/Conv2D/ReadVariableOpв:pretrained_vgg16/vgg16/block1_conv2/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block1_conv2/Conv2D/ReadVariableOpв:pretrained_vgg16/vgg16/block2_conv1/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block2_conv1/Conv2D/ReadVariableOpв:pretrained_vgg16/vgg16/block2_conv2/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block2_conv2/Conv2D/ReadVariableOpв:pretrained_vgg16/vgg16/block3_conv1/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block3_conv1/Conv2D/ReadVariableOpв:pretrained_vgg16/vgg16/block3_conv2/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block3_conv2/Conv2D/ReadVariableOpв:pretrained_vgg16/vgg16/block3_conv3/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block3_conv3/Conv2D/ReadVariableOpв:pretrained_vgg16/vgg16/block4_conv1/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block4_conv1/Conv2D/ReadVariableOpв:pretrained_vgg16/vgg16/block4_conv2/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block4_conv2/Conv2D/ReadVariableOpв:pretrained_vgg16/vgg16/block4_conv3/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block4_conv3/Conv2D/ReadVariableOpв:pretrained_vgg16/vgg16/block5_conv1/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block5_conv1/Conv2D/ReadVariableOpв:pretrained_vgg16/vgg16/block5_conv2/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block5_conv2/Conv2D/ReadVariableOpв:pretrained_vgg16/vgg16/block5_conv3/BiasAdd/ReadVariableOpв9pretrained_vgg16/vgg16/block5_conv3/Conv2D/ReadVariableOp─
9pretrained_vgg16/vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ф
*pretrained_vgg16/vgg16/block1_conv1/Conv2DConv2Dinput_4Apretrained_vgg16/vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
║
:pretrained_vgg16/vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ы
+pretrained_vgg16/vgg16/block1_conv1/BiasAddBiasAdd3pretrained_vgg16/vgg16/block1_conv1/Conv2D:output:0Bpretrained_vgg16/vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@в
(pretrained_vgg16/vgg16/block1_conv1/ReluRelu4pretrained_vgg16/vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@─
9pretrained_vgg16/vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0У
*pretrained_vgg16/vgg16/block1_conv2/Conv2DConv2D6pretrained_vgg16/vgg16/block1_conv1/Relu:activations:0Apretrained_vgg16/vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
║
:pretrained_vgg16/vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ы
+pretrained_vgg16/vgg16/block1_conv2/BiasAddBiasAdd3pretrained_vgg16/vgg16/block1_conv2/Conv2D:output:0Bpretrained_vgg16/vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@в
(pretrained_vgg16/vgg16/block1_conv2/ReluRelu4pretrained_vgg16/vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@┌
*pretrained_vgg16/vgg16/block1_pool/MaxPoolMaxPool6pretrained_vgg16/vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
┼
9pretrained_vgg16/vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0П
*pretrained_vgg16/vgg16/block2_conv1/Conv2DConv2D3pretrained_vgg16/vgg16/block1_pool/MaxPool:output:0Apretrained_vgg16/vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
╗
:pretrained_vgg16/vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ъ
+pretrained_vgg16/vgg16/block2_conv1/BiasAddBiasAdd3pretrained_vgg16/vgg16/block2_conv1/Conv2D:output:0Bpretrained_vgg16/vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppАб
(pretrained_vgg16/vgg16/block2_conv1/ReluRelu4pretrained_vgg16/vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ppА╞
9pretrained_vgg16/vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Т
*pretrained_vgg16/vgg16/block2_conv2/Conv2DConv2D6pretrained_vgg16/vgg16/block2_conv1/Relu:activations:0Apretrained_vgg16/vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
╗
:pretrained_vgg16/vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ъ
+pretrained_vgg16/vgg16/block2_conv2/BiasAddBiasAdd3pretrained_vgg16/vgg16/block2_conv2/Conv2D:output:0Bpretrained_vgg16/vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppАб
(pretrained_vgg16/vgg16/block2_conv2/ReluRelu4pretrained_vgg16/vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ppА█
*pretrained_vgg16/vgg16/block2_pool/MaxPoolMaxPool6pretrained_vgg16/vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:         88А*
ksize
*
paddingVALID*
strides
╞
9pretrained_vgg16/vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0П
*pretrained_vgg16/vgg16/block3_conv1/Conv2DConv2D3pretrained_vgg16/vgg16/block2_pool/MaxPool:output:0Apretrained_vgg16/vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
╗
:pretrained_vgg16/vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ъ
+pretrained_vgg16/vgg16/block3_conv1/BiasAddBiasAdd3pretrained_vgg16/vgg16/block3_conv1/Conv2D:output:0Bpretrained_vgg16/vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88Аб
(pretrained_vgg16/vgg16/block3_conv1/ReluRelu4pretrained_vgg16/vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         88А╞
9pretrained_vgg16/vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Т
*pretrained_vgg16/vgg16/block3_conv2/Conv2DConv2D6pretrained_vgg16/vgg16/block3_conv1/Relu:activations:0Apretrained_vgg16/vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
╗
:pretrained_vgg16/vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ъ
+pretrained_vgg16/vgg16/block3_conv2/BiasAddBiasAdd3pretrained_vgg16/vgg16/block3_conv2/Conv2D:output:0Bpretrained_vgg16/vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88Аб
(pretrained_vgg16/vgg16/block3_conv2/ReluRelu4pretrained_vgg16/vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         88А╞
9pretrained_vgg16/vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Т
*pretrained_vgg16/vgg16/block3_conv3/Conv2DConv2D6pretrained_vgg16/vgg16/block3_conv2/Relu:activations:0Apretrained_vgg16/vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
╗
:pretrained_vgg16/vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ъ
+pretrained_vgg16/vgg16/block3_conv3/BiasAddBiasAdd3pretrained_vgg16/vgg16/block3_conv3/Conv2D:output:0Bpretrained_vgg16/vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88Аб
(pretrained_vgg16/vgg16/block3_conv3/ReluRelu4pretrained_vgg16/vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         88А█
*pretrained_vgg16/vgg16/block3_pool/MaxPoolMaxPool6pretrained_vgg16/vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╞
9pretrained_vgg16/vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0П
*pretrained_vgg16/vgg16/block4_conv1/Conv2DConv2D3pretrained_vgg16/vgg16/block3_pool/MaxPool:output:0Apretrained_vgg16/vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╗
:pretrained_vgg16/vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ъ
+pretrained_vgg16/vgg16/block4_conv1/BiasAddBiasAdd3pretrained_vgg16/vgg16/block4_conv1/Conv2D:output:0Bpretrained_vgg16/vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аб
(pretrained_vgg16/vgg16/block4_conv1/ReluRelu4pretrained_vgg16/vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         А╞
9pretrained_vgg16/vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Т
*pretrained_vgg16/vgg16/block4_conv2/Conv2DConv2D6pretrained_vgg16/vgg16/block4_conv1/Relu:activations:0Apretrained_vgg16/vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╗
:pretrained_vgg16/vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ъ
+pretrained_vgg16/vgg16/block4_conv2/BiasAddBiasAdd3pretrained_vgg16/vgg16/block4_conv2/Conv2D:output:0Bpretrained_vgg16/vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аб
(pretrained_vgg16/vgg16/block4_conv2/ReluRelu4pretrained_vgg16/vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         А╞
9pretrained_vgg16/vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Т
*pretrained_vgg16/vgg16/block4_conv3/Conv2DConv2D6pretrained_vgg16/vgg16/block4_conv2/Relu:activations:0Apretrained_vgg16/vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╗
:pretrained_vgg16/vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ъ
+pretrained_vgg16/vgg16/block4_conv3/BiasAddBiasAdd3pretrained_vgg16/vgg16/block4_conv3/Conv2D:output:0Bpretrained_vgg16/vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аб
(pretrained_vgg16/vgg16/block4_conv3/ReluRelu4pretrained_vgg16/vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А█
*pretrained_vgg16/vgg16/block4_pool/MaxPoolMaxPool6pretrained_vgg16/vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╞
9pretrained_vgg16/vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0П
*pretrained_vgg16/vgg16/block5_conv1/Conv2DConv2D3pretrained_vgg16/vgg16/block4_pool/MaxPool:output:0Apretrained_vgg16/vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╗
:pretrained_vgg16/vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ъ
+pretrained_vgg16/vgg16/block5_conv1/BiasAddBiasAdd3pretrained_vgg16/vgg16/block5_conv1/Conv2D:output:0Bpretrained_vgg16/vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аб
(pretrained_vgg16/vgg16/block5_conv1/ReluRelu4pretrained_vgg16/vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         А╞
9pretrained_vgg16/vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Т
*pretrained_vgg16/vgg16/block5_conv2/Conv2DConv2D6pretrained_vgg16/vgg16/block5_conv1/Relu:activations:0Apretrained_vgg16/vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╗
:pretrained_vgg16/vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ъ
+pretrained_vgg16/vgg16/block5_conv2/BiasAddBiasAdd3pretrained_vgg16/vgg16/block5_conv2/Conv2D:output:0Bpretrained_vgg16/vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аб
(pretrained_vgg16/vgg16/block5_conv2/ReluRelu4pretrained_vgg16/vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         А╞
9pretrained_vgg16/vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOpBpretrained_vgg16_vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Т
*pretrained_vgg16/vgg16/block5_conv3/Conv2DConv2D6pretrained_vgg16/vgg16/block5_conv2/Relu:activations:0Apretrained_vgg16/vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╗
:pretrained_vgg16/vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOpCpretrained_vgg16_vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ъ
+pretrained_vgg16/vgg16/block5_conv3/BiasAddBiasAdd3pretrained_vgg16/vgg16/block5_conv3/Conv2D:output:0Bpretrained_vgg16/vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аб
(pretrained_vgg16/vgg16/block5_conv3/ReluRelu4pretrained_vgg16/vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А█
*pretrained_vgg16/vgg16/block5_pool/MaxPoolMaxPool6pretrained_vgg16/vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
У
Bpretrained_vgg16/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      э
0pretrained_vgg16/global_average_pooling2d_1/MeanMean3pretrained_vgg16/vgg16/block5_pool/MaxPool:output:0Kpretrained_vgg16/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:         АЭ
#pretrained_vgg16/dropout_1/IdentityIdentity9pretrained_vgg16/global_average_pooling2d_1/Mean:output:0*
T0*(
_output_shapes
:         Аз
.pretrained_vgg16/dense_1/MatMul/ReadVariableOpReadVariableOp7pretrained_vgg16_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0┴
pretrained_vgg16/dense_1/MatMulMatMul,pretrained_vgg16/dropout_1/Identity:output:06pretrained_vgg16/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         д
/pretrained_vgg16/dense_1/BiasAdd/ReadVariableOpReadVariableOp8pretrained_vgg16_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
 pretrained_vgg16/dense_1/BiasAddBiasAdd)pretrained_vgg16/dense_1/MatMul:product:07pretrained_vgg16/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
IdentityIdentity)pretrained_vgg16/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ╬
NoOpNoOp0^pretrained_vgg16/dense_1/BiasAdd/ReadVariableOp/^pretrained_vgg16/dense_1/MatMul/ReadVariableOp;^pretrained_vgg16/vgg16/block1_conv1/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block1_conv1/Conv2D/ReadVariableOp;^pretrained_vgg16/vgg16/block1_conv2/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block1_conv2/Conv2D/ReadVariableOp;^pretrained_vgg16/vgg16/block2_conv1/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block2_conv1/Conv2D/ReadVariableOp;^pretrained_vgg16/vgg16/block2_conv2/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block2_conv2/Conv2D/ReadVariableOp;^pretrained_vgg16/vgg16/block3_conv1/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block3_conv1/Conv2D/ReadVariableOp;^pretrained_vgg16/vgg16/block3_conv2/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block3_conv2/Conv2D/ReadVariableOp;^pretrained_vgg16/vgg16/block3_conv3/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block3_conv3/Conv2D/ReadVariableOp;^pretrained_vgg16/vgg16/block4_conv1/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block4_conv1/Conv2D/ReadVariableOp;^pretrained_vgg16/vgg16/block4_conv2/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block4_conv2/Conv2D/ReadVariableOp;^pretrained_vgg16/vgg16/block4_conv3/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block4_conv3/Conv2D/ReadVariableOp;^pretrained_vgg16/vgg16/block5_conv1/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block5_conv1/Conv2D/ReadVariableOp;^pretrained_vgg16/vgg16/block5_conv2/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block5_conv2/Conv2D/ReadVariableOp;^pretrained_vgg16/vgg16/block5_conv3/BiasAdd/ReadVariableOp:^pretrained_vgg16/vgg16/block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/pretrained_vgg16/dense_1/BiasAdd/ReadVariableOp/pretrained_vgg16/dense_1/BiasAdd/ReadVariableOp2`
.pretrained_vgg16/dense_1/MatMul/ReadVariableOp.pretrained_vgg16/dense_1/MatMul/ReadVariableOp2x
:pretrained_vgg16/vgg16/block1_conv1/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block1_conv1/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block1_conv1/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block1_conv1/Conv2D/ReadVariableOp2x
:pretrained_vgg16/vgg16/block1_conv2/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block1_conv2/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block1_conv2/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block1_conv2/Conv2D/ReadVariableOp2x
:pretrained_vgg16/vgg16/block2_conv1/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block2_conv1/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block2_conv1/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block2_conv1/Conv2D/ReadVariableOp2x
:pretrained_vgg16/vgg16/block2_conv2/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block2_conv2/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block2_conv2/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block2_conv2/Conv2D/ReadVariableOp2x
:pretrained_vgg16/vgg16/block3_conv1/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block3_conv1/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block3_conv1/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block3_conv1/Conv2D/ReadVariableOp2x
:pretrained_vgg16/vgg16/block3_conv2/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block3_conv2/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block3_conv2/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block3_conv2/Conv2D/ReadVariableOp2x
:pretrained_vgg16/vgg16/block3_conv3/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block3_conv3/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block3_conv3/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block3_conv3/Conv2D/ReadVariableOp2x
:pretrained_vgg16/vgg16/block4_conv1/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block4_conv1/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block4_conv1/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block4_conv1/Conv2D/ReadVariableOp2x
:pretrained_vgg16/vgg16/block4_conv2/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block4_conv2/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block4_conv2/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block4_conv2/Conv2D/ReadVariableOp2x
:pretrained_vgg16/vgg16/block4_conv3/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block4_conv3/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block4_conv3/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block4_conv3/Conv2D/ReadVariableOp2x
:pretrained_vgg16/vgg16/block5_conv1/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block5_conv1/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block5_conv1/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block5_conv1/Conv2D/ReadVariableOp2x
:pretrained_vgg16/vgg16/block5_conv2/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block5_conv2/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block5_conv2/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block5_conv2/Conv2D/ReadVariableOp2x
:pretrained_vgg16/vgg16/block5_conv3/BiasAdd/ReadVariableOp:pretrained_vgg16/vgg16/block5_conv3/BiasAdd/ReadVariableOp2v
9pretrained_vgg16/vgg16/block5_conv3/Conv2D/ReadVariableOp9pretrained_vgg16/vgg16/block5_conv3/Conv2D/ReadVariableOp:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_4
оЗ
Ї
?__inference_vgg16_layer_call_and_return_conditional_losses_5642

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@А;
,block2_conv1_biasadd_readvariableop_resource:	АG
+block2_conv2_conv2d_readvariableop_resource:АА;
,block2_conv2_biasadd_readvariableop_resource:	АG
+block3_conv1_conv2d_readvariableop_resource:АА;
,block3_conv1_biasadd_readvariableop_resource:	АG
+block3_conv2_conv2d_readvariableop_resource:АА;
,block3_conv2_biasadd_readvariableop_resource:	АG
+block3_conv3_conv2d_readvariableop_resource:АА;
,block3_conv3_biasadd_readvariableop_resource:	АG
+block4_conv1_conv2d_readvariableop_resource:АА;
,block4_conv1_biasadd_readvariableop_resource:	АG
+block4_conv2_conv2d_readvariableop_resource:АА;
,block4_conv2_biasadd_readvariableop_resource:	АG
+block4_conv3_conv2d_readvariableop_resource:АА;
,block4_conv3_biasadd_readvariableop_resource:	АG
+block5_conv1_conv2d_readvariableop_resource:АА;
,block5_conv1_biasadd_readvariableop_resource:	АG
+block5_conv2_conv2d_readvariableop_resource:АА;
,block5_conv2_biasadd_readvariableop_resource:	АG
+block5_conv3_conv2d_readvariableop_resource:АА;
,block5_conv3_biasadd_readvariableop_resource:	А
identityИв#block1_conv1/BiasAdd/ReadVariableOpв"block1_conv1/Conv2D/ReadVariableOpв#block1_conv2/BiasAdd/ReadVariableOpв"block1_conv2/Conv2D/ReadVariableOpв#block2_conv1/BiasAdd/ReadVariableOpв"block2_conv1/Conv2D/ReadVariableOpв#block2_conv2/BiasAdd/ReadVariableOpв"block2_conv2/Conv2D/ReadVariableOpв#block3_conv1/BiasAdd/ReadVariableOpв"block3_conv1/Conv2D/ReadVariableOpв#block3_conv2/BiasAdd/ReadVariableOpв"block3_conv2/Conv2D/ReadVariableOpв#block3_conv3/BiasAdd/ReadVariableOpв"block3_conv3/Conv2D/ReadVariableOpв#block4_conv1/BiasAdd/ReadVariableOpв"block4_conv1/Conv2D/ReadVariableOpв#block4_conv2/BiasAdd/ReadVariableOpв"block4_conv2/Conv2D/ReadVariableOpв#block4_conv3/BiasAdd/ReadVariableOpв"block4_conv3/Conv2D/ReadVariableOpв#block5_conv1/BiasAdd/ReadVariableOpв"block5_conv1/Conv2D/ReadVariableOpв#block5_conv2/BiasAdd/ReadVariableOpв"block5_conv2/Conv2D/ReadVariableOpв#block5_conv3/BiasAdd/ReadVariableOpв"block5_conv3/Conv2D/ReadVariableOpЦ
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╡
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
М
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@t
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@Ц
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╬
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
М
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@t
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@м
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
Ч
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╩
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
Н
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppАs
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ppАШ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
Н
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppАs
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ppАн
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:         88А*
ksize
*
paddingVALID*
strides
Ш
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
Н
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88Аs
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         88АШ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
Н
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88Аs
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         88АШ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
Н
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88Аs
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         88Ан
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         Ан
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         Ан
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
t
IdentityIdentityblock5_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:         АХ
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
ё
a
(__inference_dropout_1_layer_call_fn_5663

inputs
identityИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_4534p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ї
г
+__inference_block4_conv2_layer_call_fn_5898

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_3692x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ї
г
+__inference_block4_conv1_layer_call_fn_5878

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_3675x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
С
В
F__inference_block3_conv1_layer_call_and_return_conditional_losses_3623

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         88Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
Аа
ъ
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_5212

inputsK
1vgg16_block1_conv1_conv2d_readvariableop_resource:@@
2vgg16_block1_conv1_biasadd_readvariableop_resource:@K
1vgg16_block1_conv2_conv2d_readvariableop_resource:@@@
2vgg16_block1_conv2_biasadd_readvariableop_resource:@L
1vgg16_block2_conv1_conv2d_readvariableop_resource:@АA
2vgg16_block2_conv1_biasadd_readvariableop_resource:	АM
1vgg16_block2_conv2_conv2d_readvariableop_resource:ААA
2vgg16_block2_conv2_biasadd_readvariableop_resource:	АM
1vgg16_block3_conv1_conv2d_readvariableop_resource:ААA
2vgg16_block3_conv1_biasadd_readvariableop_resource:	АM
1vgg16_block3_conv2_conv2d_readvariableop_resource:ААA
2vgg16_block3_conv2_biasadd_readvariableop_resource:	АM
1vgg16_block3_conv3_conv2d_readvariableop_resource:ААA
2vgg16_block3_conv3_biasadd_readvariableop_resource:	АM
1vgg16_block4_conv1_conv2d_readvariableop_resource:ААA
2vgg16_block4_conv1_biasadd_readvariableop_resource:	АM
1vgg16_block4_conv2_conv2d_readvariableop_resource:ААA
2vgg16_block4_conv2_biasadd_readvariableop_resource:	АM
1vgg16_block4_conv3_conv2d_readvariableop_resource:ААA
2vgg16_block4_conv3_biasadd_readvariableop_resource:	АM
1vgg16_block5_conv1_conv2d_readvariableop_resource:ААA
2vgg16_block5_conv1_biasadd_readvariableop_resource:	АM
1vgg16_block5_conv2_conv2d_readvariableop_resource:ААA
2vgg16_block5_conv2_biasadd_readvariableop_resource:	АM
1vgg16_block5_conv3_conv2d_readvariableop_resource:ААA
2vgg16_block5_conv3_biasadd_readvariableop_resource:	А9
&dense_1_matmul_readvariableop_resource:	А5
'dense_1_biasadd_readvariableop_resource:
identityИвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpв)vgg16/block1_conv1/BiasAdd/ReadVariableOpв(vgg16/block1_conv1/Conv2D/ReadVariableOpв)vgg16/block1_conv2/BiasAdd/ReadVariableOpв(vgg16/block1_conv2/Conv2D/ReadVariableOpв)vgg16/block2_conv1/BiasAdd/ReadVariableOpв(vgg16/block2_conv1/Conv2D/ReadVariableOpв)vgg16/block2_conv2/BiasAdd/ReadVariableOpв(vgg16/block2_conv2/Conv2D/ReadVariableOpв)vgg16/block3_conv1/BiasAdd/ReadVariableOpв(vgg16/block3_conv1/Conv2D/ReadVariableOpв)vgg16/block3_conv2/BiasAdd/ReadVariableOpв(vgg16/block3_conv2/Conv2D/ReadVariableOpв)vgg16/block3_conv3/BiasAdd/ReadVariableOpв(vgg16/block3_conv3/Conv2D/ReadVariableOpв)vgg16/block4_conv1/BiasAdd/ReadVariableOpв(vgg16/block4_conv1/Conv2D/ReadVariableOpв)vgg16/block4_conv2/BiasAdd/ReadVariableOpв(vgg16/block4_conv2/Conv2D/ReadVariableOpв)vgg16/block4_conv3/BiasAdd/ReadVariableOpв(vgg16/block4_conv3/Conv2D/ReadVariableOpв)vgg16/block5_conv1/BiasAdd/ReadVariableOpв(vgg16/block5_conv1/Conv2D/ReadVariableOpв)vgg16/block5_conv2/BiasAdd/ReadVariableOpв(vgg16/block5_conv2/Conv2D/ReadVariableOpв)vgg16/block5_conv3/BiasAdd/ReadVariableOpв(vgg16/block5_conv3/Conv2D/ReadVariableOpв
(vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0┴
vgg16/block1_conv1/Conv2DConv2Dinputs0vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
Ш
)vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╕
vgg16/block1_conv1/BiasAddBiasAdd"vgg16/block1_conv1/Conv2D:output:01vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@А
vgg16/block1_conv1/ReluRelu#vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@в
(vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0р
vgg16/block1_conv2/Conv2DConv2D%vgg16/block1_conv1/Relu:activations:00vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
Ш
)vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╕
vgg16/block1_conv2/BiasAddBiasAdd"vgg16/block1_conv2/Conv2D:output:01vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@А
vgg16/block1_conv2/ReluRelu#vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@╕
vgg16/block1_pool/MaxPoolMaxPool%vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
г
(vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0▄
vgg16/block2_conv1/Conv2DConv2D"vgg16/block1_pool/MaxPool:output:00vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
Щ
)vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block2_conv1/BiasAddBiasAdd"vgg16/block2_conv1/Conv2D:output:01vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА
vgg16/block2_conv1/ReluRelu#vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ppАд
(vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block2_conv2/Conv2DConv2D%vgg16/block2_conv1/Relu:activations:00vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
Щ
)vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block2_conv2/BiasAddBiasAdd"vgg16/block2_conv2/Conv2D:output:01vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА
vgg16/block2_conv2/ReluRelu#vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ppА╣
vgg16/block2_pool/MaxPoolMaxPool%vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:         88А*
ksize
*
paddingVALID*
strides
д
(vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▄
vgg16/block3_conv1/Conv2DConv2D"vgg16/block2_pool/MaxPool:output:00vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
Щ
)vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block3_conv1/BiasAddBiasAdd"vgg16/block3_conv1/Conv2D:output:01vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А
vgg16/block3_conv1/ReluRelu#vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         88Ад
(vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block3_conv2/Conv2DConv2D%vgg16/block3_conv1/Relu:activations:00vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
Щ
)vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block3_conv2/BiasAddBiasAdd"vgg16/block3_conv2/Conv2D:output:01vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А
vgg16/block3_conv2/ReluRelu#vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         88Ад
(vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block3_conv3/Conv2DConv2D%vgg16/block3_conv2/Relu:activations:00vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
Щ
)vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block3_conv3/BiasAddBiasAdd"vgg16/block3_conv3/Conv2D:output:01vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А
vgg16/block3_conv3/ReluRelu#vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         88А╣
vgg16/block3_pool/MaxPoolMaxPool%vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
д
(vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▄
vgg16/block4_conv1/Conv2DConv2D"vgg16/block3_pool/MaxPool:output:00vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block4_conv1/BiasAddBiasAdd"vgg16/block4_conv1/Conv2D:output:01vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
vgg16/block4_conv1/ReluRelu#vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         Ад
(vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block4_conv2/Conv2DConv2D%vgg16/block4_conv1/Relu:activations:00vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block4_conv2/BiasAddBiasAdd"vgg16/block4_conv2/Conv2D:output:01vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
vgg16/block4_conv2/ReluRelu#vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         Ад
(vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block4_conv3/Conv2DConv2D%vgg16/block4_conv2/Relu:activations:00vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block4_conv3/BiasAddBiasAdd"vgg16/block4_conv3/Conv2D:output:01vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
vgg16/block4_conv3/ReluRelu#vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А╣
vgg16/block4_pool/MaxPoolMaxPool%vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
д
(vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▄
vgg16/block5_conv1/Conv2DConv2D"vgg16/block4_pool/MaxPool:output:00vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block5_conv1/BiasAddBiasAdd"vgg16/block5_conv1/Conv2D:output:01vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
vgg16/block5_conv1/ReluRelu#vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         Ад
(vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block5_conv2/Conv2DConv2D%vgg16/block5_conv1/Relu:activations:00vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block5_conv2/BiasAddBiasAdd"vgg16/block5_conv2/Conv2D:output:01vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
vgg16/block5_conv2/ReluRelu#vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         Ад
(vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block5_conv3/Conv2DConv2D%vgg16/block5_conv2/Relu:activations:00vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block5_conv3/BiasAddBiasAdd"vgg16/block5_conv3/Conv2D:output:01vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
vgg16/block5_conv3/ReluRelu#vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А╣
vgg16/block5_pool/MaxPoolMaxPool%vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
В
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      ║
global_average_pooling2d_1/MeanMean"vgg16/block5_pool/MaxPool:output:0:global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:         А{
dropout_1/IdentityIdentity(global_average_pooling2d_1/Mean:output:0*
T0*(
_output_shapes
:         АЕ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0О
dense_1/MatMulMatMuldropout_1/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Є	
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*^vgg16/block1_conv1/BiasAdd/ReadVariableOp)^vgg16/block1_conv1/Conv2D/ReadVariableOp*^vgg16/block1_conv2/BiasAdd/ReadVariableOp)^vgg16/block1_conv2/Conv2D/ReadVariableOp*^vgg16/block2_conv1/BiasAdd/ReadVariableOp)^vgg16/block2_conv1/Conv2D/ReadVariableOp*^vgg16/block2_conv2/BiasAdd/ReadVariableOp)^vgg16/block2_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv1/BiasAdd/ReadVariableOp)^vgg16/block3_conv1/Conv2D/ReadVariableOp*^vgg16/block3_conv2/BiasAdd/ReadVariableOp)^vgg16/block3_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv3/BiasAdd/ReadVariableOp)^vgg16/block3_conv3/Conv2D/ReadVariableOp*^vgg16/block4_conv1/BiasAdd/ReadVariableOp)^vgg16/block4_conv1/Conv2D/ReadVariableOp*^vgg16/block4_conv2/BiasAdd/ReadVariableOp)^vgg16/block4_conv2/Conv2D/ReadVariableOp*^vgg16/block4_conv3/BiasAdd/ReadVariableOp)^vgg16/block4_conv3/Conv2D/ReadVariableOp*^vgg16/block5_conv1/BiasAdd/ReadVariableOp)^vgg16/block5_conv1/Conv2D/ReadVariableOp*^vgg16/block5_conv2/BiasAdd/ReadVariableOp)^vgg16/block5_conv2/Conv2D/ReadVariableOp*^vgg16/block5_conv3/BiasAdd/ReadVariableOp)^vgg16/block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2V
)vgg16/block1_conv1/BiasAdd/ReadVariableOp)vgg16/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv1/Conv2D/ReadVariableOp(vgg16/block1_conv1/Conv2D/ReadVariableOp2V
)vgg16/block1_conv2/BiasAdd/ReadVariableOp)vgg16/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv2/Conv2D/ReadVariableOp(vgg16/block1_conv2/Conv2D/ReadVariableOp2V
)vgg16/block2_conv1/BiasAdd/ReadVariableOp)vgg16/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv1/Conv2D/ReadVariableOp(vgg16/block2_conv1/Conv2D/ReadVariableOp2V
)vgg16/block2_conv2/BiasAdd/ReadVariableOp)vgg16/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv2/Conv2D/ReadVariableOp(vgg16/block2_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv1/BiasAdd/ReadVariableOp)vgg16/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv1/Conv2D/ReadVariableOp(vgg16/block3_conv1/Conv2D/ReadVariableOp2V
)vgg16/block3_conv2/BiasAdd/ReadVariableOp)vgg16/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv2/Conv2D/ReadVariableOp(vgg16/block3_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv3/BiasAdd/ReadVariableOp)vgg16/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv3/Conv2D/ReadVariableOp(vgg16/block3_conv3/Conv2D/ReadVariableOp2V
)vgg16/block4_conv1/BiasAdd/ReadVariableOp)vgg16/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv1/Conv2D/ReadVariableOp(vgg16/block4_conv1/Conv2D/ReadVariableOp2V
)vgg16/block4_conv2/BiasAdd/ReadVariableOp)vgg16/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv2/Conv2D/ReadVariableOp(vgg16/block4_conv2/Conv2D/ReadVariableOp2V
)vgg16/block4_conv3/BiasAdd/ReadVariableOp)vgg16/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv3/Conv2D/ReadVariableOp(vgg16/block4_conv3/Conv2D/ReadVariableOp2V
)vgg16/block5_conv1/BiasAdd/ReadVariableOp)vgg16/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv1/Conv2D/ReadVariableOp(vgg16/block5_conv1/Conv2D/ReadVariableOp2V
)vgg16/block5_conv2/BiasAdd/ReadVariableOp)vgg16/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv2/Conv2D/ReadVariableOp(vgg16/block5_conv2/Conv2D/ReadVariableOp2V
)vgg16/block5_conv3/BiasAdd/ReadVariableOp)vgg16/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv3/Conv2D/ReadVariableOp(vgg16/block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
╒з
ъ
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_5328

inputsK
1vgg16_block1_conv1_conv2d_readvariableop_resource:@@
2vgg16_block1_conv1_biasadd_readvariableop_resource:@K
1vgg16_block1_conv2_conv2d_readvariableop_resource:@@@
2vgg16_block1_conv2_biasadd_readvariableop_resource:@L
1vgg16_block2_conv1_conv2d_readvariableop_resource:@АA
2vgg16_block2_conv1_biasadd_readvariableop_resource:	АM
1vgg16_block2_conv2_conv2d_readvariableop_resource:ААA
2vgg16_block2_conv2_biasadd_readvariableop_resource:	АM
1vgg16_block3_conv1_conv2d_readvariableop_resource:ААA
2vgg16_block3_conv1_biasadd_readvariableop_resource:	АM
1vgg16_block3_conv2_conv2d_readvariableop_resource:ААA
2vgg16_block3_conv2_biasadd_readvariableop_resource:	АM
1vgg16_block3_conv3_conv2d_readvariableop_resource:ААA
2vgg16_block3_conv3_biasadd_readvariableop_resource:	АM
1vgg16_block4_conv1_conv2d_readvariableop_resource:ААA
2vgg16_block4_conv1_biasadd_readvariableop_resource:	АM
1vgg16_block4_conv2_conv2d_readvariableop_resource:ААA
2vgg16_block4_conv2_biasadd_readvariableop_resource:	АM
1vgg16_block4_conv3_conv2d_readvariableop_resource:ААA
2vgg16_block4_conv3_biasadd_readvariableop_resource:	АM
1vgg16_block5_conv1_conv2d_readvariableop_resource:ААA
2vgg16_block5_conv1_biasadd_readvariableop_resource:	АM
1vgg16_block5_conv2_conv2d_readvariableop_resource:ААA
2vgg16_block5_conv2_biasadd_readvariableop_resource:	АM
1vgg16_block5_conv3_conv2d_readvariableop_resource:ААA
2vgg16_block5_conv3_biasadd_readvariableop_resource:	А9
&dense_1_matmul_readvariableop_resource:	А5
'dense_1_biasadd_readvariableop_resource:
identityИвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpв)vgg16/block1_conv1/BiasAdd/ReadVariableOpв(vgg16/block1_conv1/Conv2D/ReadVariableOpв)vgg16/block1_conv2/BiasAdd/ReadVariableOpв(vgg16/block1_conv2/Conv2D/ReadVariableOpв)vgg16/block2_conv1/BiasAdd/ReadVariableOpв(vgg16/block2_conv1/Conv2D/ReadVariableOpв)vgg16/block2_conv2/BiasAdd/ReadVariableOpв(vgg16/block2_conv2/Conv2D/ReadVariableOpв)vgg16/block3_conv1/BiasAdd/ReadVariableOpв(vgg16/block3_conv1/Conv2D/ReadVariableOpв)vgg16/block3_conv2/BiasAdd/ReadVariableOpв(vgg16/block3_conv2/Conv2D/ReadVariableOpв)vgg16/block3_conv3/BiasAdd/ReadVariableOpв(vgg16/block3_conv3/Conv2D/ReadVariableOpв)vgg16/block4_conv1/BiasAdd/ReadVariableOpв(vgg16/block4_conv1/Conv2D/ReadVariableOpв)vgg16/block4_conv2/BiasAdd/ReadVariableOpв(vgg16/block4_conv2/Conv2D/ReadVariableOpв)vgg16/block4_conv3/BiasAdd/ReadVariableOpв(vgg16/block4_conv3/Conv2D/ReadVariableOpв)vgg16/block5_conv1/BiasAdd/ReadVariableOpв(vgg16/block5_conv1/Conv2D/ReadVariableOpв)vgg16/block5_conv2/BiasAdd/ReadVariableOpв(vgg16/block5_conv2/Conv2D/ReadVariableOpв)vgg16/block5_conv3/BiasAdd/ReadVariableOpв(vgg16/block5_conv3/Conv2D/ReadVariableOpв
(vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0┴
vgg16/block1_conv1/Conv2DConv2Dinputs0vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
Ш
)vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╕
vgg16/block1_conv1/BiasAddBiasAdd"vgg16/block1_conv1/Conv2D:output:01vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@А
vgg16/block1_conv1/ReluRelu#vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@в
(vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0р
vgg16/block1_conv2/Conv2DConv2D%vgg16/block1_conv1/Relu:activations:00vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
Ш
)vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╕
vgg16/block1_conv2/BiasAddBiasAdd"vgg16/block1_conv2/Conv2D:output:01vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@А
vgg16/block1_conv2/ReluRelu#vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@╕
vgg16/block1_pool/MaxPoolMaxPool%vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
г
(vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0▄
vgg16/block2_conv1/Conv2DConv2D"vgg16/block1_pool/MaxPool:output:00vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
Щ
)vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block2_conv1/BiasAddBiasAdd"vgg16/block2_conv1/Conv2D:output:01vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА
vgg16/block2_conv1/ReluRelu#vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ppАд
(vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block2_conv2/Conv2DConv2D%vgg16/block2_conv1/Relu:activations:00vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
Щ
)vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block2_conv2/BiasAddBiasAdd"vgg16/block2_conv2/Conv2D:output:01vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА
vgg16/block2_conv2/ReluRelu#vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ppА╣
vgg16/block2_pool/MaxPoolMaxPool%vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:         88А*
ksize
*
paddingVALID*
strides
д
(vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▄
vgg16/block3_conv1/Conv2DConv2D"vgg16/block2_pool/MaxPool:output:00vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
Щ
)vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block3_conv1/BiasAddBiasAdd"vgg16/block3_conv1/Conv2D:output:01vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А
vgg16/block3_conv1/ReluRelu#vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         88Ад
(vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block3_conv2/Conv2DConv2D%vgg16/block3_conv1/Relu:activations:00vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
Щ
)vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block3_conv2/BiasAddBiasAdd"vgg16/block3_conv2/Conv2D:output:01vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А
vgg16/block3_conv2/ReluRelu#vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         88Ад
(vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block3_conv3/Conv2DConv2D%vgg16/block3_conv2/Relu:activations:00vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
Щ
)vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block3_conv3/BiasAddBiasAdd"vgg16/block3_conv3/Conv2D:output:01vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А
vgg16/block3_conv3/ReluRelu#vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         88А╣
vgg16/block3_pool/MaxPoolMaxPool%vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
д
(vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▄
vgg16/block4_conv1/Conv2DConv2D"vgg16/block3_pool/MaxPool:output:00vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block4_conv1/BiasAddBiasAdd"vgg16/block4_conv1/Conv2D:output:01vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
vgg16/block4_conv1/ReluRelu#vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         Ад
(vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block4_conv2/Conv2DConv2D%vgg16/block4_conv1/Relu:activations:00vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block4_conv2/BiasAddBiasAdd"vgg16/block4_conv2/Conv2D:output:01vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
vgg16/block4_conv2/ReluRelu#vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         Ад
(vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block4_conv3/Conv2DConv2D%vgg16/block4_conv2/Relu:activations:00vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block4_conv3/BiasAddBiasAdd"vgg16/block4_conv3/Conv2D:output:01vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
vgg16/block4_conv3/ReluRelu#vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А╣
vgg16/block4_pool/MaxPoolMaxPool%vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
д
(vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▄
vgg16/block5_conv1/Conv2DConv2D"vgg16/block4_pool/MaxPool:output:00vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block5_conv1/BiasAddBiasAdd"vgg16/block5_conv1/Conv2D:output:01vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
vgg16/block5_conv1/ReluRelu#vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         Ад
(vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block5_conv2/Conv2DConv2D%vgg16/block5_conv1/Relu:activations:00vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block5_conv2/BiasAddBiasAdd"vgg16/block5_conv2/Conv2D:output:01vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
vgg16/block5_conv2/ReluRelu#vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         Ад
(vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
vgg16/block5_conv3/Conv2DConv2D%vgg16/block5_conv2/Relu:activations:00vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
vgg16/block5_conv3/BiasAddBiasAdd"vgg16/block5_conv3/Conv2D:output:01vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
vgg16/block5_conv3/ReluRelu#vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А╣
vgg16/block5_pool/MaxPoolMaxPool%vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
В
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      ║
global_average_pooling2d_1/MeanMean"vgg16/block5_pool/MaxPool:output:0:global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:         А\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ы
dropout_1/dropout/MulMul(global_average_pooling2d_1/Mean:output:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:         Аo
dropout_1/dropout/ShapeShape(global_average_pooling2d_1/Mean:output:0*
T0*
_output_shapes
:б
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>┼
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АД
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АИ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:         АЕ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0О
dense_1/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Є	
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*^vgg16/block1_conv1/BiasAdd/ReadVariableOp)^vgg16/block1_conv1/Conv2D/ReadVariableOp*^vgg16/block1_conv2/BiasAdd/ReadVariableOp)^vgg16/block1_conv2/Conv2D/ReadVariableOp*^vgg16/block2_conv1/BiasAdd/ReadVariableOp)^vgg16/block2_conv1/Conv2D/ReadVariableOp*^vgg16/block2_conv2/BiasAdd/ReadVariableOp)^vgg16/block2_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv1/BiasAdd/ReadVariableOp)^vgg16/block3_conv1/Conv2D/ReadVariableOp*^vgg16/block3_conv2/BiasAdd/ReadVariableOp)^vgg16/block3_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv3/BiasAdd/ReadVariableOp)^vgg16/block3_conv3/Conv2D/ReadVariableOp*^vgg16/block4_conv1/BiasAdd/ReadVariableOp)^vgg16/block4_conv1/Conv2D/ReadVariableOp*^vgg16/block4_conv2/BiasAdd/ReadVariableOp)^vgg16/block4_conv2/Conv2D/ReadVariableOp*^vgg16/block4_conv3/BiasAdd/ReadVariableOp)^vgg16/block4_conv3/Conv2D/ReadVariableOp*^vgg16/block5_conv1/BiasAdd/ReadVariableOp)^vgg16/block5_conv1/Conv2D/ReadVariableOp*^vgg16/block5_conv2/BiasAdd/ReadVariableOp)^vgg16/block5_conv2/Conv2D/ReadVariableOp*^vgg16/block5_conv3/BiasAdd/ReadVariableOp)^vgg16/block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2V
)vgg16/block1_conv1/BiasAdd/ReadVariableOp)vgg16/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv1/Conv2D/ReadVariableOp(vgg16/block1_conv1/Conv2D/ReadVariableOp2V
)vgg16/block1_conv2/BiasAdd/ReadVariableOp)vgg16/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv2/Conv2D/ReadVariableOp(vgg16/block1_conv2/Conv2D/ReadVariableOp2V
)vgg16/block2_conv1/BiasAdd/ReadVariableOp)vgg16/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv1/Conv2D/ReadVariableOp(vgg16/block2_conv1/Conv2D/ReadVariableOp2V
)vgg16/block2_conv2/BiasAdd/ReadVariableOp)vgg16/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv2/Conv2D/ReadVariableOp(vgg16/block2_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv1/BiasAdd/ReadVariableOp)vgg16/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv1/Conv2D/ReadVariableOp(vgg16/block3_conv1/Conv2D/ReadVariableOp2V
)vgg16/block3_conv2/BiasAdd/ReadVariableOp)vgg16/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv2/Conv2D/ReadVariableOp(vgg16/block3_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv3/BiasAdd/ReadVariableOp)vgg16/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv3/Conv2D/ReadVariableOp(vgg16/block3_conv3/Conv2D/ReadVariableOp2V
)vgg16/block4_conv1/BiasAdd/ReadVariableOp)vgg16/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv1/Conv2D/ReadVariableOp(vgg16/block4_conv1/Conv2D/ReadVariableOp2V
)vgg16/block4_conv2/BiasAdd/ReadVariableOp)vgg16/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv2/Conv2D/ReadVariableOp(vgg16/block4_conv2/Conv2D/ReadVariableOp2V
)vgg16/block4_conv3/BiasAdd/ReadVariableOp)vgg16/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv3/Conv2D/ReadVariableOp(vgg16/block4_conv3/Conv2D/ReadVariableOp2V
)vgg16/block5_conv1/BiasAdd/ReadVariableOp)vgg16/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv1/Conv2D/ReadVariableOp(vgg16/block5_conv1/Conv2D/ReadVariableOp2V
)vgg16/block5_conv2/BiasAdd/ReadVariableOp)vgg16/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv2/Conv2D/ReadVariableOp(vgg16/block5_conv2/Conv2D/ReadVariableOp2V
)vgg16/block5_conv3/BiasAdd/ReadVariableOp)vgg16/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv3/Conv2D/ReadVariableOp(vgg16/block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
╘
ї
/__inference_pretrained_vgg16_layer_call_fn_4784
input_4!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:
identityИвStatefulPartitionedCall├
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4664o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_4
∙	
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_5680

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
С
В
F__inference_block3_conv2_layer_call_and_return_conditional_losses_5839

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         88Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
ў
▒
$__inference_vgg16_layer_call_fn_3824
input_3!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_vgg16_layer_call_and_return_conditional_losses_3769x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_3
ї
г
+__inference_block2_conv2_layer_call_fn_5778

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_3605x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ppА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ppА: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ppА
 
_user_specified_nameinputs
╡
p
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_5653

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:                  ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
С
 
F__inference_block1_conv2_layer_call_and_return_conditional_losses_3570

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         рр@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         рр@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр@
 
_user_specified_nameinputs
Н
a
E__inference_block4_pool_layer_call_and_return_conditional_losses_3520

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┌
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_5668

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
С
В
F__inference_block4_conv2_layer_call_and_return_conditional_losses_5909

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
З
╚
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4445

inputs$

vgg16_4367:@

vgg16_4369:@$

vgg16_4371:@@

vgg16_4373:@%

vgg16_4375:@А

vgg16_4377:	А&

vgg16_4379:АА

vgg16_4381:	А&

vgg16_4383:АА

vgg16_4385:	А&

vgg16_4387:АА

vgg16_4389:	А&

vgg16_4391:АА

vgg16_4393:	А&

vgg16_4395:АА

vgg16_4397:	А&

vgg16_4399:АА

vgg16_4401:	А&

vgg16_4403:АА

vgg16_4405:	А&

vgg16_4407:АА

vgg16_4409:	А&

vgg16_4411:АА

vgg16_4413:	А&

vgg16_4415:АА

vgg16_4417:	А
dense_1_4439:	А
dense_1_4441:
identityИвdense_1/StatefulPartitionedCallвvgg16/StatefulPartitionedCall╖
vgg16/StatefulPartitionedCallStatefulPartitionedCallinputs
vgg16_4367
vgg16_4369
vgg16_4371
vgg16_4373
vgg16_4375
vgg16_4377
vgg16_4379
vgg16_4381
vgg16_4383
vgg16_4385
vgg16_4387
vgg16_4389
vgg16_4391
vgg16_4393
vgg16_4395
vgg16_4397
vgg16_4399
vgg16_4401
vgg16_4403
vgg16_4405
vgg16_4407
vgg16_4409
vgg16_4411
vgg16_4413
vgg16_4415
vgg16_4417*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_vgg16_layer_call_and_return_conditional_losses_3769√
*global_average_pooling2d_1/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_4357ц
dropout_1/PartitionedCallPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_4426В
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_4439dense_1_4441*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_4438w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         И
NoOpNoOp ^dense_1/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
ї
г
+__inference_block5_conv3_layer_call_fn_5988

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_3761x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ї
г
+__inference_block3_conv3_layer_call_fn_5848

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_3657x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         88А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
Н
a
E__inference_block5_pool_layer_call_and_return_conditional_losses_3532

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╚	
є
A__inference_dense_1_layer_call_and_return_conditional_losses_4438

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ї
г
+__inference_block3_conv2_layer_call_fn_5828

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_3640x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         88А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
Н
a
E__inference_block2_pool_layer_call_and_return_conditional_losses_3496

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ї
г
+__inference_block3_conv1_layer_call_fn_5808

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_3623x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         88А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
╚	
є
A__inference_dense_1_layer_call_and_return_conditional_losses_5699

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
м
F
*__inference_block1_pool_layer_call_fn_5744

inputs
identity╙
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_3484Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Н
Б
F__inference_block2_conv1_layer_call_and_return_conditional_losses_5769

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppАY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ppАj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ppАw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs
С
В
F__inference_block4_conv1_layer_call_and_return_conditional_losses_5889

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
∙	
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_4534

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
С
В
F__inference_block5_conv3_layer_call_and_return_conditional_losses_5999

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ї
░
$__inference_vgg16_layer_call_fn_5442

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А
identityИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_vgg16_layer_call_and_return_conditional_losses_4087x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
Х
U
9__inference_global_average_pooling2d_1_layer_call_fn_5647

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:                  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_4357i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ь
ш
"__inference_signature_wrapper_4981
input_4!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_3475o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_4
С
В
F__inference_block3_conv2_layer_call_and_return_conditional_losses_3640

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         88Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
ў
▒
$__inference_vgg16_layer_call_fn_4199
input_3!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_vgg16_layer_call_and_return_conditional_losses_4087x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_3
ї
г
+__inference_block5_conv1_layer_call_fn_5948

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_3727x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
С
 
F__inference_block1_conv1_layer_call_and_return_conditional_losses_5719

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         рр@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         рр@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
▐U
я
?__inference_vgg16_layer_call_and_return_conditional_losses_3769

inputs+
block1_conv1_3554:@
block1_conv1_3556:@+
block1_conv2_3571:@@
block1_conv2_3573:@,
block2_conv1_3589:@А 
block2_conv1_3591:	А-
block2_conv2_3606:АА 
block2_conv2_3608:	А-
block3_conv1_3624:АА 
block3_conv1_3626:	А-
block3_conv2_3641:АА 
block3_conv2_3643:	А-
block3_conv3_3658:АА 
block3_conv3_3660:	А-
block4_conv1_3676:АА 
block4_conv1_3678:	А-
block4_conv2_3693:АА 
block4_conv2_3695:	А-
block4_conv3_3710:АА 
block4_conv3_3712:	А-
block5_conv1_3728:АА 
block5_conv1_3730:	А-
block5_conv2_3745:АА 
block5_conv2_3747:	А-
block5_conv3_3762:АА 
block5_conv3_3764:	А
identityИв$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallД
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_3554block1_conv1_3556*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_3553л
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_3571block1_conv2_3573*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_3570ы
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_3484б
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_3589block2_conv1_3591*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_3588к
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_3606block2_conv2_3608*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_3605ь
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_3496б
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_3624block3_conv1_3626*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_3623к
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_3641block3_conv2_3643*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_3640к
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_3658block3_conv3_3660*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_3657ь
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_3508б
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_3676block4_conv1_3678*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_3675к
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_3693block4_conv2_3695*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_3692к
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_3710block4_conv3_3712*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_3709ь
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_3520б
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_3728block5_conv1_3730*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_3727к
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_3745block5_conv2_3747*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_3744к
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_3762block5_conv3_3764*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_3761ь
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_3532|
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А┴
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
Н
a
E__inference_block1_pool_layer_call_and_return_conditional_losses_3484

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
м
F
*__inference_block4_pool_layer_call_fn_5934

inputs
identity╙
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_3520Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
К
╔
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4848
input_4$

vgg16_4787:@

vgg16_4789:@$

vgg16_4791:@@

vgg16_4793:@%

vgg16_4795:@А

vgg16_4797:	А&

vgg16_4799:АА

vgg16_4801:	А&

vgg16_4803:АА

vgg16_4805:	А&

vgg16_4807:АА

vgg16_4809:	А&

vgg16_4811:АА

vgg16_4813:	А&

vgg16_4815:АА

vgg16_4817:	А&

vgg16_4819:АА

vgg16_4821:	А&

vgg16_4823:АА

vgg16_4825:	А&

vgg16_4827:АА

vgg16_4829:	А&

vgg16_4831:АА

vgg16_4833:	А&

vgg16_4835:АА

vgg16_4837:	А
dense_1_4842:	А
dense_1_4844:
identityИвdense_1/StatefulPartitionedCallвvgg16/StatefulPartitionedCall╕
vgg16/StatefulPartitionedCallStatefulPartitionedCallinput_4
vgg16_4787
vgg16_4789
vgg16_4791
vgg16_4793
vgg16_4795
vgg16_4797
vgg16_4799
vgg16_4801
vgg16_4803
vgg16_4805
vgg16_4807
vgg16_4809
vgg16_4811
vgg16_4813
vgg16_4815
vgg16_4817
vgg16_4819
vgg16_4821
vgg16_4823
vgg16_4825
vgg16_4827
vgg16_4829
vgg16_4831
vgg16_4833
vgg16_4835
vgg16_4837*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_vgg16_layer_call_and_return_conditional_losses_3769√
*global_average_pooling2d_1/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_4357ц
dropout_1/PartitionedCallPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_4426В
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_4842dense_1_4844*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_4438w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         И
NoOpNoOp ^dense_1/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_4
░Э
▒
 __inference__traced_restore_6288
file_prefix2
assignvariableop_dense_1_kernel:	А-
assignvariableop_1_dense_1_bias:@
&assignvariableop_2_block1_conv1_kernel:@2
$assignvariableop_3_block1_conv1_bias:@@
&assignvariableop_4_block1_conv2_kernel:@@2
$assignvariableop_5_block1_conv2_bias:@A
&assignvariableop_6_block2_conv1_kernel:@А3
$assignvariableop_7_block2_conv1_bias:	АB
&assignvariableop_8_block2_conv2_kernel:АА3
$assignvariableop_9_block2_conv2_bias:	АC
'assignvariableop_10_block3_conv1_kernel:АА4
%assignvariableop_11_block3_conv1_bias:	АC
'assignvariableop_12_block3_conv2_kernel:АА4
%assignvariableop_13_block3_conv2_bias:	АC
'assignvariableop_14_block3_conv3_kernel:АА4
%assignvariableop_15_block3_conv3_bias:	АC
'assignvariableop_16_block4_conv1_kernel:АА4
%assignvariableop_17_block4_conv1_bias:	АC
'assignvariableop_18_block4_conv2_kernel:АА4
%assignvariableop_19_block4_conv2_bias:	АC
'assignvariableop_20_block4_conv3_kernel:АА4
%assignvariableop_21_block4_conv3_bias:	АC
'assignvariableop_22_block5_conv1_kernel:АА4
%assignvariableop_23_block5_conv1_bias:	АC
'assignvariableop_24_block5_conv2_kernel:АА4
%assignvariableop_25_block5_conv2_bias:	АC
'assignvariableop_26_block5_conv3_kernel:АА4
%assignvariableop_27_block5_conv3_bias:	А'
assignvariableop_28_adam_iter:	 )
assignvariableop_29_adam_beta_1: )
assignvariableop_30_adam_beta_2: (
assignvariableop_31_adam_decay: 0
&assignvariableop_32_adam_learning_rate: %
assignvariableop_33_total_1: %
assignvariableop_34_count_1: #
assignvariableop_35_total: #
assignvariableop_36_count: <
)assignvariableop_37_adam_dense_1_kernel_m:	А5
'assignvariableop_38_adam_dense_1_bias_m:<
)assignvariableop_39_adam_dense_1_kernel_v:	А5
'assignvariableop_40_adam_dense_1_bias_v:
identity_42ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9д
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*╩
value└B╜*B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH─
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B є
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╛
_output_shapesл
и::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_2AssignVariableOp&assignvariableop_2_block1_conv1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_3AssignVariableOp$assignvariableop_3_block1_conv1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_4AssignVariableOp&assignvariableop_4_block1_conv2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_5AssignVariableOp$assignvariableop_5_block1_conv2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_6AssignVariableOp&assignvariableop_6_block2_conv1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_7AssignVariableOp$assignvariableop_7_block2_conv1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_8AssignVariableOp&assignvariableop_8_block2_conv2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_9AssignVariableOp$assignvariableop_9_block2_conv2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_10AssignVariableOp'assignvariableop_10_block3_conv1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_11AssignVariableOp%assignvariableop_11_block3_conv1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_12AssignVariableOp'assignvariableop_12_block3_conv2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_13AssignVariableOp%assignvariableop_13_block3_conv2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_14AssignVariableOp'assignvariableop_14_block3_conv3_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_15AssignVariableOp%assignvariableop_15_block3_conv3_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_16AssignVariableOp'assignvariableop_16_block4_conv1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_17AssignVariableOp%assignvariableop_17_block4_conv1_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_18AssignVariableOp'assignvariableop_18_block4_conv2_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_19AssignVariableOp%assignvariableop_19_block4_conv2_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_20AssignVariableOp'assignvariableop_20_block4_conv3_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_21AssignVariableOp%assignvariableop_21_block4_conv3_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_22AssignVariableOp'assignvariableop_22_block5_conv1_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_23AssignVariableOp%assignvariableop_23_block5_conv1_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_24AssignVariableOp'assignvariableop_24_block5_conv2_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_25AssignVariableOp%assignvariableop_25_block5_conv2_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_26AssignVariableOp'assignvariableop_26_block5_conv3_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_27AssignVariableOp%assignvariableop_27_block5_conv3_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_iterIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_beta_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_beta_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_decayIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_learning_rateIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_35AssignVariableOpassignvariableop_35_totalIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_36AssignVariableOpassignvariableop_36_countIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_1_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_1_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_1_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_1_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ╒
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_42IdentityIdentity_41:output:0^NoOp_1*
T0*
_output_shapes
: ┬
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_42Identity_42:output:0*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╘
ї
/__inference_pretrained_vgg16_layer_call_fn_4504
input_4!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:
identityИвStatefulPartitionedCall├
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4445o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_4
С
В
F__inference_block5_conv3_layer_call_and_return_conditional_losses_3761

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
м
F
*__inference_block2_pool_layer_call_fn_5794

inputs
identity╙
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_3496Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ї
г
+__inference_block4_conv3_layer_call_fn_5918

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_3709x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Н
a
E__inference_block3_pool_layer_call_and_return_conditional_losses_3508

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Н
a
E__inference_block5_pool_layer_call_and_return_conditional_losses_6009

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
сU
Ё
?__inference_vgg16_layer_call_and_return_conditional_losses_4273
input_3+
block1_conv1_4202:@
block1_conv1_4204:@+
block1_conv2_4207:@@
block1_conv2_4209:@,
block2_conv1_4213:@А 
block2_conv1_4215:	А-
block2_conv2_4218:АА 
block2_conv2_4220:	А-
block3_conv1_4224:АА 
block3_conv1_4226:	А-
block3_conv2_4229:АА 
block3_conv2_4231:	А-
block3_conv3_4234:АА 
block3_conv3_4236:	А-
block4_conv1_4240:АА 
block4_conv1_4242:	А-
block4_conv2_4245:АА 
block4_conv2_4247:	А-
block4_conv3_4250:АА 
block4_conv3_4252:	А-
block5_conv1_4256:АА 
block5_conv1_4258:	А-
block5_conv2_4261:АА 
block5_conv2_4263:	А-
block5_conv3_4266:АА 
block5_conv3_4268:	А
identityИв$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallЕ
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_3block1_conv1_4202block1_conv1_4204*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_3553л
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_4207block1_conv2_4209*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_3570ы
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_3484б
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_4213block2_conv1_4215*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_3588к
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_4218block2_conv2_4220*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_3605ь
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_3496б
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_4224block3_conv1_4226*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_3623к
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_4229block3_conv2_4231*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_3640к
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_4234block3_conv3_4236*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_3657ь
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_3508б
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_4240block4_conv1_4242*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_3675к
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_4245block4_conv2_4247*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_3692к
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_4250block4_conv3_4252*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_3709ь
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_3520б
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_4256block5_conv1_4258*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_3727к
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_4261block5_conv2_4263*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_3744к
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_4266block5_conv3_4268*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_3761ь
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_3532|
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А┴
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_3
┐
Ф
&__inference_dense_1_layer_call_fn_5689

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_4438o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
С
В
F__inference_block4_conv3_layer_call_and_return_conditional_losses_3709

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Н
a
E__inference_block2_pool_layer_call_and_return_conditional_losses_5799

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
оЗ
Ї
?__inference_vgg16_layer_call_and_return_conditional_losses_5542

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@А;
,block2_conv1_biasadd_readvariableop_resource:	АG
+block2_conv2_conv2d_readvariableop_resource:АА;
,block2_conv2_biasadd_readvariableop_resource:	АG
+block3_conv1_conv2d_readvariableop_resource:АА;
,block3_conv1_biasadd_readvariableop_resource:	АG
+block3_conv2_conv2d_readvariableop_resource:АА;
,block3_conv2_biasadd_readvariableop_resource:	АG
+block3_conv3_conv2d_readvariableop_resource:АА;
,block3_conv3_biasadd_readvariableop_resource:	АG
+block4_conv1_conv2d_readvariableop_resource:АА;
,block4_conv1_biasadd_readvariableop_resource:	АG
+block4_conv2_conv2d_readvariableop_resource:АА;
,block4_conv2_biasadd_readvariableop_resource:	АG
+block4_conv3_conv2d_readvariableop_resource:АА;
,block4_conv3_biasadd_readvariableop_resource:	АG
+block5_conv1_conv2d_readvariableop_resource:АА;
,block5_conv1_biasadd_readvariableop_resource:	АG
+block5_conv2_conv2d_readvariableop_resource:АА;
,block5_conv2_biasadd_readvariableop_resource:	АG
+block5_conv3_conv2d_readvariableop_resource:АА;
,block5_conv3_biasadd_readvariableop_resource:	А
identityИв#block1_conv1/BiasAdd/ReadVariableOpв"block1_conv1/Conv2D/ReadVariableOpв#block1_conv2/BiasAdd/ReadVariableOpв"block1_conv2/Conv2D/ReadVariableOpв#block2_conv1/BiasAdd/ReadVariableOpв"block2_conv1/Conv2D/ReadVariableOpв#block2_conv2/BiasAdd/ReadVariableOpв"block2_conv2/Conv2D/ReadVariableOpв#block3_conv1/BiasAdd/ReadVariableOpв"block3_conv1/Conv2D/ReadVariableOpв#block3_conv2/BiasAdd/ReadVariableOpв"block3_conv2/Conv2D/ReadVariableOpв#block3_conv3/BiasAdd/ReadVariableOpв"block3_conv3/Conv2D/ReadVariableOpв#block4_conv1/BiasAdd/ReadVariableOpв"block4_conv1/Conv2D/ReadVariableOpв#block4_conv2/BiasAdd/ReadVariableOpв"block4_conv2/Conv2D/ReadVariableOpв#block4_conv3/BiasAdd/ReadVariableOpв"block4_conv3/Conv2D/ReadVariableOpв#block5_conv1/BiasAdd/ReadVariableOpв"block5_conv1/Conv2D/ReadVariableOpв#block5_conv2/BiasAdd/ReadVariableOpв"block5_conv2/Conv2D/ReadVariableOpв#block5_conv3/BiasAdd/ReadVariableOpв"block5_conv3/Conv2D/ReadVariableOpЦ
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╡
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
М
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@t
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@Ц
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╬
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
М
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@t
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@м
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
Ч
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╩
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
Н
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppАs
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ppАШ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
Н
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppАs
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ppАн
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:         88А*
ksize
*
paddingVALID*
strides
Ш
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
Н
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88Аs
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         88АШ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
Н
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88Аs
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         88АШ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
Н
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88Аs
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         88Ан
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         Ан
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         Ан
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
t
IdentityIdentityblock5_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:         АХ
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
С
В
F__inference_block3_conv1_layer_call_and_return_conditional_losses_5819

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         88Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
Ў
а
+__inference_block1_conv1_layer_call_fn_5708

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_3553y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         рр@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
С
 
F__inference_block1_conv2_layer_call_and_return_conditional_losses_5739

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         рр@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         рр@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр@
 
_user_specified_nameinputs
С
В
F__inference_block3_conv3_layer_call_and_return_conditional_losses_5859

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         88Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
Н
a
E__inference_block3_pool_layer_call_and_return_conditional_losses_5869

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
С
В
F__inference_block4_conv3_layer_call_and_return_conditional_losses_5929

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ї
г
+__inference_block5_conv2_layer_call_fn_5968

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_3744x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
м
F
*__inference_block5_pool_layer_call_fn_6004

inputs
identity╙
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_3532Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Н
a
E__inference_block4_pool_layer_call_and_return_conditional_losses_5939

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
С
 
F__inference_block1_conv1_layer_call_and_return_conditional_losses_3553

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         рр@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         рр@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
С
В
F__inference_block3_conv3_layer_call_and_return_conditional_losses_3657

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         88Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
╤
Ї
/__inference_pretrained_vgg16_layer_call_fn_5042

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:
identityИвStatefulPartitionedCall┬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4445o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
С
В
F__inference_block5_conv2_layer_call_and_return_conditional_losses_5979

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
п
ь
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4664

inputs$

vgg16_4603:@

vgg16_4605:@$

vgg16_4607:@@

vgg16_4609:@%

vgg16_4611:@А

vgg16_4613:	А&

vgg16_4615:АА

vgg16_4617:	А&

vgg16_4619:АА

vgg16_4621:	А&

vgg16_4623:АА

vgg16_4625:	А&

vgg16_4627:АА

vgg16_4629:	А&

vgg16_4631:АА

vgg16_4633:	А&

vgg16_4635:АА

vgg16_4637:	А&

vgg16_4639:АА

vgg16_4641:	А&

vgg16_4643:АА

vgg16_4645:	А&

vgg16_4647:АА

vgg16_4649:	А&

vgg16_4651:АА

vgg16_4653:	А
dense_1_4658:	А
dense_1_4660:
identityИвdense_1/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallвvgg16/StatefulPartitionedCall╖
vgg16/StatefulPartitionedCallStatefulPartitionedCallinputs
vgg16_4603
vgg16_4605
vgg16_4607
vgg16_4609
vgg16_4611
vgg16_4613
vgg16_4615
vgg16_4617
vgg16_4619
vgg16_4621
vgg16_4623
vgg16_4625
vgg16_4627
vgg16_4629
vgg16_4631
vgg16_4633
vgg16_4635
vgg16_4637
vgg16_4639
vgg16_4641
vgg16_4643
vgg16_4645
vgg16_4647
vgg16_4649
vgg16_4651
vgg16_4653*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_vgg16_layer_call_and_return_conditional_losses_3769√
*global_average_pooling2d_1/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_4357Ў
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_4534К
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_4658dense_1_4660*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_4438w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
сU
Ё
?__inference_vgg16_layer_call_and_return_conditional_losses_4347
input_3+
block1_conv1_4276:@
block1_conv1_4278:@+
block1_conv2_4281:@@
block1_conv2_4283:@,
block2_conv1_4287:@А 
block2_conv1_4289:	А-
block2_conv2_4292:АА 
block2_conv2_4294:	А-
block3_conv1_4298:АА 
block3_conv1_4300:	А-
block3_conv2_4303:АА 
block3_conv2_4305:	А-
block3_conv3_4308:АА 
block3_conv3_4310:	А-
block4_conv1_4314:АА 
block4_conv1_4316:	А-
block4_conv2_4319:АА 
block4_conv2_4321:	А-
block4_conv3_4324:АА 
block4_conv3_4326:	А-
block5_conv1_4330:АА 
block5_conv1_4332:	А-
block5_conv2_4335:АА 
block5_conv2_4337:	А-
block5_conv3_4340:АА 
block5_conv3_4342:	А
identityИв$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallЕ
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_3block1_conv1_4276block1_conv1_4278*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_3553л
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_4281block1_conv2_4283*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_3570ы
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_3484б
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_4287block2_conv1_4289*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_3588к
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_4292block2_conv2_4294*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_3605ь
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_3496б
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_4298block3_conv1_4300*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_3623к
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_4303block3_conv2_4305*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_3640к
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_4308block3_conv3_4310*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_3657ь
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_3508б
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_4314block4_conv1_4316*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_3675к
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_4319block4_conv2_4321*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_3692к
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_4324block4_conv3_4326*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_3709ь
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_3520б
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_4330block5_conv1_4332*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_3727к
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_4335block5_conv2_4337*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_3744к
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_4340block5_conv3_4342*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_3761ь
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_3532|
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А┴
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_3
╡
p
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_4357

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:                  ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:                  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ў
а
+__inference_block1_conv2_layer_call_fn_5728

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_3570y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         рр@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр@
 
_user_specified_nameinputs
Н
a
E__inference_block1_pool_layer_call_and_return_conditional_losses_5749

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
С
В
F__inference_block2_conv2_layer_call_and_return_conditional_losses_5789

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppАY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ppАj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ppАw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ppА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ppА
 
_user_specified_nameinputs
С
В
F__inference_block4_conv1_layer_call_and_return_conditional_losses_3675

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
С
В
F__inference_block5_conv1_layer_call_and_return_conditional_losses_5959

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
м
F
*__inference_block3_pool_layer_call_fn_5864

inputs
identity╙
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_3508Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
С
В
F__inference_block2_conv2_layer_call_and_return_conditional_losses_3605

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppАY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ppАj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ppАw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ppА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ppА
 
_user_specified_nameinputs"┐L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┤
serving_defaultа
E
input_4:
serving_default_input_4:0         рр;
dense_10
StatefulPartitionedCall:0         tensorflow/serving/predict:═∙
╪
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
№
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
 layer_with_weights-12
 layer-17
!layer-18
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_network
е
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses
4_random_generator"
_tf_keras_layer
╗
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses

;kernel
<bias"
_tf_keras_layer
Ў
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
M16
N17
O18
P19
Q20
R21
S22
T23
U24
V25
;26
<27"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Є
\trace_0
]trace_1
^trace_2
_trace_32З
/__inference_pretrained_vgg16_layer_call_fn_4504
/__inference_pretrained_vgg16_layer_call_fn_5042
/__inference_pretrained_vgg16_layer_call_fn_5103
/__inference_pretrained_vgg16_layer_call_fn_4784└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z\trace_0z]trace_1z^trace_2z_trace_3
▐
`trace_0
atrace_1
btrace_2
ctrace_32є
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_5212
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_5328
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4848
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4912└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z`trace_0zatrace_1zbtrace_2zctrace_3
╩B╟
__inference__wrapped_model_3475input_4"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
{
diter

ebeta_1

fbeta_2
	gdecay
hlearning_rate;mР<mС;vТ<vУ"
	optimizer
,
iserving_default"
signature_map
"
_tf_keras_input_layer
▌
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

=kernel
>bias
 p_jit_compiled_convolution_op"
_tf_keras_layer
▌
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

?kernel
@bias
 w_jit_compiled_convolution_op"
_tf_keras_layer
е
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
т
~	variables
trainable_variables
Аregularization_losses
Б	keras_api
В__call__
+Г&call_and_return_all_conditional_losses

Akernel
Bbias
!Д_jit_compiled_convolution_op"
_tf_keras_layer
ф
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses

Ckernel
Dbias
!Л_jit_compiled_convolution_op"
_tf_keras_layer
л
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses

Ekernel
Fbias
!Ш_jit_compiled_convolution_op"
_tf_keras_layer
ф
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses

Gkernel
Hbias
!Я_jit_compiled_convolution_op"
_tf_keras_layer
ф
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses

Ikernel
Jbias
!ж_jit_compiled_convolution_op"
_tf_keras_layer
л
з	variables
иtrainable_variables
йregularization_losses
к	keras_api
л__call__
+м&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
н	variables
оtrainable_variables
пregularization_losses
░	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses

Kkernel
Lbias
!│_jit_compiled_convolution_op"
_tf_keras_layer
ф
┤	variables
╡trainable_variables
╢regularization_losses
╖	keras_api
╕__call__
+╣&call_and_return_all_conditional_losses

Mkernel
Nbias
!║_jit_compiled_convolution_op"
_tf_keras_layer
ф
╗	variables
╝trainable_variables
╜regularization_losses
╛	keras_api
┐__call__
+└&call_and_return_all_conditional_losses

Okernel
Pbias
!┴_jit_compiled_convolution_op"
_tf_keras_layer
л
┬	variables
├trainable_variables
─regularization_losses
┼	keras_api
╞__call__
+╟&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
╚	variables
╔trainable_variables
╩regularization_losses
╦	keras_api
╠__call__
+═&call_and_return_all_conditional_losses

Qkernel
Rbias
!╬_jit_compiled_convolution_op"
_tf_keras_layer
ф
╧	variables
╨trainable_variables
╤regularization_losses
╥	keras_api
╙__call__
+╘&call_and_return_all_conditional_losses

Skernel
Tbias
!╒_jit_compiled_convolution_op"
_tf_keras_layer
ф
╓	variables
╫trainable_variables
╪regularization_losses
┘	keras_api
┌__call__
+█&call_and_return_all_conditional_losses

Ukernel
Vbias
!▄_jit_compiled_convolution_op"
_tf_keras_layer
л
▌	variables
▐trainable_variables
▀regularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
M16
N17
O18
P19
Q20
R21
S22
T23
U24
V25"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
╬
шtrace_0
щtrace_1
ъtrace_2
ыtrace_32█
$__inference_vgg16_layer_call_fn_3824
$__inference_vgg16_layer_call_fn_5385
$__inference_vgg16_layer_call_fn_5442
$__inference_vgg16_layer_call_fn_4199└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zшtrace_0zщtrace_1zъtrace_2zыtrace_3
║
ьtrace_0
эtrace_1
юtrace_2
яtrace_32╟
?__inference_vgg16_layer_call_and_return_conditional_losses_5542
?__inference_vgg16_layer_call_and_return_conditional_losses_5642
?__inference_vgg16_layer_call_and_return_conditional_losses_4273
?__inference_vgg16_layer_call_and_return_conditional_losses_4347└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zьtrace_0zэtrace_1zюtrace_2zяtrace_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ёnon_trainable_variables
ёlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
 
їtrace_02р
9__inference_global_average_pooling2d_1_layer_call_fn_5647в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zїtrace_0
Ъ
Ўtrace_02√
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_5653в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЎtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
╞
№trace_0
¤trace_12Л
(__inference_dropout_1_layer_call_fn_5658
(__inference_dropout_1_layer_call_fn_5663┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z№trace_0z¤trace_1
№
■trace_0
 trace_12┴
C__inference_dropout_1_layer_call_and_return_conditional_losses_5668
C__inference_dropout_1_layer_call_and_return_conditional_losses_5680┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z■trace_0z trace_1
"
_generic_user_object
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
ь
Еtrace_02═
&__inference_dense_1_layer_call_fn_5689в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
З
Жtrace_02ш
A__inference_dense_1_layer_call_and_return_conditional_losses_5699в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0
!:	А2dense_1/kernel
:2dense_1/bias
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.:,@А2block2_conv1/kernel
 :А2block2_conv1/bias
/:-АА2block2_conv2/kernel
 :А2block2_conv2/bias
/:-АА2block3_conv1/kernel
 :А2block3_conv1/bias
/:-АА2block3_conv2/kernel
 :А2block3_conv2/bias
/:-АА2block3_conv3/kernel
 :А2block3_conv3/bias
/:-АА2block4_conv1/kernel
 :А2block4_conv1/bias
/:-АА2block4_conv2/kernel
 :А2block4_conv2/bias
/:-АА2block4_conv3/kernel
 :А2block4_conv3/bias
/:-АА2block5_conv1/kernel
 :А2block5_conv1/bias
/:-АА2block5_conv2/kernel
 :А2block5_conv2/bias
/:-АА2block5_conv3/kernel
 :А2block5_conv3/bias
ц
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
M16
N17
O18
P19
Q20
R21
S22
T23
U24
V25"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
0
З0
И1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ВB 
/__inference_pretrained_vgg16_layer_call_fn_4504input_4"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
БB■
/__inference_pretrained_vgg16_layer_call_fn_5042inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
БB■
/__inference_pretrained_vgg16_layer_call_fn_5103inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ВB 
/__inference_pretrained_vgg16_layer_call_fn_4784input_4"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЬBЩ
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_5212inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЬBЩ
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_5328inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЭBЪ
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4848input_4"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЭBЪ
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4912input_4"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
╔B╞
"__inference_signature_wrapper_4981input_4"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
ё
Оtrace_02╥
+__inference_block1_conv1_layer_call_fn_5708в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zОtrace_0
М
Пtrace_02э
F__inference_block1_conv1_layer_call_and_return_conditional_losses_5719в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zПtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
ё
Хtrace_02╥
+__inference_block1_conv2_layer_call_fn_5728в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zХtrace_0
М
Цtrace_02э
F__inference_block1_conv2_layer_call_and_return_conditional_losses_5739в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЦtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
Ё
Ьtrace_02╤
*__inference_block1_pool_layer_call_fn_5744в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЬtrace_0
Л
Эtrace_02ь
E__inference_block1_pool_layer_call_and_return_conditional_losses_5749в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЭtrace_0
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╢
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
~	variables
trainable_variables
Аregularization_losses
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
ё
гtrace_02╥
+__inference_block2_conv1_layer_call_fn_5758в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zгtrace_0
М
дtrace_02э
F__inference_block2_conv1_layer_call_and_return_conditional_losses_5769в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zдtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
ё
кtrace_02╥
+__inference_block2_conv2_layer_call_fn_5778в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zкtrace_0
М
лtrace_02э
F__inference_block2_conv2_layer_call_and_return_conditional_losses_5789в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zлtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
Ё
▒trace_02╤
*__inference_block2_pool_layer_call_fn_5794в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▒trace_0
Л
▓trace_02ь
E__inference_block2_pool_layer_call_and_return_conditional_losses_5799в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▓trace_0
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
ё
╕trace_02╥
+__inference_block3_conv1_layer_call_fn_5808в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0
М
╣trace_02э
F__inference_block3_conv1_layer_call_and_return_conditional_losses_5819в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╣trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
ё
┐trace_02╥
+__inference_block3_conv2_layer_call_fn_5828в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0
М
└trace_02э
F__inference_block3_conv2_layer_call_and_return_conditional_losses_5839в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z└trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
ё
╞trace_02╥
+__inference_block3_conv3_layer_call_fn_5848в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╞trace_0
М
╟trace_02э
F__inference_block3_conv3_layer_call_and_return_conditional_losses_5859в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╟trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
з	variables
иtrainable_variables
йregularization_losses
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
Ё
═trace_02╤
*__inference_block3_pool_layer_call_fn_5864в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z═trace_0
Л
╬trace_02ь
E__inference_block3_pool_layer_call_and_return_conditional_losses_5869в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╬trace_0
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
н	variables
оtrainable_variables
пregularization_losses
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses"
_generic_user_object
ё
╘trace_02╥
+__inference_block4_conv1_layer_call_fn_5878в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╘trace_0
М
╒trace_02э
F__inference_block4_conv1_layer_call_and_return_conditional_losses_5889в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╒trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╓non_trainable_variables
╫layers
╪metrics
 ┘layer_regularization_losses
┌layer_metrics
┤	variables
╡trainable_variables
╢regularization_losses
╕__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses"
_generic_user_object
ё
█trace_02╥
+__inference_block4_conv2_layer_call_fn_5898в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z█trace_0
М
▄trace_02э
F__inference_block4_conv2_layer_call_and_return_conditional_losses_5909в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▄trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▌non_trainable_variables
▐layers
▀metrics
 рlayer_regularization_losses
сlayer_metrics
╗	variables
╝trainable_variables
╜regularization_losses
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses"
_generic_user_object
ё
тtrace_02╥
+__inference_block4_conv3_layer_call_fn_5918в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zтtrace_0
М
уtrace_02э
F__inference_block4_conv3_layer_call_and_return_conditional_losses_5929в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zуtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
┬	variables
├trainable_variables
─regularization_losses
╞__call__
+╟&call_and_return_all_conditional_losses
'╟"call_and_return_conditional_losses"
_generic_user_object
Ё
щtrace_02╤
*__inference_block4_pool_layer_call_fn_5934в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zщtrace_0
Л
ъtrace_02ь
E__inference_block4_pool_layer_call_and_return_conditional_losses_5939в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zъtrace_0
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
╚	variables
╔trainable_variables
╩regularization_losses
╠__call__
+═&call_and_return_all_conditional_losses
'═"call_and_return_conditional_losses"
_generic_user_object
ё
Ёtrace_02╥
+__inference_block5_conv1_layer_call_fn_5948в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЁtrace_0
М
ёtrace_02э
F__inference_block5_conv1_layer_call_and_return_conditional_losses_5959в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zёtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
╧	variables
╨trainable_variables
╤regularization_losses
╙__call__
+╘&call_and_return_all_conditional_losses
'╘"call_and_return_conditional_losses"
_generic_user_object
ё
ўtrace_02╥
+__inference_block5_conv2_layer_call_fn_5968в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zўtrace_0
М
°trace_02э
F__inference_block5_conv2_layer_call_and_return_conditional_losses_5979в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z°trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
╓	variables
╫trainable_variables
╪regularization_losses
┌__call__
+█&call_and_return_all_conditional_losses
'█"call_and_return_conditional_losses"
_generic_user_object
ё
■trace_02╥
+__inference_block5_conv3_layer_call_fn_5988в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z■trace_0
М
 trace_02э
F__inference_block5_conv3_layer_call_and_return_conditional_losses_5999в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
▌	variables
▐trainable_variables
▀regularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
Ё
Еtrace_02╤
*__inference_block5_pool_layer_call_fn_6004в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
Л
Жtrace_02ь
E__inference_block5_pool_layer_call_and_return_conditional_losses_6009в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0
ц
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
M16
N17
O18
P19
Q20
R21
S22
T23
U24
V25"
trackable_list_wrapper
о
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
 17
!18"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўBЇ
$__inference_vgg16_layer_call_fn_3824input_3"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЎBє
$__inference_vgg16_layer_call_fn_5385inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЎBє
$__inference_vgg16_layer_call_fn_5442inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ўBЇ
$__inference_vgg16_layer_call_fn_4199input_3"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
СBО
?__inference_vgg16_layer_call_and_return_conditional_losses_5542inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
СBО
?__inference_vgg16_layer_call_and_return_conditional_losses_5642inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ТBП
?__inference_vgg16_layer_call_and_return_conditional_losses_4273input_3"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ТBП
?__inference_vgg16_layer_call_and_return_conditional_losses_4347input_3"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBъ
9__inference_global_average_pooling2d_1_layer_call_fn_5647inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_5653inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
юBы
(__inference_dropout_1_layer_call_fn_5658inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
юBы
(__inference_dropout_1_layer_call_fn_5663inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЙBЖ
C__inference_dropout_1_layer_call_and_return_conditional_losses_5668inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЙBЖ
C__inference_dropout_1_layer_call_and_return_conditional_losses_5680inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌B╫
&__inference_dense_1_layer_call_fn_5689inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_dense_1_layer_call_and_return_conditional_losses_5699inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
З	variables
И	keras_api

Йtotal

Кcount"
_tf_keras_metric
c
Л	variables
М	keras_api

Нtotal

Оcount
П
_fn_kwargs"
_tf_keras_metric
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block1_conv1_layer_call_fn_5708inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block1_conv1_layer_call_and_return_conditional_losses_5719inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block1_conv2_layer_call_fn_5728inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block1_conv2_layer_call_and_return_conditional_losses_5739inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_block1_pool_layer_call_fn_5744inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_block1_pool_layer_call_and_return_conditional_losses_5749inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block2_conv1_layer_call_fn_5758inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block2_conv1_layer_call_and_return_conditional_losses_5769inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block2_conv2_layer_call_fn_5778inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block2_conv2_layer_call_and_return_conditional_losses_5789inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_block2_pool_layer_call_fn_5794inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_block2_pool_layer_call_and_return_conditional_losses_5799inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block3_conv1_layer_call_fn_5808inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block3_conv1_layer_call_and_return_conditional_losses_5819inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block3_conv2_layer_call_fn_5828inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block3_conv2_layer_call_and_return_conditional_losses_5839inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block3_conv3_layer_call_fn_5848inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block3_conv3_layer_call_and_return_conditional_losses_5859inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_block3_pool_layer_call_fn_5864inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_block3_pool_layer_call_and_return_conditional_losses_5869inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block4_conv1_layer_call_fn_5878inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block4_conv1_layer_call_and_return_conditional_losses_5889inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block4_conv2_layer_call_fn_5898inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block4_conv2_layer_call_and_return_conditional_losses_5909inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block4_conv3_layer_call_fn_5918inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block4_conv3_layer_call_and_return_conditional_losses_5929inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_block4_pool_layer_call_fn_5934inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_block4_pool_layer_call_and_return_conditional_losses_5939inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block5_conv1_layer_call_fn_5948inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block5_conv1_layer_call_and_return_conditional_losses_5959inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block5_conv2_layer_call_fn_5968inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block5_conv2_layer_call_and_return_conditional_losses_5979inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▀B▄
+__inference_block5_conv3_layer_call_fn_5988inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_block5_conv3_layer_call_and_return_conditional_losses_5999inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_block5_pool_layer_call_fn_6004inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_block5_pool_layer_call_and_return_conditional_losses_6009inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
Й0
К1"
trackable_list_wrapper
.
З	variables"
_generic_user_object
:  (2total
:  (2count
0
Н0
О1"
trackable_list_wrapper
.
Л	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
&:$	А2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
&:$	А2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v▒
__inference__wrapped_model_3475Н=>?@ABCDEFGHIJKLMNOPQRSTUV;<:в7
0в-
+К(
input_4         рр
к "1к.
,
dense_1!К
dense_1         ║
F__inference_block1_conv1_layer_call_and_return_conditional_losses_5719p=>9в6
/в,
*К'
inputs         рр
к "/в,
%К"
0         рр@
Ъ Т
+__inference_block1_conv1_layer_call_fn_5708c=>9в6
/в,
*К'
inputs         рр
к ""К         рр@║
F__inference_block1_conv2_layer_call_and_return_conditional_losses_5739p?@9в6
/в,
*К'
inputs         рр@
к "/в,
%К"
0         рр@
Ъ Т
+__inference_block1_conv2_layer_call_fn_5728c?@9в6
/в,
*К'
inputs         рр@
к ""К         рр@ш
E__inference_block1_pool_layer_call_and_return_conditional_losses_5749ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ └
*__inference_block1_pool_layer_call_fn_5744СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╖
F__inference_block2_conv1_layer_call_and_return_conditional_losses_5769mAB7в4
-в*
(К%
inputs         pp@
к ".в+
$К!
0         ppА
Ъ П
+__inference_block2_conv1_layer_call_fn_5758`AB7в4
-в*
(К%
inputs         pp@
к "!К         ppА╕
F__inference_block2_conv2_layer_call_and_return_conditional_losses_5789nCD8в5
.в+
)К&
inputs         ppА
к ".в+
$К!
0         ppА
Ъ Р
+__inference_block2_conv2_layer_call_fn_5778aCD8в5
.в+
)К&
inputs         ppА
к "!К         ppАш
E__inference_block2_pool_layer_call_and_return_conditional_losses_5799ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ └
*__inference_block2_pool_layer_call_fn_5794СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╕
F__inference_block3_conv1_layer_call_and_return_conditional_losses_5819nEF8в5
.в+
)К&
inputs         88А
к ".в+
$К!
0         88А
Ъ Р
+__inference_block3_conv1_layer_call_fn_5808aEF8в5
.в+
)К&
inputs         88А
к "!К         88А╕
F__inference_block3_conv2_layer_call_and_return_conditional_losses_5839nGH8в5
.в+
)К&
inputs         88А
к ".в+
$К!
0         88А
Ъ Р
+__inference_block3_conv2_layer_call_fn_5828aGH8в5
.в+
)К&
inputs         88А
к "!К         88А╕
F__inference_block3_conv3_layer_call_and_return_conditional_losses_5859nIJ8в5
.в+
)К&
inputs         88А
к ".в+
$К!
0         88А
Ъ Р
+__inference_block3_conv3_layer_call_fn_5848aIJ8в5
.в+
)К&
inputs         88А
к "!К         88Аш
E__inference_block3_pool_layer_call_and_return_conditional_losses_5869ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ └
*__inference_block3_pool_layer_call_fn_5864СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╕
F__inference_block4_conv1_layer_call_and_return_conditional_losses_5889nKL8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
+__inference_block4_conv1_layer_call_fn_5878aKL8в5
.в+
)К&
inputs         А
к "!К         А╕
F__inference_block4_conv2_layer_call_and_return_conditional_losses_5909nMN8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
+__inference_block4_conv2_layer_call_fn_5898aMN8в5
.в+
)К&
inputs         А
к "!К         А╕
F__inference_block4_conv3_layer_call_and_return_conditional_losses_5929nOP8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
+__inference_block4_conv3_layer_call_fn_5918aOP8в5
.в+
)К&
inputs         А
к "!К         Аш
E__inference_block4_pool_layer_call_and_return_conditional_losses_5939ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ └
*__inference_block4_pool_layer_call_fn_5934СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╕
F__inference_block5_conv1_layer_call_and_return_conditional_losses_5959nQR8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
+__inference_block5_conv1_layer_call_fn_5948aQR8в5
.в+
)К&
inputs         А
к "!К         А╕
F__inference_block5_conv2_layer_call_and_return_conditional_losses_5979nST8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
+__inference_block5_conv2_layer_call_fn_5968aST8в5
.в+
)К&
inputs         А
к "!К         А╕
F__inference_block5_conv3_layer_call_and_return_conditional_losses_5999nUV8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
+__inference_block5_conv3_layer_call_fn_5988aUV8в5
.в+
)К&
inputs         А
к "!К         Аш
E__inference_block5_pool_layer_call_and_return_conditional_losses_6009ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ └
*__inference_block5_pool_layer_call_fn_6004СRвO
HвE
CК@
inputs4                                    
к ";К84                                    в
A__inference_dense_1_layer_call_and_return_conditional_losses_5699];<0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ z
&__inference_dense_1_layer_call_fn_5689P;<0в-
&в#
!К
inputs         А
к "К         е
C__inference_dropout_1_layer_call_and_return_conditional_losses_5668^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ е
C__inference_dropout_1_layer_call_and_return_conditional_losses_5680^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ }
(__inference_dropout_1_layer_call_fn_5658Q4в1
*в'
!К
inputs         А
p 
к "К         А}
(__inference_dropout_1_layer_call_fn_5663Q4в1
*в'
!К
inputs         А
p
к "К         А▌
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_5653ДRвO
HвE
CК@
inputs4                                    
к ".в+
$К!
0                  
Ъ ┤
9__inference_global_average_pooling2d_1_layer_call_fn_5647wRвO
HвE
CК@
inputs4                                    
к "!К                  ╪
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4848Й=>?@ABCDEFGHIJKLMNOPQRSTUV;<Bв?
8в5
+К(
input_4         рр
p 

 
к "%в"
К
0         
Ъ ╪
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_4912Й=>?@ABCDEFGHIJKLMNOPQRSTUV;<Bв?
8в5
+К(
input_4         рр
p

 
к "%в"
К
0         
Ъ ╫
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_5212И=>?@ABCDEFGHIJKLMNOPQRSTUV;<Aв>
7в4
*К'
inputs         рр
p 

 
к "%в"
К
0         
Ъ ╫
J__inference_pretrained_vgg16_layer_call_and_return_conditional_losses_5328И=>?@ABCDEFGHIJKLMNOPQRSTUV;<Aв>
7в4
*К'
inputs         рр
p

 
к "%в"
К
0         
Ъ п
/__inference_pretrained_vgg16_layer_call_fn_4504|=>?@ABCDEFGHIJKLMNOPQRSTUV;<Bв?
8в5
+К(
input_4         рр
p 

 
к "К         п
/__inference_pretrained_vgg16_layer_call_fn_4784|=>?@ABCDEFGHIJKLMNOPQRSTUV;<Bв?
8в5
+К(
input_4         рр
p

 
к "К         о
/__inference_pretrained_vgg16_layer_call_fn_5042{=>?@ABCDEFGHIJKLMNOPQRSTUV;<Aв>
7в4
*К'
inputs         рр
p 

 
к "К         о
/__inference_pretrained_vgg16_layer_call_fn_5103{=>?@ABCDEFGHIJKLMNOPQRSTUV;<Aв>
7в4
*К'
inputs         рр
p

 
к "К         ┐
"__inference_signature_wrapper_4981Ш=>?@ABCDEFGHIJKLMNOPQRSTUV;<EвB
в 
;к8
6
input_4+К(
input_4         рр"1к.
,
dense_1!К
dense_1         ╘
?__inference_vgg16_layer_call_and_return_conditional_losses_4273Р=>?@ABCDEFGHIJKLMNOPQRSTUVBв?
8в5
+К(
input_3         рр
p 

 
к ".в+
$К!
0         А
Ъ ╘
?__inference_vgg16_layer_call_and_return_conditional_losses_4347Р=>?@ABCDEFGHIJKLMNOPQRSTUVBв?
8в5
+К(
input_3         рр
p

 
к ".в+
$К!
0         А
Ъ ╙
?__inference_vgg16_layer_call_and_return_conditional_losses_5542П=>?@ABCDEFGHIJKLMNOPQRSTUVAв>
7в4
*К'
inputs         рр
p 

 
к ".в+
$К!
0         А
Ъ ╙
?__inference_vgg16_layer_call_and_return_conditional_losses_5642П=>?@ABCDEFGHIJKLMNOPQRSTUVAв>
7в4
*К'
inputs         рр
p

 
к ".в+
$К!
0         А
Ъ м
$__inference_vgg16_layer_call_fn_3824Г=>?@ABCDEFGHIJKLMNOPQRSTUVBв?
8в5
+К(
input_3         рр
p 

 
к "!К         Ам
$__inference_vgg16_layer_call_fn_4199Г=>?@ABCDEFGHIJKLMNOPQRSTUVBв?
8в5
+К(
input_3         рр
p

 
к "!К         Ал
$__inference_vgg16_layer_call_fn_5385В=>?@ABCDEFGHIJKLMNOPQRSTUVAв>
7в4
*К'
inputs         рр
p 

 
к "!К         Ал
$__inference_vgg16_layer_call_fn_5442В=>?@ABCDEFGHIJKLMNOPQRSTUVAв>
7в4
*К'
inputs         рр
p

 
к "!К         А