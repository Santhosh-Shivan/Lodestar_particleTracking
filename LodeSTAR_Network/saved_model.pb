ЇМ
бЁ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	

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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
d
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
О
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ЃЪ
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

conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
: *
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
: *
dtype0

conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
: *
dtype0

conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
:@*
dtype0

conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
:@*
dtype0

conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:@*
dtype0

conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_15/bias
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
:@*
dtype0

conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:@*
dtype0

conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:@*
dtype0

conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
:@*
dtype0

conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:*
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

Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_10/kernel/m

+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_10/bias/m
{
)Adam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_11/kernel/m

+Adam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/m*&
_output_shapes
:  *
dtype0

Adam/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_11/bias/m
{
)Adam/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_12/kernel/m

+Adam/conv2d_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_12/bias/m
{
)Adam/conv2d_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_13/kernel/m

+Adam/conv2d_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_13/bias/m
{
)Adam/conv2d_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_14/kernel/m

+Adam/conv2d_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_14/bias/m
{
)Adam/conv2d_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_15/kernel/m

+Adam/conv2d_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_15/bias/m
{
)Adam/conv2d_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_16/kernel/m

+Adam/conv2d_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_16/bias/m
{
)Adam/conv2d_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_17/kernel/m

+Adam/conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_17/bias/m
{
)Adam/conv2d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_18/kernel/m

+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_18/bias/m
{
)Adam/conv2d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_19/kernel/m

+Adam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/m*&
_output_shapes
:@*
dtype0

Adam/conv2d_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_19/bias/m
{
)Adam/conv2d_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_10/kernel/v

+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_10/bias/v
{
)Adam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_11/kernel/v

+Adam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/v*&
_output_shapes
:  *
dtype0

Adam/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_11/bias/v
{
)Adam/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_12/kernel/v

+Adam/conv2d_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_12/bias/v
{
)Adam/conv2d_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_13/kernel/v

+Adam/conv2d_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_13/bias/v
{
)Adam/conv2d_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_14/kernel/v

+Adam/conv2d_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_14/bias/v
{
)Adam/conv2d_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_15/kernel/v

+Adam/conv2d_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_15/bias/v
{
)Adam/conv2d_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_16/kernel/v

+Adam/conv2d_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_16/bias/v
{
)Adam/conv2d_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_17/kernel/v

+Adam/conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_17/bias/v
{
)Adam/conv2d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_18/kernel/v

+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_18/bias/v
{
)Adam/conv2d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_19/kernel/v

+Adam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/v*&
_output_shapes
:@*
dtype0

Adam/conv2d_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_19/bias/v
{
)Adam/conv2d_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
вf
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*f
valuefBf Bљe
|
	model
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
ѕ
layer_with_weights-0
layer-0
	layer_with_weights-1
	layer-1

layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
layer_with_weights-7
layer-8
layer_with_weights-8
layer-9
layer_with_weights-9
layer-10
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
а
iter

beta_1

beta_2
	decay
learning_ratemЂmЃmЄmЅ mІ!mЇ"mЈ#mЉ$mЊ%mЋ&mЌ'm­(mЎ)mЏ*mА+mБ,mВ-mГ.mД/mЕvЖvЗvИvЙ vК!vЛ"vМ#vН$vО%vП&vР'vС(vТ)vУ*vФ+vХ,vЦ-vЧ.vШ/vЩ
 

0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19

0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19
­
0layer_metrics
regularization_losses

1layers
trainable_variables
	variables
2layer_regularization_losses
3non_trainable_variables
4metrics
 
h

kernel
bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
h

kernel
bias
9regularization_losses
:trainable_variables
;	variables
<	keras_api
R
=regularization_losses
>trainable_variables
?	variables
@	keras_api
h

 kernel
!bias
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
h

"kernel
#bias
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
h

$kernel
%bias
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
h

&kernel
'bias
Mregularization_losses
Ntrainable_variables
O	variables
P	keras_api
h

(kernel
)bias
Qregularization_losses
Rtrainable_variables
S	variables
T	keras_api
h

*kernel
+bias
Uregularization_losses
Vtrainable_variables
W	variables
X	keras_api
h

,kernel
-bias
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
h

.kernel
/bias
]regularization_losses
^trainable_variables
_	variables
`	keras_api
 

0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19

0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19
­
alayer_metrics
regularization_losses

blayers
trainable_variables
	variables
clayer_regularization_losses
dnon_trainable_variables
emetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_10/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_10/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_11/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_11/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_12/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_12/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_13/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_13/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_14/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_14/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_15/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_15/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_16/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_16/bias1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_17/kernel1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_17/bias1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_18/kernel1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_18/bias1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_19/kernel1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_19/bias1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE
 

0
 
 

f0
 

0
1

0
1
­
glayer_metrics
5regularization_losses

hlayers
6trainable_variables
7	variables
ilayer_regularization_losses
jnon_trainable_variables
kmetrics
 

0
1

0
1
­
llayer_metrics
9regularization_losses

mlayers
:trainable_variables
;	variables
nlayer_regularization_losses
onon_trainable_variables
pmetrics
 
 
 
­
qlayer_metrics
=regularization_losses

rlayers
>trainable_variables
?	variables
slayer_regularization_losses
tnon_trainable_variables
umetrics
 

 0
!1

 0
!1
­
vlayer_metrics
Aregularization_losses

wlayers
Btrainable_variables
C	variables
xlayer_regularization_losses
ynon_trainable_variables
zmetrics
 

"0
#1

"0
#1
­
{layer_metrics
Eregularization_losses

|layers
Ftrainable_variables
G	variables
}layer_regularization_losses
~non_trainable_variables
metrics
 

$0
%1

$0
%1
В
layer_metrics
Iregularization_losses
layers
Jtrainable_variables
K	variables
 layer_regularization_losses
non_trainable_variables
metrics
 

&0
'1

&0
'1
В
layer_metrics
Mregularization_losses
layers
Ntrainable_variables
O	variables
 layer_regularization_losses
non_trainable_variables
metrics
 

(0
)1

(0
)1
В
layer_metrics
Qregularization_losses
layers
Rtrainable_variables
S	variables
 layer_regularization_losses
non_trainable_variables
metrics
 

*0
+1

*0
+1
В
layer_metrics
Uregularization_losses
layers
Vtrainable_variables
W	variables
 layer_regularization_losses
non_trainable_variables
metrics
 

,0
-1

,0
-1
В
layer_metrics
Yregularization_losses
layers
Ztrainable_variables
[	variables
 layer_regularization_losses
non_trainable_variables
metrics
 

.0
/1

.0
/1
В
layer_metrics
]regularization_losses
layers
^trainable_variables
_	variables
 layer_regularization_losses
non_trainable_variables
metrics
 
N
0
	1

2
3
4
5
6
7
8
9
10
 
 
 
8

total

count
 	variables
Ё	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

 	variables
yw
VARIABLE_VALUEAdam/conv2d_10/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_10/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_11/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_11/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_12/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_12/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_13/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_13/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_14/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_14/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_15/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_15/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_16/kernel/mMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_16/bias/mMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_17/kernel/mMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_17/bias/mMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_18/kernel/mMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_18/bias/mMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_19/kernel/mMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_19/bias/mMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_10/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_10/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_11/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_11/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_12/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_12/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_13/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_13/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_14/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_14/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_15/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_15/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_16/kernel/vMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_16/bias/vMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_17/kernel/vMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_17/bias/vMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_18/kernel/vMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_18/bias/vMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_19/kernel/vMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_19/bias/vMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_1Placeholder*/
_output_shapes
:џџџџџџџџџFF*
dtype0*$
shape:џџџџџџџџџFF
б
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:џџџџџџџџџ##:џџџџџџџџџ##*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_36982
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp$conv2d_12/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp"conv2d_13/bias/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp"conv2d_15/bias/Read/ReadVariableOp$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp)Adam/conv2d_10/bias/m/Read/ReadVariableOp+Adam/conv2d_11/kernel/m/Read/ReadVariableOp)Adam/conv2d_11/bias/m/Read/ReadVariableOp+Adam/conv2d_12/kernel/m/Read/ReadVariableOp)Adam/conv2d_12/bias/m/Read/ReadVariableOp+Adam/conv2d_13/kernel/m/Read/ReadVariableOp)Adam/conv2d_13/bias/m/Read/ReadVariableOp+Adam/conv2d_14/kernel/m/Read/ReadVariableOp)Adam/conv2d_14/bias/m/Read/ReadVariableOp+Adam/conv2d_15/kernel/m/Read/ReadVariableOp)Adam/conv2d_15/bias/m/Read/ReadVariableOp+Adam/conv2d_16/kernel/m/Read/ReadVariableOp)Adam/conv2d_16/bias/m/Read/ReadVariableOp+Adam/conv2d_17/kernel/m/Read/ReadVariableOp)Adam/conv2d_17/bias/m/Read/ReadVariableOp+Adam/conv2d_18/kernel/m/Read/ReadVariableOp)Adam/conv2d_18/bias/m/Read/ReadVariableOp+Adam/conv2d_19/kernel/m/Read/ReadVariableOp)Adam/conv2d_19/bias/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp)Adam/conv2d_10/bias/v/Read/ReadVariableOp+Adam/conv2d_11/kernel/v/Read/ReadVariableOp)Adam/conv2d_11/bias/v/Read/ReadVariableOp+Adam/conv2d_12/kernel/v/Read/ReadVariableOp)Adam/conv2d_12/bias/v/Read/ReadVariableOp+Adam/conv2d_13/kernel/v/Read/ReadVariableOp)Adam/conv2d_13/bias/v/Read/ReadVariableOp+Adam/conv2d_14/kernel/v/Read/ReadVariableOp)Adam/conv2d_14/bias/v/Read/ReadVariableOp+Adam/conv2d_15/kernel/v/Read/ReadVariableOp)Adam/conv2d_15/bias/v/Read/ReadVariableOp+Adam/conv2d_16/kernel/v/Read/ReadVariableOp)Adam/conv2d_16/bias/v/Read/ReadVariableOp+Adam/conv2d_17/kernel/v/Read/ReadVariableOp)Adam/conv2d_17/bias/v/Read/ReadVariableOp+Adam/conv2d_18/kernel/v/Read/ReadVariableOp)Adam/conv2d_18/bias/v/Read/ReadVariableOp+Adam/conv2d_19/kernel/v/Read/ReadVariableOp)Adam/conv2d_19/bias/v/Read/ReadVariableOpConst*P
TinI
G2E	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_38638
П
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biastotalcountAdam/conv2d_10/kernel/mAdam/conv2d_10/bias/mAdam/conv2d_11/kernel/mAdam/conv2d_11/bias/mAdam/conv2d_12/kernel/mAdam/conv2d_12/bias/mAdam/conv2d_13/kernel/mAdam/conv2d_13/bias/mAdam/conv2d_14/kernel/mAdam/conv2d_14/bias/mAdam/conv2d_15/kernel/mAdam/conv2d_15/bias/mAdam/conv2d_16/kernel/mAdam/conv2d_16/bias/mAdam/conv2d_17/kernel/mAdam/conv2d_17/bias/mAdam/conv2d_18/kernel/mAdam/conv2d_18/bias/mAdam/conv2d_19/kernel/mAdam/conv2d_19/bias/mAdam/conv2d_10/kernel/vAdam/conv2d_10/bias/vAdam/conv2d_11/kernel/vAdam/conv2d_11/bias/vAdam/conv2d_12/kernel/vAdam/conv2d_12/bias/vAdam/conv2d_13/kernel/vAdam/conv2d_13/bias/vAdam/conv2d_14/kernel/vAdam/conv2d_14/bias/vAdam/conv2d_15/kernel/vAdam/conv2d_15/bias/vAdam/conv2d_16/kernel/vAdam/conv2d_16/bias/vAdam/conv2d_17/kernel/vAdam/conv2d_17/bias/vAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/vAdam/conv2d_19/kernel/vAdam/conv2d_19/bias/v*O
TinH
F2D*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_38849Џ

ѓ
6__inference_lode_star_base_model_1_layer_call_fn_37029
input_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@

unknown_18:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:џџџџџџџџџ##:џџџџџџџџџ##*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_362392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:џџџџџџџџџFF
!
_user_specified_name	input_1
њ
с
,__inference_sequential_1_layer_call_fn_35943
conv2d_10_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@

unknown_18:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_358552
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:r n
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
)
_user_specified_nameconv2d_10_input

§
D__inference_conv2d_19_layer_call_and_return_conditional_losses_38413

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddЏ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Љ
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_35426

inputs
identityЌ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

§
D__inference_conv2d_17_layer_call_and_return_conditional_losses_38374

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

§
D__inference_conv2d_12_layer_call_and_return_conditional_losses_35485

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs

§
D__inference_conv2d_11_layer_call_and_return_conditional_losses_38254

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
h
њ
G__inference_sequential_1_layer_call_and_return_conditional_losses_36405

inputsB
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: B
(conv2d_11_conv2d_readvariableop_resource:  7
)conv2d_11_biasadd_readvariableop_resource: B
(conv2d_12_conv2d_readvariableop_resource: @7
)conv2d_12_biasadd_readvariableop_resource:@B
(conv2d_13_conv2d_readvariableop_resource:@@7
)conv2d_13_biasadd_readvariableop_resource:@B
(conv2d_14_conv2d_readvariableop_resource:@@7
)conv2d_14_biasadd_readvariableop_resource:@B
(conv2d_15_conv2d_readvariableop_resource:@@7
)conv2d_15_biasadd_readvariableop_resource:@B
(conv2d_16_conv2d_readvariableop_resource:@@7
)conv2d_16_biasadd_readvariableop_resource:@B
(conv2d_17_conv2d_readvariableop_resource:@@7
)conv2d_17_biasadd_readvariableop_resource:@B
(conv2d_18_conv2d_readvariableop_resource:@@7
)conv2d_18_biasadd_readvariableop_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:
identityЂ conv2d_10/BiasAdd/ReadVariableOpЂconv2d_10/Conv2D/ReadVariableOpЂ conv2d_11/BiasAdd/ReadVariableOpЂconv2d_11/Conv2D/ReadVariableOpЂ conv2d_12/BiasAdd/ReadVariableOpЂconv2d_12/Conv2D/ReadVariableOpЂ conv2d_13/BiasAdd/ReadVariableOpЂconv2d_13/Conv2D/ReadVariableOpЂ conv2d_14/BiasAdd/ReadVariableOpЂconv2d_14/Conv2D/ReadVariableOpЂ conv2d_15/BiasAdd/ReadVariableOpЂconv2d_15/Conv2D/ReadVariableOpЂ conv2d_16/BiasAdd/ReadVariableOpЂconv2d_16/Conv2D/ReadVariableOpЂ conv2d_17/BiasAdd/ReadVariableOpЂconv2d_17/Conv2D/ReadVariableOpЂ conv2d_18/BiasAdd/ReadVariableOpЂconv2d_18/Conv2D/ReadVariableOpЂ conv2d_19/BiasAdd/ReadVariableOpЂconv2d_19/Conv2D/ReadVariableOpГ
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOpС
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
conv2d_10/Conv2DЊ
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOpА
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_10/ReluГ
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_11/Conv2D/ReadVariableOpз
conv2d_11/Conv2DConv2Dconv2d_10/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
conv2d_11/Conv2DЊ
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_11/BiasAdd/ReadVariableOpА
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_11/BiasAdd~
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_11/ReluЧ
max_pooling2d_1/MaxPoolMaxPoolconv2d_11/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ## *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolГ
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_12/Conv2D/ReadVariableOpл
conv2d_12/Conv2DConv2D max_pooling2d_1/MaxPool:output:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_12/Conv2DЊ
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOpА
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_12/BiasAdd~
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_12/ReluГ
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_13/Conv2D/ReadVariableOpз
conv2d_13/Conv2DConv2Dconv2d_12/Relu:activations:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_13/Conv2DЊ
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOpА
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_13/BiasAdd~
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_13/ReluГ
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_14/Conv2D/ReadVariableOpз
conv2d_14/Conv2DConv2Dconv2d_13/Relu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_14/Conv2DЊ
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOpА
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_14/BiasAdd~
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_14/ReluГ
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_15/Conv2D/ReadVariableOpз
conv2d_15/Conv2DConv2Dconv2d_14/Relu:activations:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_15/Conv2DЊ
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOpА
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_15/BiasAdd~
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_15/ReluГ
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_16/Conv2D/ReadVariableOpз
conv2d_16/Conv2DConv2Dconv2d_15/Relu:activations:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_16/Conv2DЊ
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOpА
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_16/BiasAdd~
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_16/ReluГ
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_17/Conv2D/ReadVariableOpз
conv2d_17/Conv2DConv2Dconv2d_16/Relu:activations:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_17/Conv2DЊ
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOpА
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_17/BiasAdd~
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_17/ReluГ
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_18/Conv2D/ReadVariableOpз
conv2d_18/Conv2DConv2Dconv2d_17/Relu:activations:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_18/Conv2DЊ
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOpА
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_18/BiasAdd~
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_18/ReluГ
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOpз
conv2d_19/Conv2DConv2Dconv2d_18/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##*
paddingSAME*
strides
2
conv2d_19/Conv2DЊ
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOpА
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##2
conv2d_19/BiasAddЈ
IdentityIdentityconv2d_19/BiasAdd:output:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџFF
 
_user_specified_nameinputs
Ы]
Т
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_36612
x,
sequential_1_36500:  
sequential_1_36502: ,
sequential_1_36504:   
sequential_1_36506: ,
sequential_1_36508: @ 
sequential_1_36510:@,
sequential_1_36512:@@ 
sequential_1_36514:@,
sequential_1_36516:@@ 
sequential_1_36518:@,
sequential_1_36520:@@ 
sequential_1_36522:@,
sequential_1_36524:@@ 
sequential_1_36526:@,
sequential_1_36528:@@ 
sequential_1_36530:@,
sequential_1_36532:@@ 
sequential_1_36534:@,
sequential_1_36536:@ 
sequential_1_36538:
identity

identity_1Ђ$sequential_1/StatefulPartitionedCallД
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallxsequential_1_36500sequential_1_36502sequential_1_36504sequential_1_36506sequential_1_36508sequential_1_36510sequential_1_36512sequential_1_36514sequential_1_36516sequential_1_36518sequential_1_36520sequential_1_36522sequential_1_36524sequential_1_36526sequential_1_36528sequential_1_36530sequential_1_36532sequential_1_36534sequential_1_36536sequential_1_36538* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ##*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_364052&
$sequential_1/StatefulPartitionedCall?
ShapeShapex*
T0*
_output_shapes
:2
ShapeX
CastCastShape:output:0*

DstT0*

SrcT0*
_output_shapes
:2
Casto
Shape_1Shape-sequential_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2	
Shape_1^
Cast_1CastShape_1:output:0*

DstT0*

SrcT0*
_output_shapes
:2
Cast_1t
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2о
strided_sliceStridedSlice
Cast_1:y:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ш
strided_slice_1StridedSlice
Cast_1:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1_
range/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range/start_
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
range/delta
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2
rangeS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/y_
mulMulrange:output:0mul/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
mulc
range_1/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_1/startc
range_1/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
range_1/delta
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2	
range_1W
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
mul_1/yg
mul_1Mulrange_1:output:0mul_1/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
mul_1
meshgrid/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
meshgrid/Reshape/shape
meshgrid/ReshapeReshape	mul_1:z:0meshgrid/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape
meshgrid/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ2
meshgrid/Reshape_1/shape
meshgrid/Reshape_1Reshapemul:z:0!meshgrid/Reshape_1/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_1R
meshgrid/SizeSize	mul_1:z:0*
T0*
_output_shapes
: 2
meshgrid/SizeT
meshgrid/Size_1Sizemul:z:0*
T0*
_output_shapes
: 2
meshgrid/Size_1
meshgrid/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ2
meshgrid/Reshape_2/shapeЃ
meshgrid/Reshape_2Reshapemeshgrid/Reshape:output:0!meshgrid/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_2
meshgrid/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
meshgrid/Reshape_3/shapeЅ
meshgrid/Reshape_3Reshapemeshgrid/Reshape_1:output:0!meshgrid/Reshape_3/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_3
meshgrid/ones/mulMulmeshgrid/Size_1:output:0meshgrid/Size:output:0*
T0*
_output_shapes
: 2
meshgrid/ones/mulo
meshgrid/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
meshgrid/ones/Less/y
meshgrid/ones/LessLessmeshgrid/ones/mul:z:0meshgrid/ones/Less/y:output:0*
T0*
_output_shapes
: 2
meshgrid/ones/Less
meshgrid/ones/packedPackmeshgrid/Size_1:output:0meshgrid/Size:output:0*
N*
T0*
_output_shapes
:2
meshgrid/ones/packedo
meshgrid/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
meshgrid/ones/Const
meshgrid/onesFillmeshgrid/ones/packed:output:0meshgrid/ones/Const:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/ones
meshgrid/mulMulmeshgrid/Reshape_2:output:0meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/mul
meshgrid/mul_1Mulmeshgrid/Reshape_3:output:0meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/mul_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Е
strided_slice_2StridedSlice-sequential_1/StatefulPartitionedCall:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Е
strided_slice_3StridedSlice-sequential_1/StatefulPartitionedCall:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2
strided_slice_3
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"    џџџџ2
strided_slice_4/stack
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack_1
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Б
strided_slice_4StridedSlice-sequential_1/StatefulPartitionedCall:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
end_mask2
strided_slice_4q
SigmoidSigmoidstrided_slice_4:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2	
Sigmoidw
addAddV2strided_slice_2:output:0meshgrid/mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
addy
add_1AddV2strided_slice_3:output:0meshgrid/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
add_1
stackPackadd:z:0	add_1:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
axisџџџџџџџџџ2
stackx
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2в
strided_slice_5StridedSliceCast:y:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_5[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
	truediv/yp
truedivRealDivstrided_slice_5:output:0truediv/y:output:0*
T0*
_output_shapes
:2	
truedivh
subSubstack:output:0truediv:z:0*
T0*/
_output_shapes
:џџџџџџџџџ##2
sub
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    џџџџ2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2
strided_slice_6StridedSlice-sequential_1/StatefulPartitionedCall:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*-
_output_shapes
:џџџџџџџџџ## *
ellipsis_mask2
strided_slice_6e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
concat/axis
concatConcatV2sub:z:0strided_slice_6:output:0concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##2
concat
IdentityIdentityconcat:output:0%^sequential_1/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity

Identity_1IdentitySigmoid:y:0%^sequential_1/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:R N
/
_output_shapes
:џџџџџџџџџFF

_user_specified_namex
њ
с
,__inference_sequential_1_layer_call_fn_35653
conv2d_10_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@

unknown_18:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_356102
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:r n
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
)
_user_specified_nameconv2d_10_input

§
D__inference_conv2d_10_layer_call_and_return_conditional_losses_35450

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

§
D__inference_conv2d_14_layer_call_and_return_conditional_losses_35519

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

э
6__inference_lode_star_base_model_1_layer_call_fn_37076
x!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@

unknown_18:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:џџџџџџџџџ##:џџџџџџџџџ##*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_362392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:џџџџџџџџџFF

_user_specified_namex
=
В	
G__inference_sequential_1_layer_call_and_return_conditional_losses_35855

inputs)
conv2d_10_35803: 
conv2d_10_35805: )
conv2d_11_35808:  
conv2d_11_35810: )
conv2d_12_35814: @
conv2d_12_35816:@)
conv2d_13_35819:@@
conv2d_13_35821:@)
conv2d_14_35824:@@
conv2d_14_35826:@)
conv2d_15_35829:@@
conv2d_15_35831:@)
conv2d_16_35834:@@
conv2d_16_35836:@)
conv2d_17_35839:@@
conv2d_17_35841:@)
conv2d_18_35844:@@
conv2d_18_35846:@)
conv2d_19_35849:@
conv2d_19_35851:
identityЂ!conv2d_10/StatefulPartitionedCallЂ!conv2d_11/StatefulPartitionedCallЂ!conv2d_12/StatefulPartitionedCallЂ!conv2d_13/StatefulPartitionedCallЂ!conv2d_14/StatefulPartitionedCallЂ!conv2d_15/StatefulPartitionedCallЂ!conv2d_16/StatefulPartitionedCallЂ!conv2d_17/StatefulPartitionedCallЂ!conv2d_18/StatefulPartitionedCallЂ!conv2d_19/StatefulPartitionedCallА
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10_35803conv2d_10_35805*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_354502#
!conv2d_10/StatefulPartitionedCallд
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_35808conv2d_11_35810*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_354672#
!conv2d_11/StatefulPartitionedCallІ
max_pooling2d_1/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_354262!
max_pooling2d_1/PartitionedCallв
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_12_35814conv2d_12_35816*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_354852#
!conv2d_12/StatefulPartitionedCallд
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0conv2d_13_35819conv2d_13_35821*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_355022#
!conv2d_13/StatefulPartitionedCallд
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0conv2d_14_35824conv2d_14_35826*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_355192#
!conv2d_14/StatefulPartitionedCallд
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0conv2d_15_35829conv2d_15_35831*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_355362#
!conv2d_15/StatefulPartitionedCallд
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0conv2d_16_35834conv2d_16_35836*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_355532#
!conv2d_16/StatefulPartitionedCallд
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0conv2d_17_35839conv2d_17_35841*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_355702#
!conv2d_17/StatefulPartitionedCallд
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0conv2d_18_35844conv2d_18_35846*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_355872#
!conv2d_18/StatefulPartitionedCallд
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_35849conv2d_19_35851*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_356032#
!conv2d_19/StatefulPartitionedCall
IdentityIdentity*conv2d_19/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

§
D__inference_conv2d_16_layer_call_and_return_conditional_losses_35553

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

ѓ
6__inference_lode_star_base_model_1_layer_call_fn_37170
input_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@

unknown_18:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:џџџџџџџџџ##:џџџџџџџџџ##*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_366122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:џџџџџџџџџFF
!
_user_specified_name	input_1
п
и
,__inference_sequential_1_layer_call_fn_37783

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@

unknown_18:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_356102
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
п
и
,__inference_sequential_1_layer_call_fn_37828

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@

unknown_18:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_358552
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

§
D__inference_conv2d_15_layer_call_and_return_conditional_losses_35536

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
h
њ
G__inference_sequential_1_layer_call_and_return_conditional_losses_38214

inputsB
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: B
(conv2d_11_conv2d_readvariableop_resource:  7
)conv2d_11_biasadd_readvariableop_resource: B
(conv2d_12_conv2d_readvariableop_resource: @7
)conv2d_12_biasadd_readvariableop_resource:@B
(conv2d_13_conv2d_readvariableop_resource:@@7
)conv2d_13_biasadd_readvariableop_resource:@B
(conv2d_14_conv2d_readvariableop_resource:@@7
)conv2d_14_biasadd_readvariableop_resource:@B
(conv2d_15_conv2d_readvariableop_resource:@@7
)conv2d_15_biasadd_readvariableop_resource:@B
(conv2d_16_conv2d_readvariableop_resource:@@7
)conv2d_16_biasadd_readvariableop_resource:@B
(conv2d_17_conv2d_readvariableop_resource:@@7
)conv2d_17_biasadd_readvariableop_resource:@B
(conv2d_18_conv2d_readvariableop_resource:@@7
)conv2d_18_biasadd_readvariableop_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:
identityЂ conv2d_10/BiasAdd/ReadVariableOpЂconv2d_10/Conv2D/ReadVariableOpЂ conv2d_11/BiasAdd/ReadVariableOpЂconv2d_11/Conv2D/ReadVariableOpЂ conv2d_12/BiasAdd/ReadVariableOpЂconv2d_12/Conv2D/ReadVariableOpЂ conv2d_13/BiasAdd/ReadVariableOpЂconv2d_13/Conv2D/ReadVariableOpЂ conv2d_14/BiasAdd/ReadVariableOpЂconv2d_14/Conv2D/ReadVariableOpЂ conv2d_15/BiasAdd/ReadVariableOpЂconv2d_15/Conv2D/ReadVariableOpЂ conv2d_16/BiasAdd/ReadVariableOpЂconv2d_16/Conv2D/ReadVariableOpЂ conv2d_17/BiasAdd/ReadVariableOpЂconv2d_17/Conv2D/ReadVariableOpЂ conv2d_18/BiasAdd/ReadVariableOpЂconv2d_18/Conv2D/ReadVariableOpЂ conv2d_19/BiasAdd/ReadVariableOpЂconv2d_19/Conv2D/ReadVariableOpГ
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOpС
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
conv2d_10/Conv2DЊ
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOpА
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_10/ReluГ
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_11/Conv2D/ReadVariableOpз
conv2d_11/Conv2DConv2Dconv2d_10/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
conv2d_11/Conv2DЊ
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_11/BiasAdd/ReadVariableOpА
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_11/BiasAdd~
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_11/ReluЧ
max_pooling2d_1/MaxPoolMaxPoolconv2d_11/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ## *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolГ
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_12/Conv2D/ReadVariableOpл
conv2d_12/Conv2DConv2D max_pooling2d_1/MaxPool:output:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_12/Conv2DЊ
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOpА
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_12/BiasAdd~
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_12/ReluГ
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_13/Conv2D/ReadVariableOpз
conv2d_13/Conv2DConv2Dconv2d_12/Relu:activations:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_13/Conv2DЊ
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOpА
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_13/BiasAdd~
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_13/ReluГ
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_14/Conv2D/ReadVariableOpз
conv2d_14/Conv2DConv2Dconv2d_13/Relu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_14/Conv2DЊ
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOpА
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_14/BiasAdd~
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_14/ReluГ
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_15/Conv2D/ReadVariableOpз
conv2d_15/Conv2DConv2Dconv2d_14/Relu:activations:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_15/Conv2DЊ
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOpА
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_15/BiasAdd~
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_15/ReluГ
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_16/Conv2D/ReadVariableOpз
conv2d_16/Conv2DConv2Dconv2d_15/Relu:activations:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_16/Conv2DЊ
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOpА
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_16/BiasAdd~
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_16/ReluГ
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_17/Conv2D/ReadVariableOpз
conv2d_17/Conv2DConv2Dconv2d_16/Relu:activations:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_17/Conv2DЊ
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOpА
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_17/BiasAdd~
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_17/ReluГ
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_18/Conv2D/ReadVariableOpз
conv2d_18/Conv2DConv2Dconv2d_17/Relu:activations:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_18/Conv2DЊ
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOpА
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_18/BiasAdd~
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_18/ReluГ
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOpз
conv2d_19/Conv2DConv2Dconv2d_18/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##*
paddingSAME*
strides
2
conv2d_19/Conv2DЊ
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOpА
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##2
conv2d_19/BiasAddЈ
IdentityIdentityconv2d_19/BiasAdd:output:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџFF
 
_user_specified_nameinputs


)__inference_conv2d_11_layer_call_fn_38243

inputs!
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_354672
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs

и
,__inference_sequential_1_layer_call_fn_37918

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@

unknown_18:
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ##*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_364052
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџFF
 
_user_specified_nameinputs

§
D__inference_conv2d_13_layer_call_and_return_conditional_losses_38294

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs


)__inference_conv2d_16_layer_call_fn_38343

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_355532
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

§
D__inference_conv2d_12_layer_call_and_return_conditional_losses_38274

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ЯІ

 __inference__wrapped_model_35420
input_1f
Llode_star_base_model_1_sequential_1_conv2d_10_conv2d_readvariableop_resource: [
Mlode_star_base_model_1_sequential_1_conv2d_10_biasadd_readvariableop_resource: f
Llode_star_base_model_1_sequential_1_conv2d_11_conv2d_readvariableop_resource:  [
Mlode_star_base_model_1_sequential_1_conv2d_11_biasadd_readvariableop_resource: f
Llode_star_base_model_1_sequential_1_conv2d_12_conv2d_readvariableop_resource: @[
Mlode_star_base_model_1_sequential_1_conv2d_12_biasadd_readvariableop_resource:@f
Llode_star_base_model_1_sequential_1_conv2d_13_conv2d_readvariableop_resource:@@[
Mlode_star_base_model_1_sequential_1_conv2d_13_biasadd_readvariableop_resource:@f
Llode_star_base_model_1_sequential_1_conv2d_14_conv2d_readvariableop_resource:@@[
Mlode_star_base_model_1_sequential_1_conv2d_14_biasadd_readvariableop_resource:@f
Llode_star_base_model_1_sequential_1_conv2d_15_conv2d_readvariableop_resource:@@[
Mlode_star_base_model_1_sequential_1_conv2d_15_biasadd_readvariableop_resource:@f
Llode_star_base_model_1_sequential_1_conv2d_16_conv2d_readvariableop_resource:@@[
Mlode_star_base_model_1_sequential_1_conv2d_16_biasadd_readvariableop_resource:@f
Llode_star_base_model_1_sequential_1_conv2d_17_conv2d_readvariableop_resource:@@[
Mlode_star_base_model_1_sequential_1_conv2d_17_biasadd_readvariableop_resource:@f
Llode_star_base_model_1_sequential_1_conv2d_18_conv2d_readvariableop_resource:@@[
Mlode_star_base_model_1_sequential_1_conv2d_18_biasadd_readvariableop_resource:@f
Llode_star_base_model_1_sequential_1_conv2d_19_conv2d_readvariableop_resource:@[
Mlode_star_base_model_1_sequential_1_conv2d_19_biasadd_readvariableop_resource:
identity

identity_1ЂDlode_star_base_model_1/sequential_1/conv2d_10/BiasAdd/ReadVariableOpЂClode_star_base_model_1/sequential_1/conv2d_10/Conv2D/ReadVariableOpЂDlode_star_base_model_1/sequential_1/conv2d_11/BiasAdd/ReadVariableOpЂClode_star_base_model_1/sequential_1/conv2d_11/Conv2D/ReadVariableOpЂDlode_star_base_model_1/sequential_1/conv2d_12/BiasAdd/ReadVariableOpЂClode_star_base_model_1/sequential_1/conv2d_12/Conv2D/ReadVariableOpЂDlode_star_base_model_1/sequential_1/conv2d_13/BiasAdd/ReadVariableOpЂClode_star_base_model_1/sequential_1/conv2d_13/Conv2D/ReadVariableOpЂDlode_star_base_model_1/sequential_1/conv2d_14/BiasAdd/ReadVariableOpЂClode_star_base_model_1/sequential_1/conv2d_14/Conv2D/ReadVariableOpЂDlode_star_base_model_1/sequential_1/conv2d_15/BiasAdd/ReadVariableOpЂClode_star_base_model_1/sequential_1/conv2d_15/Conv2D/ReadVariableOpЂDlode_star_base_model_1/sequential_1/conv2d_16/BiasAdd/ReadVariableOpЂClode_star_base_model_1/sequential_1/conv2d_16/Conv2D/ReadVariableOpЂDlode_star_base_model_1/sequential_1/conv2d_17/BiasAdd/ReadVariableOpЂClode_star_base_model_1/sequential_1/conv2d_17/Conv2D/ReadVariableOpЂDlode_star_base_model_1/sequential_1/conv2d_18/BiasAdd/ReadVariableOpЂClode_star_base_model_1/sequential_1/conv2d_18/Conv2D/ReadVariableOpЂDlode_star_base_model_1/sequential_1/conv2d_19/BiasAdd/ReadVariableOpЂClode_star_base_model_1/sequential_1/conv2d_19/Conv2D/ReadVariableOp
Clode_star_base_model_1/sequential_1/conv2d_10/Conv2D/ReadVariableOpReadVariableOpLlode_star_base_model_1_sequential_1_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02E
Clode_star_base_model_1/sequential_1/conv2d_10/Conv2D/ReadVariableOpЎ
4lode_star_base_model_1/sequential_1/conv2d_10/Conv2DConv2Dinput_1Klode_star_base_model_1/sequential_1/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
26
4lode_star_base_model_1/sequential_1/conv2d_10/Conv2D
Dlode_star_base_model_1/sequential_1/conv2d_10/BiasAdd/ReadVariableOpReadVariableOpMlode_star_base_model_1_sequential_1_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02F
Dlode_star_base_model_1/sequential_1/conv2d_10/BiasAdd/ReadVariableOpР
5lode_star_base_model_1/sequential_1/conv2d_10/BiasAddBiasAdd=lode_star_base_model_1/sequential_1/conv2d_10/Conv2D:output:0Llode_star_base_model_1/sequential_1/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 27
5lode_star_base_model_1/sequential_1/conv2d_10/BiasAddъ
2lode_star_base_model_1/sequential_1/conv2d_10/ReluRelu>lode_star_base_model_1/sequential_1/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 24
2lode_star_base_model_1/sequential_1/conv2d_10/Relu
Clode_star_base_model_1/sequential_1/conv2d_11/Conv2D/ReadVariableOpReadVariableOpLlode_star_base_model_1_sequential_1_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02E
Clode_star_base_model_1/sequential_1/conv2d_11/Conv2D/ReadVariableOpч
4lode_star_base_model_1/sequential_1/conv2d_11/Conv2DConv2D@lode_star_base_model_1/sequential_1/conv2d_10/Relu:activations:0Klode_star_base_model_1/sequential_1/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
26
4lode_star_base_model_1/sequential_1/conv2d_11/Conv2D
Dlode_star_base_model_1/sequential_1/conv2d_11/BiasAdd/ReadVariableOpReadVariableOpMlode_star_base_model_1_sequential_1_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02F
Dlode_star_base_model_1/sequential_1/conv2d_11/BiasAdd/ReadVariableOpР
5lode_star_base_model_1/sequential_1/conv2d_11/BiasAddBiasAdd=lode_star_base_model_1/sequential_1/conv2d_11/Conv2D:output:0Llode_star_base_model_1/sequential_1/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 27
5lode_star_base_model_1/sequential_1/conv2d_11/BiasAddъ
2lode_star_base_model_1/sequential_1/conv2d_11/ReluRelu>lode_star_base_model_1/sequential_1/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 24
2lode_star_base_model_1/sequential_1/conv2d_11/ReluГ
;lode_star_base_model_1/sequential_1/max_pooling2d_1/MaxPoolMaxPool@lode_star_base_model_1/sequential_1/conv2d_11/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ## *
ksize
*
paddingSAME*
strides
2=
;lode_star_base_model_1/sequential_1/max_pooling2d_1/MaxPool
Clode_star_base_model_1/sequential_1/conv2d_12/Conv2D/ReadVariableOpReadVariableOpLlode_star_base_model_1_sequential_1_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02E
Clode_star_base_model_1/sequential_1/conv2d_12/Conv2D/ReadVariableOpы
4lode_star_base_model_1/sequential_1/conv2d_12/Conv2DConv2DDlode_star_base_model_1/sequential_1/max_pooling2d_1/MaxPool:output:0Klode_star_base_model_1/sequential_1/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
26
4lode_star_base_model_1/sequential_1/conv2d_12/Conv2D
Dlode_star_base_model_1/sequential_1/conv2d_12/BiasAdd/ReadVariableOpReadVariableOpMlode_star_base_model_1_sequential_1_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dlode_star_base_model_1/sequential_1/conv2d_12/BiasAdd/ReadVariableOpР
5lode_star_base_model_1/sequential_1/conv2d_12/BiasAddBiasAdd=lode_star_base_model_1/sequential_1/conv2d_12/Conv2D:output:0Llode_star_base_model_1/sequential_1/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@27
5lode_star_base_model_1/sequential_1/conv2d_12/BiasAddъ
2lode_star_base_model_1/sequential_1/conv2d_12/ReluRelu>lode_star_base_model_1/sequential_1/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@24
2lode_star_base_model_1/sequential_1/conv2d_12/Relu
Clode_star_base_model_1/sequential_1/conv2d_13/Conv2D/ReadVariableOpReadVariableOpLlode_star_base_model_1_sequential_1_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02E
Clode_star_base_model_1/sequential_1/conv2d_13/Conv2D/ReadVariableOpч
4lode_star_base_model_1/sequential_1/conv2d_13/Conv2DConv2D@lode_star_base_model_1/sequential_1/conv2d_12/Relu:activations:0Klode_star_base_model_1/sequential_1/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
26
4lode_star_base_model_1/sequential_1/conv2d_13/Conv2D
Dlode_star_base_model_1/sequential_1/conv2d_13/BiasAdd/ReadVariableOpReadVariableOpMlode_star_base_model_1_sequential_1_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dlode_star_base_model_1/sequential_1/conv2d_13/BiasAdd/ReadVariableOpР
5lode_star_base_model_1/sequential_1/conv2d_13/BiasAddBiasAdd=lode_star_base_model_1/sequential_1/conv2d_13/Conv2D:output:0Llode_star_base_model_1/sequential_1/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@27
5lode_star_base_model_1/sequential_1/conv2d_13/BiasAddъ
2lode_star_base_model_1/sequential_1/conv2d_13/ReluRelu>lode_star_base_model_1/sequential_1/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@24
2lode_star_base_model_1/sequential_1/conv2d_13/Relu
Clode_star_base_model_1/sequential_1/conv2d_14/Conv2D/ReadVariableOpReadVariableOpLlode_star_base_model_1_sequential_1_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02E
Clode_star_base_model_1/sequential_1/conv2d_14/Conv2D/ReadVariableOpч
4lode_star_base_model_1/sequential_1/conv2d_14/Conv2DConv2D@lode_star_base_model_1/sequential_1/conv2d_13/Relu:activations:0Klode_star_base_model_1/sequential_1/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
26
4lode_star_base_model_1/sequential_1/conv2d_14/Conv2D
Dlode_star_base_model_1/sequential_1/conv2d_14/BiasAdd/ReadVariableOpReadVariableOpMlode_star_base_model_1_sequential_1_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dlode_star_base_model_1/sequential_1/conv2d_14/BiasAdd/ReadVariableOpР
5lode_star_base_model_1/sequential_1/conv2d_14/BiasAddBiasAdd=lode_star_base_model_1/sequential_1/conv2d_14/Conv2D:output:0Llode_star_base_model_1/sequential_1/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@27
5lode_star_base_model_1/sequential_1/conv2d_14/BiasAddъ
2lode_star_base_model_1/sequential_1/conv2d_14/ReluRelu>lode_star_base_model_1/sequential_1/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@24
2lode_star_base_model_1/sequential_1/conv2d_14/Relu
Clode_star_base_model_1/sequential_1/conv2d_15/Conv2D/ReadVariableOpReadVariableOpLlode_star_base_model_1_sequential_1_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02E
Clode_star_base_model_1/sequential_1/conv2d_15/Conv2D/ReadVariableOpч
4lode_star_base_model_1/sequential_1/conv2d_15/Conv2DConv2D@lode_star_base_model_1/sequential_1/conv2d_14/Relu:activations:0Klode_star_base_model_1/sequential_1/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
26
4lode_star_base_model_1/sequential_1/conv2d_15/Conv2D
Dlode_star_base_model_1/sequential_1/conv2d_15/BiasAdd/ReadVariableOpReadVariableOpMlode_star_base_model_1_sequential_1_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dlode_star_base_model_1/sequential_1/conv2d_15/BiasAdd/ReadVariableOpР
5lode_star_base_model_1/sequential_1/conv2d_15/BiasAddBiasAdd=lode_star_base_model_1/sequential_1/conv2d_15/Conv2D:output:0Llode_star_base_model_1/sequential_1/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@27
5lode_star_base_model_1/sequential_1/conv2d_15/BiasAddъ
2lode_star_base_model_1/sequential_1/conv2d_15/ReluRelu>lode_star_base_model_1/sequential_1/conv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@24
2lode_star_base_model_1/sequential_1/conv2d_15/Relu
Clode_star_base_model_1/sequential_1/conv2d_16/Conv2D/ReadVariableOpReadVariableOpLlode_star_base_model_1_sequential_1_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02E
Clode_star_base_model_1/sequential_1/conv2d_16/Conv2D/ReadVariableOpч
4lode_star_base_model_1/sequential_1/conv2d_16/Conv2DConv2D@lode_star_base_model_1/sequential_1/conv2d_15/Relu:activations:0Klode_star_base_model_1/sequential_1/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
26
4lode_star_base_model_1/sequential_1/conv2d_16/Conv2D
Dlode_star_base_model_1/sequential_1/conv2d_16/BiasAdd/ReadVariableOpReadVariableOpMlode_star_base_model_1_sequential_1_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dlode_star_base_model_1/sequential_1/conv2d_16/BiasAdd/ReadVariableOpР
5lode_star_base_model_1/sequential_1/conv2d_16/BiasAddBiasAdd=lode_star_base_model_1/sequential_1/conv2d_16/Conv2D:output:0Llode_star_base_model_1/sequential_1/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@27
5lode_star_base_model_1/sequential_1/conv2d_16/BiasAddъ
2lode_star_base_model_1/sequential_1/conv2d_16/ReluRelu>lode_star_base_model_1/sequential_1/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@24
2lode_star_base_model_1/sequential_1/conv2d_16/Relu
Clode_star_base_model_1/sequential_1/conv2d_17/Conv2D/ReadVariableOpReadVariableOpLlode_star_base_model_1_sequential_1_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02E
Clode_star_base_model_1/sequential_1/conv2d_17/Conv2D/ReadVariableOpч
4lode_star_base_model_1/sequential_1/conv2d_17/Conv2DConv2D@lode_star_base_model_1/sequential_1/conv2d_16/Relu:activations:0Klode_star_base_model_1/sequential_1/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
26
4lode_star_base_model_1/sequential_1/conv2d_17/Conv2D
Dlode_star_base_model_1/sequential_1/conv2d_17/BiasAdd/ReadVariableOpReadVariableOpMlode_star_base_model_1_sequential_1_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dlode_star_base_model_1/sequential_1/conv2d_17/BiasAdd/ReadVariableOpР
5lode_star_base_model_1/sequential_1/conv2d_17/BiasAddBiasAdd=lode_star_base_model_1/sequential_1/conv2d_17/Conv2D:output:0Llode_star_base_model_1/sequential_1/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@27
5lode_star_base_model_1/sequential_1/conv2d_17/BiasAddъ
2lode_star_base_model_1/sequential_1/conv2d_17/ReluRelu>lode_star_base_model_1/sequential_1/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@24
2lode_star_base_model_1/sequential_1/conv2d_17/Relu
Clode_star_base_model_1/sequential_1/conv2d_18/Conv2D/ReadVariableOpReadVariableOpLlode_star_base_model_1_sequential_1_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02E
Clode_star_base_model_1/sequential_1/conv2d_18/Conv2D/ReadVariableOpч
4lode_star_base_model_1/sequential_1/conv2d_18/Conv2DConv2D@lode_star_base_model_1/sequential_1/conv2d_17/Relu:activations:0Klode_star_base_model_1/sequential_1/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
26
4lode_star_base_model_1/sequential_1/conv2d_18/Conv2D
Dlode_star_base_model_1/sequential_1/conv2d_18/BiasAdd/ReadVariableOpReadVariableOpMlode_star_base_model_1_sequential_1_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dlode_star_base_model_1/sequential_1/conv2d_18/BiasAdd/ReadVariableOpР
5lode_star_base_model_1/sequential_1/conv2d_18/BiasAddBiasAdd=lode_star_base_model_1/sequential_1/conv2d_18/Conv2D:output:0Llode_star_base_model_1/sequential_1/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@27
5lode_star_base_model_1/sequential_1/conv2d_18/BiasAddъ
2lode_star_base_model_1/sequential_1/conv2d_18/ReluRelu>lode_star_base_model_1/sequential_1/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@24
2lode_star_base_model_1/sequential_1/conv2d_18/Relu
Clode_star_base_model_1/sequential_1/conv2d_19/Conv2D/ReadVariableOpReadVariableOpLlode_star_base_model_1_sequential_1_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02E
Clode_star_base_model_1/sequential_1/conv2d_19/Conv2D/ReadVariableOpч
4lode_star_base_model_1/sequential_1/conv2d_19/Conv2DConv2D@lode_star_base_model_1/sequential_1/conv2d_18/Relu:activations:0Klode_star_base_model_1/sequential_1/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##*
paddingSAME*
strides
26
4lode_star_base_model_1/sequential_1/conv2d_19/Conv2D
Dlode_star_base_model_1/sequential_1/conv2d_19/BiasAdd/ReadVariableOpReadVariableOpMlode_star_base_model_1_sequential_1_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02F
Dlode_star_base_model_1/sequential_1/conv2d_19/BiasAdd/ReadVariableOpР
5lode_star_base_model_1/sequential_1/conv2d_19/BiasAddBiasAdd=lode_star_base_model_1/sequential_1/conv2d_19/Conv2D:output:0Llode_star_base_model_1/sequential_1/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##27
5lode_star_base_model_1/sequential_1/conv2d_19/BiasAdds
lode_star_base_model_1/ShapeShapeinput_1*
T0*
_output_shapes
:2
lode_star_base_model_1/Shape
lode_star_base_model_1/CastCast%lode_star_base_model_1/Shape:output:0*

DstT0*

SrcT0*
_output_shapes
:2
lode_star_base_model_1/CastЎ
lode_star_base_model_1/Shape_1Shape>lode_star_base_model_1/sequential_1/conv2d_19/BiasAdd:output:0*
T0*
_output_shapes
:2 
lode_star_base_model_1/Shape_1Ѓ
lode_star_base_model_1/Cast_1Cast'lode_star_base_model_1/Shape_1:output:0*

DstT0*

SrcT0*
_output_shapes
:2
lode_star_base_model_1/Cast_1Ђ
*lode_star_base_model_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*lode_star_base_model_1/strided_slice/stackІ
,lode_star_base_model_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,lode_star_base_model_1/strided_slice/stack_1І
,lode_star_base_model_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,lode_star_base_model_1/strided_slice/stack_2ш
$lode_star_base_model_1/strided_sliceStridedSlice!lode_star_base_model_1/Cast_1:y:03lode_star_base_model_1/strided_slice/stack:output:05lode_star_base_model_1/strided_slice/stack_1:output:05lode_star_base_model_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$lode_star_base_model_1/strided_sliceІ
,lode_star_base_model_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,lode_star_base_model_1/strided_slice_1/stackЊ
.lode_star_base_model_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.lode_star_base_model_1/strided_slice_1/stack_1Њ
.lode_star_base_model_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.lode_star_base_model_1/strided_slice_1/stack_2ђ
&lode_star_base_model_1/strided_slice_1StridedSlice!lode_star_base_model_1/Cast_1:y:05lode_star_base_model_1/strided_slice_1/stack:output:07lode_star_base_model_1/strided_slice_1/stack_1:output:07lode_star_base_model_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&lode_star_base_model_1/strided_slice_1
"lode_star_base_model_1/range/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"lode_star_base_model_1/range/start
"lode_star_base_model_1/range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lode_star_base_model_1/range/deltaџ
lode_star_base_model_1/rangeRange+lode_star_base_model_1/range/start:output:0-lode_star_base_model_1/strided_slice:output:0+lode_star_base_model_1/range/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2
lode_star_base_model_1/range
lode_star_base_model_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lode_star_base_model_1/mul/yЛ
lode_star_base_model_1/mulMul%lode_star_base_model_1/range:output:0%lode_star_base_model_1/mul/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
lode_star_base_model_1/mul
$lode_star_base_model_1/range_1/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$lode_star_base_model_1/range_1/start
$lode_star_base_model_1/range_1/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lode_star_base_model_1/range_1/delta
lode_star_base_model_1/range_1Range-lode_star_base_model_1/range_1/start:output:0/lode_star_base_model_1/strided_slice_1:output:0-lode_star_base_model_1/range_1/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2 
lode_star_base_model_1/range_1
lode_star_base_model_1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2 
lode_star_base_model_1/mul_1/yУ
lode_star_base_model_1/mul_1Mul'lode_star_base_model_1/range_1:output:0'lode_star_base_model_1/mul_1/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
lode_star_base_model_1/mul_1Џ
-lode_star_base_model_1/meshgrid/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2/
-lode_star_base_model_1/meshgrid/Reshape/shapeщ
'lode_star_base_model_1/meshgrid/ReshapeReshape lode_star_base_model_1/mul_1:z:06lode_star_base_model_1/meshgrid/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'lode_star_base_model_1/meshgrid/ReshapeГ
/lode_star_base_model_1/meshgrid/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ21
/lode_star_base_model_1/meshgrid/Reshape_1/shapeэ
)lode_star_base_model_1/meshgrid/Reshape_1Reshapelode_star_base_model_1/mul:z:08lode_star_base_model_1/meshgrid/Reshape_1/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2+
)lode_star_base_model_1/meshgrid/Reshape_1
$lode_star_base_model_1/meshgrid/SizeSize lode_star_base_model_1/mul_1:z:0*
T0*
_output_shapes
: 2&
$lode_star_base_model_1/meshgrid/Size
&lode_star_base_model_1/meshgrid/Size_1Sizelode_star_base_model_1/mul:z:0*
T0*
_output_shapes
: 2(
&lode_star_base_model_1/meshgrid/Size_1Г
/lode_star_base_model_1/meshgrid/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ21
/lode_star_base_model_1/meshgrid/Reshape_2/shapeџ
)lode_star_base_model_1/meshgrid/Reshape_2Reshape0lode_star_base_model_1/meshgrid/Reshape:output:08lode_star_base_model_1/meshgrid/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2+
)lode_star_base_model_1/meshgrid/Reshape_2Г
/lode_star_base_model_1/meshgrid/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   21
/lode_star_base_model_1/meshgrid/Reshape_3/shape
)lode_star_base_model_1/meshgrid/Reshape_3Reshape2lode_star_base_model_1/meshgrid/Reshape_1:output:08lode_star_base_model_1/meshgrid/Reshape_3/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2+
)lode_star_base_model_1/meshgrid/Reshape_3м
(lode_star_base_model_1/meshgrid/ones/mulMul/lode_star_base_model_1/meshgrid/Size_1:output:0-lode_star_base_model_1/meshgrid/Size:output:0*
T0*
_output_shapes
: 2*
(lode_star_base_model_1/meshgrid/ones/mul
+lode_star_base_model_1/meshgrid/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2-
+lode_star_base_model_1/meshgrid/ones/Less/yу
)lode_star_base_model_1/meshgrid/ones/LessLess,lode_star_base_model_1/meshgrid/ones/mul:z:04lode_star_base_model_1/meshgrid/ones/Less/y:output:0*
T0*
_output_shapes
: 2+
)lode_star_base_model_1/meshgrid/ones/Less№
+lode_star_base_model_1/meshgrid/ones/packedPack/lode_star_base_model_1/meshgrid/Size_1:output:0-lode_star_base_model_1/meshgrid/Size:output:0*
N*
T0*
_output_shapes
:2-
+lode_star_base_model_1/meshgrid/ones/packed
*lode_star_base_model_1/meshgrid/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lode_star_base_model_1/meshgrid/ones/Constњ
$lode_star_base_model_1/meshgrid/onesFill4lode_star_base_model_1/meshgrid/ones/packed:output:03lode_star_base_model_1/meshgrid/ones/Const:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2&
$lode_star_base_model_1/meshgrid/onesя
#lode_star_base_model_1/meshgrid/mulMul2lode_star_base_model_1/meshgrid/Reshape_2:output:0-lode_star_base_model_1/meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2%
#lode_star_base_model_1/meshgrid/mulѓ
%lode_star_base_model_1/meshgrid/mul_1Mul2lode_star_base_model_1/meshgrid/Reshape_3:output:0-lode_star_base_model_1/meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2'
%lode_star_base_model_1/meshgrid/mul_1­
,lode_star_base_model_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lode_star_base_model_1/strided_slice_2/stackБ
.lode_star_base_model_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       20
.lode_star_base_model_1/strided_slice_2/stack_1Б
.lode_star_base_model_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lode_star_base_model_1/strided_slice_2/stack_2Й
&lode_star_base_model_1/strided_slice_2StridedSlice>lode_star_base_model_1/sequential_1/conv2d_19/BiasAdd:output:05lode_star_base_model_1/strided_slice_2/stack:output:07lode_star_base_model_1/strided_slice_2/stack_1:output:07lode_star_base_model_1/strided_slice_2/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2(
&lode_star_base_model_1/strided_slice_2­
,lode_star_base_model_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lode_star_base_model_1/strided_slice_3/stackБ
.lode_star_base_model_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       20
.lode_star_base_model_1/strided_slice_3/stack_1Б
.lode_star_base_model_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lode_star_base_model_1/strided_slice_3/stack_2Й
&lode_star_base_model_1/strided_slice_3StridedSlice>lode_star_base_model_1/sequential_1/conv2d_19/BiasAdd:output:05lode_star_base_model_1/strided_slice_3/stack:output:07lode_star_base_model_1/strided_slice_3/stack_1:output:07lode_star_base_model_1/strided_slice_3/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2(
&lode_star_base_model_1/strided_slice_3­
,lode_star_base_model_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"    џџџџ2.
,lode_star_base_model_1/strided_slice_4/stackБ
.lode_star_base_model_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lode_star_base_model_1/strided_slice_4/stack_1Б
.lode_star_base_model_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lode_star_base_model_1/strided_slice_4/stack_2Е
&lode_star_base_model_1/strided_slice_4StridedSlice>lode_star_base_model_1/sequential_1/conv2d_19/BiasAdd:output:05lode_star_base_model_1/strided_slice_4/stack:output:07lode_star_base_model_1/strided_slice_4/stack_1:output:07lode_star_base_model_1/strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
end_mask2(
&lode_star_base_model_1/strided_slice_4Ж
lode_star_base_model_1/SigmoidSigmoid/lode_star_base_model_1/strided_slice_4:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2 
lode_star_base_model_1/Sigmoidг
lode_star_base_model_1/addAddV2/lode_star_base_model_1/strided_slice_2:output:0)lode_star_base_model_1/meshgrid/mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
lode_star_base_model_1/addе
lode_star_base_model_1/add_1AddV2/lode_star_base_model_1/strided_slice_3:output:0'lode_star_base_model_1/meshgrid/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
lode_star_base_model_1/add_1о
lode_star_base_model_1/stackPacklode_star_base_model_1/add:z:0 lode_star_base_model_1/add_1:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
axisџџџџџџџџџ2
lode_star_base_model_1/stack­
,lode_star_base_model_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,lode_star_base_model_1/strided_slice_5/stackБ
.lode_star_base_model_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    џџџџ20
.lode_star_base_model_1/strided_slice_5/stack_1Б
.lode_star_base_model_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lode_star_base_model_1/strided_slice_5/stack_2Ѓ
&lode_star_base_model_1/strided_slice_5StridedSlice>lode_star_base_model_1/sequential_1/conv2d_19/BiasAdd:output:05lode_star_base_model_1/strided_slice_5/stack:output:07lode_star_base_model_1/strided_slice_5/stack_1:output:07lode_star_base_model_1/strided_slice_5/stack_2:output:0*
Index0*
T0*-
_output_shapes
:џџџџџџџџџ## *
ellipsis_mask2(
&lode_star_base_model_1/strided_slice_5
"lode_star_base_model_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lode_star_base_model_1/concat/axis
lode_star_base_model_1/concatConcatV2%lode_star_base_model_1/stack:output:0/lode_star_base_model_1/strided_slice_5:output:0+lode_star_base_model_1/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##2
lode_star_base_model_1/concat
IdentityIdentity&lode_star_base_model_1/concat:output:0E^lode_star_base_model_1/sequential_1/conv2d_10/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_10/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_11/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_11/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_12/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_12/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_13/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_13/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_14/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_14/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_15/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_15/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_16/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_16/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_17/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_17/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_18/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_18/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_19/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity

Identity_1Identity"lode_star_base_model_1/Sigmoid:y:0E^lode_star_base_model_1/sequential_1/conv2d_10/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_10/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_11/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_11/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_12/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_12/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_13/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_13/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_14/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_14/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_15/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_15/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_16/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_16/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_17/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_17/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_18/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_18/Conv2D/ReadVariableOpE^lode_star_base_model_1/sequential_1/conv2d_19/BiasAdd/ReadVariableOpD^lode_star_base_model_1/sequential_1/conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 2
Dlode_star_base_model_1/sequential_1/conv2d_10/BiasAdd/ReadVariableOpDlode_star_base_model_1/sequential_1/conv2d_10/BiasAdd/ReadVariableOp2
Clode_star_base_model_1/sequential_1/conv2d_10/Conv2D/ReadVariableOpClode_star_base_model_1/sequential_1/conv2d_10/Conv2D/ReadVariableOp2
Dlode_star_base_model_1/sequential_1/conv2d_11/BiasAdd/ReadVariableOpDlode_star_base_model_1/sequential_1/conv2d_11/BiasAdd/ReadVariableOp2
Clode_star_base_model_1/sequential_1/conv2d_11/Conv2D/ReadVariableOpClode_star_base_model_1/sequential_1/conv2d_11/Conv2D/ReadVariableOp2
Dlode_star_base_model_1/sequential_1/conv2d_12/BiasAdd/ReadVariableOpDlode_star_base_model_1/sequential_1/conv2d_12/BiasAdd/ReadVariableOp2
Clode_star_base_model_1/sequential_1/conv2d_12/Conv2D/ReadVariableOpClode_star_base_model_1/sequential_1/conv2d_12/Conv2D/ReadVariableOp2
Dlode_star_base_model_1/sequential_1/conv2d_13/BiasAdd/ReadVariableOpDlode_star_base_model_1/sequential_1/conv2d_13/BiasAdd/ReadVariableOp2
Clode_star_base_model_1/sequential_1/conv2d_13/Conv2D/ReadVariableOpClode_star_base_model_1/sequential_1/conv2d_13/Conv2D/ReadVariableOp2
Dlode_star_base_model_1/sequential_1/conv2d_14/BiasAdd/ReadVariableOpDlode_star_base_model_1/sequential_1/conv2d_14/BiasAdd/ReadVariableOp2
Clode_star_base_model_1/sequential_1/conv2d_14/Conv2D/ReadVariableOpClode_star_base_model_1/sequential_1/conv2d_14/Conv2D/ReadVariableOp2
Dlode_star_base_model_1/sequential_1/conv2d_15/BiasAdd/ReadVariableOpDlode_star_base_model_1/sequential_1/conv2d_15/BiasAdd/ReadVariableOp2
Clode_star_base_model_1/sequential_1/conv2d_15/Conv2D/ReadVariableOpClode_star_base_model_1/sequential_1/conv2d_15/Conv2D/ReadVariableOp2
Dlode_star_base_model_1/sequential_1/conv2d_16/BiasAdd/ReadVariableOpDlode_star_base_model_1/sequential_1/conv2d_16/BiasAdd/ReadVariableOp2
Clode_star_base_model_1/sequential_1/conv2d_16/Conv2D/ReadVariableOpClode_star_base_model_1/sequential_1/conv2d_16/Conv2D/ReadVariableOp2
Dlode_star_base_model_1/sequential_1/conv2d_17/BiasAdd/ReadVariableOpDlode_star_base_model_1/sequential_1/conv2d_17/BiasAdd/ReadVariableOp2
Clode_star_base_model_1/sequential_1/conv2d_17/Conv2D/ReadVariableOpClode_star_base_model_1/sequential_1/conv2d_17/Conv2D/ReadVariableOp2
Dlode_star_base_model_1/sequential_1/conv2d_18/BiasAdd/ReadVariableOpDlode_star_base_model_1/sequential_1/conv2d_18/BiasAdd/ReadVariableOp2
Clode_star_base_model_1/sequential_1/conv2d_18/Conv2D/ReadVariableOpClode_star_base_model_1/sequential_1/conv2d_18/Conv2D/ReadVariableOp2
Dlode_star_base_model_1/sequential_1/conv2d_19/BiasAdd/ReadVariableOpDlode_star_base_model_1/sequential_1/conv2d_19/BiasAdd/ReadVariableOp2
Clode_star_base_model_1/sequential_1/conv2d_19/Conv2D/ReadVariableOpClode_star_base_model_1/sequential_1/conv2d_19/Conv2D/ReadVariableOp:X T
/
_output_shapes
:џџџџџџџџџFF
!
_user_specified_name	input_1
аж

Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_37732
input_1O
5sequential_1_conv2d_10_conv2d_readvariableop_resource: D
6sequential_1_conv2d_10_biasadd_readvariableop_resource: O
5sequential_1_conv2d_11_conv2d_readvariableop_resource:  D
6sequential_1_conv2d_11_biasadd_readvariableop_resource: O
5sequential_1_conv2d_12_conv2d_readvariableop_resource: @D
6sequential_1_conv2d_12_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_13_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_13_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_14_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_14_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_15_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_15_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_16_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_16_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_17_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_17_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_18_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_18_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_19_conv2d_readvariableop_resource:@D
6sequential_1_conv2d_19_biasadd_readvariableop_resource:
identity

identity_1Ђ-sequential_1/conv2d_10/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_10/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_11/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_11/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_12/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_12/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_13/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_13/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_14/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_14/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_15/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_15/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_16/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_16/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_17/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_17/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_18/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_18/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_19/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_19/Conv2D/ReadVariableOpк
,sequential_1/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_1/conv2d_10/Conv2D/ReadVariableOpщ
sequential_1/conv2d_10/Conv2DConv2Dinput_14sequential_1/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
sequential_1/conv2d_10/Conv2Dб
-sequential_1/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_1/conv2d_10/BiasAdd/ReadVariableOpф
sequential_1/conv2d_10/BiasAddBiasAdd&sequential_1/conv2d_10/Conv2D:output:05sequential_1/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2 
sequential_1/conv2d_10/BiasAddЅ
sequential_1/conv2d_10/ReluRelu'sequential_1/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
sequential_1/conv2d_10/Reluк
,sequential_1/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02.
,sequential_1/conv2d_11/Conv2D/ReadVariableOp
sequential_1/conv2d_11/Conv2DConv2D)sequential_1/conv2d_10/Relu:activations:04sequential_1/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
sequential_1/conv2d_11/Conv2Dб
-sequential_1/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_1/conv2d_11/BiasAdd/ReadVariableOpф
sequential_1/conv2d_11/BiasAddBiasAdd&sequential_1/conv2d_11/Conv2D:output:05sequential_1/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2 
sequential_1/conv2d_11/BiasAddЅ
sequential_1/conv2d_11/ReluRelu'sequential_1/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
sequential_1/conv2d_11/Reluю
$sequential_1/max_pooling2d_1/MaxPoolMaxPool)sequential_1/conv2d_11/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ## *
ksize
*
paddingSAME*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolк
,sequential_1/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_1/conv2d_12/Conv2D/ReadVariableOp
sequential_1/conv2d_12/Conv2DConv2D-sequential_1/max_pooling2d_1/MaxPool:output:04sequential_1/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_12/Conv2Dб
-sequential_1/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_12/BiasAdd/ReadVariableOpф
sequential_1/conv2d_12/BiasAddBiasAdd&sequential_1/conv2d_12/Conv2D:output:05sequential_1/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_12/BiasAddЅ
sequential_1/conv2d_12/ReluRelu'sequential_1/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_12/Reluк
,sequential_1/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_13/Conv2D/ReadVariableOp
sequential_1/conv2d_13/Conv2DConv2D)sequential_1/conv2d_12/Relu:activations:04sequential_1/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_13/Conv2Dб
-sequential_1/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_13/BiasAdd/ReadVariableOpф
sequential_1/conv2d_13/BiasAddBiasAdd&sequential_1/conv2d_13/Conv2D:output:05sequential_1/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_13/BiasAddЅ
sequential_1/conv2d_13/ReluRelu'sequential_1/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_13/Reluк
,sequential_1/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_14/Conv2D/ReadVariableOp
sequential_1/conv2d_14/Conv2DConv2D)sequential_1/conv2d_13/Relu:activations:04sequential_1/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_14/Conv2Dб
-sequential_1/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_14/BiasAdd/ReadVariableOpф
sequential_1/conv2d_14/BiasAddBiasAdd&sequential_1/conv2d_14/Conv2D:output:05sequential_1/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_14/BiasAddЅ
sequential_1/conv2d_14/ReluRelu'sequential_1/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_14/Reluк
,sequential_1/conv2d_15/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_15/Conv2D/ReadVariableOp
sequential_1/conv2d_15/Conv2DConv2D)sequential_1/conv2d_14/Relu:activations:04sequential_1/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_15/Conv2Dб
-sequential_1/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_15/BiasAdd/ReadVariableOpф
sequential_1/conv2d_15/BiasAddBiasAdd&sequential_1/conv2d_15/Conv2D:output:05sequential_1/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_15/BiasAddЅ
sequential_1/conv2d_15/ReluRelu'sequential_1/conv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_15/Reluк
,sequential_1/conv2d_16/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_16/Conv2D/ReadVariableOp
sequential_1/conv2d_16/Conv2DConv2D)sequential_1/conv2d_15/Relu:activations:04sequential_1/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_16/Conv2Dб
-sequential_1/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_16/BiasAdd/ReadVariableOpф
sequential_1/conv2d_16/BiasAddBiasAdd&sequential_1/conv2d_16/Conv2D:output:05sequential_1/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_16/BiasAddЅ
sequential_1/conv2d_16/ReluRelu'sequential_1/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_16/Reluк
,sequential_1/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_17/Conv2D/ReadVariableOp
sequential_1/conv2d_17/Conv2DConv2D)sequential_1/conv2d_16/Relu:activations:04sequential_1/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_17/Conv2Dб
-sequential_1/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_17/BiasAdd/ReadVariableOpф
sequential_1/conv2d_17/BiasAddBiasAdd&sequential_1/conv2d_17/Conv2D:output:05sequential_1/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_17/BiasAddЅ
sequential_1/conv2d_17/ReluRelu'sequential_1/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_17/Reluк
,sequential_1/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_18/Conv2D/ReadVariableOp
sequential_1/conv2d_18/Conv2DConv2D)sequential_1/conv2d_17/Relu:activations:04sequential_1/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_18/Conv2Dб
-sequential_1/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_18/BiasAdd/ReadVariableOpф
sequential_1/conv2d_18/BiasAddBiasAdd&sequential_1/conv2d_18/Conv2D:output:05sequential_1/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_18/BiasAddЅ
sequential_1/conv2d_18/ReluRelu'sequential_1/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_18/Reluк
,sequential_1/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02.
,sequential_1/conv2d_19/Conv2D/ReadVariableOp
sequential_1/conv2d_19/Conv2DConv2D)sequential_1/conv2d_18/Relu:activations:04sequential_1/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##*
paddingSAME*
strides
2
sequential_1/conv2d_19/Conv2Dб
-sequential_1/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_1/conv2d_19/BiasAdd/ReadVariableOpф
sequential_1/conv2d_19/BiasAddBiasAdd&sequential_1/conv2d_19/Conv2D:output:05sequential_1/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##2 
sequential_1/conv2d_19/BiasAddE
ShapeShapeinput_1*
T0*
_output_shapes
:2
ShapeX
CastCastShape:output:0*

DstT0*

SrcT0*
_output_shapes
:2
Casti
Shape_1Shape'sequential_1/conv2d_19/BiasAdd:output:0*
T0*
_output_shapes
:2	
Shape_1^
Cast_1CastShape_1:output:0*

DstT0*

SrcT0*
_output_shapes
:2
Cast_1t
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2о
strided_sliceStridedSlice
Cast_1:y:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ш
strided_slice_1StridedSlice
Cast_1:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1_
range/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range/start_
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
range/delta
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2
rangeS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/y_
mulMulrange:output:0mul/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
mulc
range_1/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_1/startc
range_1/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
range_1/delta
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2	
range_1W
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
mul_1/yg
mul_1Mulrange_1:output:0mul_1/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
mul_1
meshgrid/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
meshgrid/Reshape/shape
meshgrid/ReshapeReshape	mul_1:z:0meshgrid/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape
meshgrid/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ2
meshgrid/Reshape_1/shape
meshgrid/Reshape_1Reshapemul:z:0!meshgrid/Reshape_1/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_1R
meshgrid/SizeSize	mul_1:z:0*
T0*
_output_shapes
: 2
meshgrid/SizeT
meshgrid/Size_1Sizemul:z:0*
T0*
_output_shapes
: 2
meshgrid/Size_1
meshgrid/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ2
meshgrid/Reshape_2/shapeЃ
meshgrid/Reshape_2Reshapemeshgrid/Reshape:output:0!meshgrid/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_2
meshgrid/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
meshgrid/Reshape_3/shapeЅ
meshgrid/Reshape_3Reshapemeshgrid/Reshape_1:output:0!meshgrid/Reshape_3/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_3
meshgrid/ones/mulMulmeshgrid/Size_1:output:0meshgrid/Size:output:0*
T0*
_output_shapes
: 2
meshgrid/ones/mulo
meshgrid/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
meshgrid/ones/Less/y
meshgrid/ones/LessLessmeshgrid/ones/mul:z:0meshgrid/ones/Less/y:output:0*
T0*
_output_shapes
: 2
meshgrid/ones/Less
meshgrid/ones/packedPackmeshgrid/Size_1:output:0meshgrid/Size:output:0*
N*
T0*
_output_shapes
:2
meshgrid/ones/packedo
meshgrid/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
meshgrid/ones/Const
meshgrid/onesFillmeshgrid/ones/packed:output:0meshgrid/ones/Const:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/ones
meshgrid/mulMulmeshgrid/Reshape_2:output:0meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/mul
meshgrid/mul_1Mulmeshgrid/Reshape_3:output:0meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/mul_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Џ
strided_slice_3StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2
strided_slice_3
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"    џџџџ2
strided_slice_4/stack
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack_1
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Ћ
strided_slice_4StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
end_mask2
strided_slice_4q
SigmoidSigmoidstrided_slice_4:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2	
Sigmoidw
addAddV2strided_slice_2:output:0meshgrid/mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
addy
add_1AddV2strided_slice_3:output:0meshgrid/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
add_1
stackPackadd:z:0	add_1:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
axisџџџџџџџџџ2
stackx
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2в
strided_slice_5StridedSliceCast:y:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_5[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
	truediv/yp
truedivRealDivstrided_slice_5:output:0truediv/y:output:0*
T0*
_output_shapes
:2	
truedivh
subSubstack:output:0truediv:z:0*
T0*/
_output_shapes
:џџџџџџџџџ##2
sub
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    џџџџ2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2
strided_slice_6StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*-
_output_shapes
:џџџџџџџџџ## *
ellipsis_mask2
strided_slice_6e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
concat/axis
concatConcatV2sub:z:0strided_slice_6:output:0concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##2
concatЁ
IdentityIdentityconcat:output:0.^sequential_1/conv2d_10/BiasAdd/ReadVariableOp-^sequential_1/conv2d_10/Conv2D/ReadVariableOp.^sequential_1/conv2d_11/BiasAdd/ReadVariableOp-^sequential_1/conv2d_11/Conv2D/ReadVariableOp.^sequential_1/conv2d_12/BiasAdd/ReadVariableOp-^sequential_1/conv2d_12/Conv2D/ReadVariableOp.^sequential_1/conv2d_13/BiasAdd/ReadVariableOp-^sequential_1/conv2d_13/Conv2D/ReadVariableOp.^sequential_1/conv2d_14/BiasAdd/ReadVariableOp-^sequential_1/conv2d_14/Conv2D/ReadVariableOp.^sequential_1/conv2d_15/BiasAdd/ReadVariableOp-^sequential_1/conv2d_15/Conv2D/ReadVariableOp.^sequential_1/conv2d_16/BiasAdd/ReadVariableOp-^sequential_1/conv2d_16/Conv2D/ReadVariableOp.^sequential_1/conv2d_17/BiasAdd/ReadVariableOp-^sequential_1/conv2d_17/Conv2D/ReadVariableOp.^sequential_1/conv2d_18/BiasAdd/ReadVariableOp-^sequential_1/conv2d_18/Conv2D/ReadVariableOp.^sequential_1/conv2d_19/BiasAdd/ReadVariableOp-^sequential_1/conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

IdentityЁ

Identity_1IdentitySigmoid:y:0.^sequential_1/conv2d_10/BiasAdd/ReadVariableOp-^sequential_1/conv2d_10/Conv2D/ReadVariableOp.^sequential_1/conv2d_11/BiasAdd/ReadVariableOp-^sequential_1/conv2d_11/Conv2D/ReadVariableOp.^sequential_1/conv2d_12/BiasAdd/ReadVariableOp-^sequential_1/conv2d_12/Conv2D/ReadVariableOp.^sequential_1/conv2d_13/BiasAdd/ReadVariableOp-^sequential_1/conv2d_13/Conv2D/ReadVariableOp.^sequential_1/conv2d_14/BiasAdd/ReadVariableOp-^sequential_1/conv2d_14/Conv2D/ReadVariableOp.^sequential_1/conv2d_15/BiasAdd/ReadVariableOp-^sequential_1/conv2d_15/Conv2D/ReadVariableOp.^sequential_1/conv2d_16/BiasAdd/ReadVariableOp-^sequential_1/conv2d_16/Conv2D/ReadVariableOp.^sequential_1/conv2d_17/BiasAdd/ReadVariableOp-^sequential_1/conv2d_17/Conv2D/ReadVariableOp.^sequential_1/conv2d_18/BiasAdd/ReadVariableOp-^sequential_1/conv2d_18/Conv2D/ReadVariableOp.^sequential_1/conv2d_19/BiasAdd/ReadVariableOp-^sequential_1/conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 2^
-sequential_1/conv2d_10/BiasAdd/ReadVariableOp-sequential_1/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_10/Conv2D/ReadVariableOp,sequential_1/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_11/BiasAdd/ReadVariableOp-sequential_1/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_11/Conv2D/ReadVariableOp,sequential_1/conv2d_11/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_12/BiasAdd/ReadVariableOp-sequential_1/conv2d_12/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_12/Conv2D/ReadVariableOp,sequential_1/conv2d_12/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_13/BiasAdd/ReadVariableOp-sequential_1/conv2d_13/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_13/Conv2D/ReadVariableOp,sequential_1/conv2d_13/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_14/BiasAdd/ReadVariableOp-sequential_1/conv2d_14/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_14/Conv2D/ReadVariableOp,sequential_1/conv2d_14/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_15/BiasAdd/ReadVariableOp-sequential_1/conv2d_15/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_15/Conv2D/ReadVariableOp,sequential_1/conv2d_15/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_16/BiasAdd/ReadVariableOp-sequential_1/conv2d_16/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_16/Conv2D/ReadVariableOp,sequential_1/conv2d_16/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_17/BiasAdd/ReadVariableOp-sequential_1/conv2d_17/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_17/Conv2D/ReadVariableOp,sequential_1/conv2d_17/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_18/BiasAdd/ReadVariableOp-sequential_1/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_18/Conv2D/ReadVariableOp,sequential_1/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_19/BiasAdd/ReadVariableOp-sequential_1/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_19/Conv2D/ReadVariableOp,sequential_1/conv2d_19/Conv2D/ReadVariableOp:X T
/
_output_shapes
:џџџџџџџџџFF
!
_user_specified_name	input_1

§
D__inference_conv2d_17_layer_call_and_return_conditional_losses_35570

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ц
+
!__inference__traced_restore_38849
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: =
#assignvariableop_5_conv2d_10_kernel: /
!assignvariableop_6_conv2d_10_bias: =
#assignvariableop_7_conv2d_11_kernel:  /
!assignvariableop_8_conv2d_11_bias: =
#assignvariableop_9_conv2d_12_kernel: @0
"assignvariableop_10_conv2d_12_bias:@>
$assignvariableop_11_conv2d_13_kernel:@@0
"assignvariableop_12_conv2d_13_bias:@>
$assignvariableop_13_conv2d_14_kernel:@@0
"assignvariableop_14_conv2d_14_bias:@>
$assignvariableop_15_conv2d_15_kernel:@@0
"assignvariableop_16_conv2d_15_bias:@>
$assignvariableop_17_conv2d_16_kernel:@@0
"assignvariableop_18_conv2d_16_bias:@>
$assignvariableop_19_conv2d_17_kernel:@@0
"assignvariableop_20_conv2d_17_bias:@>
$assignvariableop_21_conv2d_18_kernel:@@0
"assignvariableop_22_conv2d_18_bias:@>
$assignvariableop_23_conv2d_19_kernel:@0
"assignvariableop_24_conv2d_19_bias:#
assignvariableop_25_total: #
assignvariableop_26_count: E
+assignvariableop_27_adam_conv2d_10_kernel_m: 7
)assignvariableop_28_adam_conv2d_10_bias_m: E
+assignvariableop_29_adam_conv2d_11_kernel_m:  7
)assignvariableop_30_adam_conv2d_11_bias_m: E
+assignvariableop_31_adam_conv2d_12_kernel_m: @7
)assignvariableop_32_adam_conv2d_12_bias_m:@E
+assignvariableop_33_adam_conv2d_13_kernel_m:@@7
)assignvariableop_34_adam_conv2d_13_bias_m:@E
+assignvariableop_35_adam_conv2d_14_kernel_m:@@7
)assignvariableop_36_adam_conv2d_14_bias_m:@E
+assignvariableop_37_adam_conv2d_15_kernel_m:@@7
)assignvariableop_38_adam_conv2d_15_bias_m:@E
+assignvariableop_39_adam_conv2d_16_kernel_m:@@7
)assignvariableop_40_adam_conv2d_16_bias_m:@E
+assignvariableop_41_adam_conv2d_17_kernel_m:@@7
)assignvariableop_42_adam_conv2d_17_bias_m:@E
+assignvariableop_43_adam_conv2d_18_kernel_m:@@7
)assignvariableop_44_adam_conv2d_18_bias_m:@E
+assignvariableop_45_adam_conv2d_19_kernel_m:@7
)assignvariableop_46_adam_conv2d_19_bias_m:E
+assignvariableop_47_adam_conv2d_10_kernel_v: 7
)assignvariableop_48_adam_conv2d_10_bias_v: E
+assignvariableop_49_adam_conv2d_11_kernel_v:  7
)assignvariableop_50_adam_conv2d_11_bias_v: E
+assignvariableop_51_adam_conv2d_12_kernel_v: @7
)assignvariableop_52_adam_conv2d_12_bias_v:@E
+assignvariableop_53_adam_conv2d_13_kernel_v:@@7
)assignvariableop_54_adam_conv2d_13_bias_v:@E
+assignvariableop_55_adam_conv2d_14_kernel_v:@@7
)assignvariableop_56_adam_conv2d_14_bias_v:@E
+assignvariableop_57_adam_conv2d_15_kernel_v:@@7
)assignvariableop_58_adam_conv2d_15_bias_v:@E
+assignvariableop_59_adam_conv2d_16_kernel_v:@@7
)assignvariableop_60_adam_conv2d_16_bias_v:@E
+assignvariableop_61_adam_conv2d_17_kernel_v:@@7
)assignvariableop_62_adam_conv2d_17_bias_v:@E
+assignvariableop_63_adam_conv2d_18_kernel_v:@@7
)assignvariableop_64_adam_conv2d_18_bias_v:@E
+assignvariableop_65_adam_conv2d_19_kernel_v:@7
)assignvariableop_66_adam_conv2d_19_bias_v:
identity_68ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ў$
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*К#
valueА#B­#DB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*
valueBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*І
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*R
dtypesH
F2D	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѓ
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ѓ
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ђ
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Њ
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ј
AssignVariableOp_5AssignVariableOp#assignvariableop_5_conv2d_10_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6І
AssignVariableOp_6AssignVariableOp!assignvariableop_6_conv2d_10_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ј
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv2d_11_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8І
AssignVariableOp_8AssignVariableOp!assignvariableop_8_conv2d_11_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ј
AssignVariableOp_9AssignVariableOp#assignvariableop_9_conv2d_12_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Њ
AssignVariableOp_10AssignVariableOp"assignvariableop_10_conv2d_12_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ќ
AssignVariableOp_11AssignVariableOp$assignvariableop_11_conv2d_13_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Њ
AssignVariableOp_12AssignVariableOp"assignvariableop_12_conv2d_13_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ќ
AssignVariableOp_13AssignVariableOp$assignvariableop_13_conv2d_14_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Њ
AssignVariableOp_14AssignVariableOp"assignvariableop_14_conv2d_14_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ќ
AssignVariableOp_15AssignVariableOp$assignvariableop_15_conv2d_15_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Њ
AssignVariableOp_16AssignVariableOp"assignvariableop_16_conv2d_15_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ќ
AssignVariableOp_17AssignVariableOp$assignvariableop_17_conv2d_16_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Њ
AssignVariableOp_18AssignVariableOp"assignvariableop_18_conv2d_16_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ќ
AssignVariableOp_19AssignVariableOp$assignvariableop_19_conv2d_17_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Њ
AssignVariableOp_20AssignVariableOp"assignvariableop_20_conv2d_17_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ќ
AssignVariableOp_21AssignVariableOp$assignvariableop_21_conv2d_18_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Њ
AssignVariableOp_22AssignVariableOp"assignvariableop_22_conv2d_18_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ќ
AssignVariableOp_23AssignVariableOp$assignvariableop_23_conv2d_19_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Њ
AssignVariableOp_24AssignVariableOp"assignvariableop_24_conv2d_19_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ё
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ё
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Г
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_10_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Б
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_10_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Г
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_11_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Б
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_11_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Г
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_12_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Б
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_12_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Г
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_13_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Б
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_13_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Г
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_14_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Б
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_14_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Г
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_15_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Б
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_15_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Г
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_16_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Б
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_16_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41Г
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_17_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Б
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_17_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43Г
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_18_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44Б
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_18_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45Г
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_19_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46Б
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_19_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Г
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_10_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48Б
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_10_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49Г
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_11_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50Б
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_11_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51Г
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_12_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52Б
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_12_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53Г
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_13_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54Б
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_13_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55Г
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_conv2d_14_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56Б
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_conv2d_14_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57Г
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_conv2d_15_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58Б
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_conv2d_15_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59Г
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_conv2d_16_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60Б
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_conv2d_16_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61Г
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_conv2d_17_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62Б
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_conv2d_17_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63Г
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_conv2d_18_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64Б
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_conv2d_18_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65Г
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_conv2d_19_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66Б
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_conv2d_19_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_669
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp 
Identity_67Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_67
Identity_68IdentityIdentity_67:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_68"#
identity_68Identity_68:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

§
D__inference_conv2d_16_layer_call_and_return_conditional_losses_38354

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs


)__inference_conv2d_19_layer_call_fn_38403

inputs!
unknown:@
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_356032
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
h
њ
G__inference_sequential_1_layer_call_and_return_conditional_losses_36133

inputsB
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: B
(conv2d_11_conv2d_readvariableop_resource:  7
)conv2d_11_biasadd_readvariableop_resource: B
(conv2d_12_conv2d_readvariableop_resource: @7
)conv2d_12_biasadd_readvariableop_resource:@B
(conv2d_13_conv2d_readvariableop_resource:@@7
)conv2d_13_biasadd_readvariableop_resource:@B
(conv2d_14_conv2d_readvariableop_resource:@@7
)conv2d_14_biasadd_readvariableop_resource:@B
(conv2d_15_conv2d_readvariableop_resource:@@7
)conv2d_15_biasadd_readvariableop_resource:@B
(conv2d_16_conv2d_readvariableop_resource:@@7
)conv2d_16_biasadd_readvariableop_resource:@B
(conv2d_17_conv2d_readvariableop_resource:@@7
)conv2d_17_biasadd_readvariableop_resource:@B
(conv2d_18_conv2d_readvariableop_resource:@@7
)conv2d_18_biasadd_readvariableop_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:
identityЂ conv2d_10/BiasAdd/ReadVariableOpЂconv2d_10/Conv2D/ReadVariableOpЂ conv2d_11/BiasAdd/ReadVariableOpЂconv2d_11/Conv2D/ReadVariableOpЂ conv2d_12/BiasAdd/ReadVariableOpЂconv2d_12/Conv2D/ReadVariableOpЂ conv2d_13/BiasAdd/ReadVariableOpЂconv2d_13/Conv2D/ReadVariableOpЂ conv2d_14/BiasAdd/ReadVariableOpЂconv2d_14/Conv2D/ReadVariableOpЂ conv2d_15/BiasAdd/ReadVariableOpЂconv2d_15/Conv2D/ReadVariableOpЂ conv2d_16/BiasAdd/ReadVariableOpЂconv2d_16/Conv2D/ReadVariableOpЂ conv2d_17/BiasAdd/ReadVariableOpЂconv2d_17/Conv2D/ReadVariableOpЂ conv2d_18/BiasAdd/ReadVariableOpЂconv2d_18/Conv2D/ReadVariableOpЂ conv2d_19/BiasAdd/ReadVariableOpЂconv2d_19/Conv2D/ReadVariableOpГ
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOpС
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
conv2d_10/Conv2DЊ
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOpА
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_10/ReluГ
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_11/Conv2D/ReadVariableOpз
conv2d_11/Conv2DConv2Dconv2d_10/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
conv2d_11/Conv2DЊ
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_11/BiasAdd/ReadVariableOpА
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_11/BiasAdd~
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_11/ReluЧ
max_pooling2d_1/MaxPoolMaxPoolconv2d_11/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ## *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolГ
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_12/Conv2D/ReadVariableOpл
conv2d_12/Conv2DConv2D max_pooling2d_1/MaxPool:output:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_12/Conv2DЊ
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOpА
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_12/BiasAdd~
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_12/ReluГ
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_13/Conv2D/ReadVariableOpз
conv2d_13/Conv2DConv2Dconv2d_12/Relu:activations:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_13/Conv2DЊ
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOpА
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_13/BiasAdd~
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_13/ReluГ
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_14/Conv2D/ReadVariableOpз
conv2d_14/Conv2DConv2Dconv2d_13/Relu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_14/Conv2DЊ
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOpА
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_14/BiasAdd~
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_14/ReluГ
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_15/Conv2D/ReadVariableOpз
conv2d_15/Conv2DConv2Dconv2d_14/Relu:activations:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_15/Conv2DЊ
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOpА
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_15/BiasAdd~
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_15/ReluГ
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_16/Conv2D/ReadVariableOpз
conv2d_16/Conv2DConv2Dconv2d_15/Relu:activations:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_16/Conv2DЊ
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOpА
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_16/BiasAdd~
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_16/ReluГ
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_17/Conv2D/ReadVariableOpз
conv2d_17/Conv2DConv2Dconv2d_16/Relu:activations:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_17/Conv2DЊ
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOpА
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_17/BiasAdd~
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_17/ReluГ
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_18/Conv2D/ReadVariableOpз
conv2d_18/Conv2DConv2Dconv2d_17/Relu:activations:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_18/Conv2DЊ
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOpА
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_18/BiasAdd~
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_18/ReluГ
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOpз
conv2d_19/Conv2DConv2Dconv2d_18/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##*
paddingSAME*
strides
2
conv2d_19/Conv2DЊ
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOpА
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##2
conv2d_19/BiasAddЈ
IdentityIdentityconv2d_19/BiasAdd:output:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџFF
 
_user_specified_nameinputs


)__inference_conv2d_18_layer_call_fn_38383

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_355872
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
гЯ

Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_37588
input_1O
5sequential_1_conv2d_10_conv2d_readvariableop_resource: D
6sequential_1_conv2d_10_biasadd_readvariableop_resource: O
5sequential_1_conv2d_11_conv2d_readvariableop_resource:  D
6sequential_1_conv2d_11_biasadd_readvariableop_resource: O
5sequential_1_conv2d_12_conv2d_readvariableop_resource: @D
6sequential_1_conv2d_12_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_13_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_13_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_14_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_14_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_15_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_15_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_16_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_16_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_17_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_17_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_18_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_18_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_19_conv2d_readvariableop_resource:@D
6sequential_1_conv2d_19_biasadd_readvariableop_resource:
identity

identity_1Ђ-sequential_1/conv2d_10/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_10/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_11/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_11/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_12/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_12/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_13/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_13/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_14/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_14/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_15/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_15/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_16/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_16/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_17/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_17/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_18/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_18/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_19/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_19/Conv2D/ReadVariableOpк
,sequential_1/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_1/conv2d_10/Conv2D/ReadVariableOpщ
sequential_1/conv2d_10/Conv2DConv2Dinput_14sequential_1/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
sequential_1/conv2d_10/Conv2Dб
-sequential_1/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_1/conv2d_10/BiasAdd/ReadVariableOpф
sequential_1/conv2d_10/BiasAddBiasAdd&sequential_1/conv2d_10/Conv2D:output:05sequential_1/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2 
sequential_1/conv2d_10/BiasAddЅ
sequential_1/conv2d_10/ReluRelu'sequential_1/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
sequential_1/conv2d_10/Reluк
,sequential_1/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02.
,sequential_1/conv2d_11/Conv2D/ReadVariableOp
sequential_1/conv2d_11/Conv2DConv2D)sequential_1/conv2d_10/Relu:activations:04sequential_1/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
sequential_1/conv2d_11/Conv2Dб
-sequential_1/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_1/conv2d_11/BiasAdd/ReadVariableOpф
sequential_1/conv2d_11/BiasAddBiasAdd&sequential_1/conv2d_11/Conv2D:output:05sequential_1/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2 
sequential_1/conv2d_11/BiasAddЅ
sequential_1/conv2d_11/ReluRelu'sequential_1/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
sequential_1/conv2d_11/Reluю
$sequential_1/max_pooling2d_1/MaxPoolMaxPool)sequential_1/conv2d_11/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ## *
ksize
*
paddingSAME*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolк
,sequential_1/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_1/conv2d_12/Conv2D/ReadVariableOp
sequential_1/conv2d_12/Conv2DConv2D-sequential_1/max_pooling2d_1/MaxPool:output:04sequential_1/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_12/Conv2Dб
-sequential_1/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_12/BiasAdd/ReadVariableOpф
sequential_1/conv2d_12/BiasAddBiasAdd&sequential_1/conv2d_12/Conv2D:output:05sequential_1/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_12/BiasAddЅ
sequential_1/conv2d_12/ReluRelu'sequential_1/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_12/Reluк
,sequential_1/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_13/Conv2D/ReadVariableOp
sequential_1/conv2d_13/Conv2DConv2D)sequential_1/conv2d_12/Relu:activations:04sequential_1/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_13/Conv2Dб
-sequential_1/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_13/BiasAdd/ReadVariableOpф
sequential_1/conv2d_13/BiasAddBiasAdd&sequential_1/conv2d_13/Conv2D:output:05sequential_1/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_13/BiasAddЅ
sequential_1/conv2d_13/ReluRelu'sequential_1/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_13/Reluк
,sequential_1/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_14/Conv2D/ReadVariableOp
sequential_1/conv2d_14/Conv2DConv2D)sequential_1/conv2d_13/Relu:activations:04sequential_1/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_14/Conv2Dб
-sequential_1/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_14/BiasAdd/ReadVariableOpф
sequential_1/conv2d_14/BiasAddBiasAdd&sequential_1/conv2d_14/Conv2D:output:05sequential_1/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_14/BiasAddЅ
sequential_1/conv2d_14/ReluRelu'sequential_1/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_14/Reluк
,sequential_1/conv2d_15/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_15/Conv2D/ReadVariableOp
sequential_1/conv2d_15/Conv2DConv2D)sequential_1/conv2d_14/Relu:activations:04sequential_1/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_15/Conv2Dб
-sequential_1/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_15/BiasAdd/ReadVariableOpф
sequential_1/conv2d_15/BiasAddBiasAdd&sequential_1/conv2d_15/Conv2D:output:05sequential_1/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_15/BiasAddЅ
sequential_1/conv2d_15/ReluRelu'sequential_1/conv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_15/Reluк
,sequential_1/conv2d_16/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_16/Conv2D/ReadVariableOp
sequential_1/conv2d_16/Conv2DConv2D)sequential_1/conv2d_15/Relu:activations:04sequential_1/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_16/Conv2Dб
-sequential_1/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_16/BiasAdd/ReadVariableOpф
sequential_1/conv2d_16/BiasAddBiasAdd&sequential_1/conv2d_16/Conv2D:output:05sequential_1/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_16/BiasAddЅ
sequential_1/conv2d_16/ReluRelu'sequential_1/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_16/Reluк
,sequential_1/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_17/Conv2D/ReadVariableOp
sequential_1/conv2d_17/Conv2DConv2D)sequential_1/conv2d_16/Relu:activations:04sequential_1/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_17/Conv2Dб
-sequential_1/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_17/BiasAdd/ReadVariableOpф
sequential_1/conv2d_17/BiasAddBiasAdd&sequential_1/conv2d_17/Conv2D:output:05sequential_1/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_17/BiasAddЅ
sequential_1/conv2d_17/ReluRelu'sequential_1/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_17/Reluк
,sequential_1/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_18/Conv2D/ReadVariableOp
sequential_1/conv2d_18/Conv2DConv2D)sequential_1/conv2d_17/Relu:activations:04sequential_1/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_18/Conv2Dб
-sequential_1/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_18/BiasAdd/ReadVariableOpф
sequential_1/conv2d_18/BiasAddBiasAdd&sequential_1/conv2d_18/Conv2D:output:05sequential_1/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_18/BiasAddЅ
sequential_1/conv2d_18/ReluRelu'sequential_1/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_18/Reluк
,sequential_1/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02.
,sequential_1/conv2d_19/Conv2D/ReadVariableOp
sequential_1/conv2d_19/Conv2DConv2D)sequential_1/conv2d_18/Relu:activations:04sequential_1/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##*
paddingSAME*
strides
2
sequential_1/conv2d_19/Conv2Dб
-sequential_1/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_1/conv2d_19/BiasAdd/ReadVariableOpф
sequential_1/conv2d_19/BiasAddBiasAdd&sequential_1/conv2d_19/Conv2D:output:05sequential_1/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##2 
sequential_1/conv2d_19/BiasAddE
ShapeShapeinput_1*
T0*
_output_shapes
:2
ShapeX
CastCastShape:output:0*

DstT0*

SrcT0*
_output_shapes
:2
Casti
Shape_1Shape'sequential_1/conv2d_19/BiasAdd:output:0*
T0*
_output_shapes
:2	
Shape_1^
Cast_1CastShape_1:output:0*

DstT0*

SrcT0*
_output_shapes
:2
Cast_1t
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2о
strided_sliceStridedSlice
Cast_1:y:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ш
strided_slice_1StridedSlice
Cast_1:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1_
range/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range/start_
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
range/delta
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2
rangeS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/y_
mulMulrange:output:0mul/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
mulc
range_1/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_1/startc
range_1/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
range_1/delta
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2	
range_1W
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
mul_1/yg
mul_1Mulrange_1:output:0mul_1/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
mul_1
meshgrid/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
meshgrid/Reshape/shape
meshgrid/ReshapeReshape	mul_1:z:0meshgrid/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape
meshgrid/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ2
meshgrid/Reshape_1/shape
meshgrid/Reshape_1Reshapemul:z:0!meshgrid/Reshape_1/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_1R
meshgrid/SizeSize	mul_1:z:0*
T0*
_output_shapes
: 2
meshgrid/SizeT
meshgrid/Size_1Sizemul:z:0*
T0*
_output_shapes
: 2
meshgrid/Size_1
meshgrid/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ2
meshgrid/Reshape_2/shapeЃ
meshgrid/Reshape_2Reshapemeshgrid/Reshape:output:0!meshgrid/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_2
meshgrid/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
meshgrid/Reshape_3/shapeЅ
meshgrid/Reshape_3Reshapemeshgrid/Reshape_1:output:0!meshgrid/Reshape_3/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_3
meshgrid/ones/mulMulmeshgrid/Size_1:output:0meshgrid/Size:output:0*
T0*
_output_shapes
: 2
meshgrid/ones/mulo
meshgrid/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
meshgrid/ones/Less/y
meshgrid/ones/LessLessmeshgrid/ones/mul:z:0meshgrid/ones/Less/y:output:0*
T0*
_output_shapes
: 2
meshgrid/ones/Less
meshgrid/ones/packedPackmeshgrid/Size_1:output:0meshgrid/Size:output:0*
N*
T0*
_output_shapes
:2
meshgrid/ones/packedo
meshgrid/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
meshgrid/ones/Const
meshgrid/onesFillmeshgrid/ones/packed:output:0meshgrid/ones/Const:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/ones
meshgrid/mulMulmeshgrid/Reshape_2:output:0meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/mul
meshgrid/mul_1Mulmeshgrid/Reshape_3:output:0meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/mul_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Џ
strided_slice_3StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2
strided_slice_3
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"    џџџџ2
strided_slice_4/stack
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack_1
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Ћ
strided_slice_4StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
end_mask2
strided_slice_4q
SigmoidSigmoidstrided_slice_4:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2	
Sigmoidw
addAddV2strided_slice_2:output:0meshgrid/mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
addy
add_1AddV2strided_slice_3:output:0meshgrid/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
add_1
stackPackadd:z:0	add_1:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
axisџџџџџџџџџ2
stack
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    џџџџ2
strided_slice_5/stack_1
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2
strided_slice_5StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*-
_output_shapes
:џџџџџџџџџ## *
ellipsis_mask2
strided_slice_5e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
concat/axis
concatConcatV2stack:output:0strided_slice_5:output:0concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##2
concatЁ
IdentityIdentityconcat:output:0.^sequential_1/conv2d_10/BiasAdd/ReadVariableOp-^sequential_1/conv2d_10/Conv2D/ReadVariableOp.^sequential_1/conv2d_11/BiasAdd/ReadVariableOp-^sequential_1/conv2d_11/Conv2D/ReadVariableOp.^sequential_1/conv2d_12/BiasAdd/ReadVariableOp-^sequential_1/conv2d_12/Conv2D/ReadVariableOp.^sequential_1/conv2d_13/BiasAdd/ReadVariableOp-^sequential_1/conv2d_13/Conv2D/ReadVariableOp.^sequential_1/conv2d_14/BiasAdd/ReadVariableOp-^sequential_1/conv2d_14/Conv2D/ReadVariableOp.^sequential_1/conv2d_15/BiasAdd/ReadVariableOp-^sequential_1/conv2d_15/Conv2D/ReadVariableOp.^sequential_1/conv2d_16/BiasAdd/ReadVariableOp-^sequential_1/conv2d_16/Conv2D/ReadVariableOp.^sequential_1/conv2d_17/BiasAdd/ReadVariableOp-^sequential_1/conv2d_17/Conv2D/ReadVariableOp.^sequential_1/conv2d_18/BiasAdd/ReadVariableOp-^sequential_1/conv2d_18/Conv2D/ReadVariableOp.^sequential_1/conv2d_19/BiasAdd/ReadVariableOp-^sequential_1/conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

IdentityЁ

Identity_1IdentitySigmoid:y:0.^sequential_1/conv2d_10/BiasAdd/ReadVariableOp-^sequential_1/conv2d_10/Conv2D/ReadVariableOp.^sequential_1/conv2d_11/BiasAdd/ReadVariableOp-^sequential_1/conv2d_11/Conv2D/ReadVariableOp.^sequential_1/conv2d_12/BiasAdd/ReadVariableOp-^sequential_1/conv2d_12/Conv2D/ReadVariableOp.^sequential_1/conv2d_13/BiasAdd/ReadVariableOp-^sequential_1/conv2d_13/Conv2D/ReadVariableOp.^sequential_1/conv2d_14/BiasAdd/ReadVariableOp-^sequential_1/conv2d_14/Conv2D/ReadVariableOp.^sequential_1/conv2d_15/BiasAdd/ReadVariableOp-^sequential_1/conv2d_15/Conv2D/ReadVariableOp.^sequential_1/conv2d_16/BiasAdd/ReadVariableOp-^sequential_1/conv2d_16/Conv2D/ReadVariableOp.^sequential_1/conv2d_17/BiasAdd/ReadVariableOp-^sequential_1/conv2d_17/Conv2D/ReadVariableOp.^sequential_1/conv2d_18/BiasAdd/ReadVariableOp-^sequential_1/conv2d_18/Conv2D/ReadVariableOp.^sequential_1/conv2d_19/BiasAdd/ReadVariableOp-^sequential_1/conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 2^
-sequential_1/conv2d_10/BiasAdd/ReadVariableOp-sequential_1/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_10/Conv2D/ReadVariableOp,sequential_1/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_11/BiasAdd/ReadVariableOp-sequential_1/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_11/Conv2D/ReadVariableOp,sequential_1/conv2d_11/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_12/BiasAdd/ReadVariableOp-sequential_1/conv2d_12/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_12/Conv2D/ReadVariableOp,sequential_1/conv2d_12/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_13/BiasAdd/ReadVariableOp-sequential_1/conv2d_13/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_13/Conv2D/ReadVariableOp,sequential_1/conv2d_13/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_14/BiasAdd/ReadVariableOp-sequential_1/conv2d_14/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_14/Conv2D/ReadVariableOp,sequential_1/conv2d_14/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_15/BiasAdd/ReadVariableOp-sequential_1/conv2d_15/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_15/Conv2D/ReadVariableOp,sequential_1/conv2d_15/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_16/BiasAdd/ReadVariableOp-sequential_1/conv2d_16/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_16/Conv2D/ReadVariableOp,sequential_1/conv2d_16/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_17/BiasAdd/ReadVariableOp-sequential_1/conv2d_17/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_17/Conv2D/ReadVariableOp,sequential_1/conv2d_17/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_18/BiasAdd/ReadVariableOp-sequential_1/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_18/Conv2D/ReadVariableOp,sequential_1/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_19/BiasAdd/ReadVariableOp-sequential_1/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_19/Conv2D/ReadVariableOp,sequential_1/conv2d_19/Conv2D/ReadVariableOp:X T
/
_output_shapes
:џџџџџџџџџFF
!
_user_specified_name	input_1

§
D__inference_conv2d_18_layer_call_and_return_conditional_losses_35587

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Њ=
Л	
G__inference_sequential_1_layer_call_and_return_conditional_losses_35998
conv2d_10_input)
conv2d_10_35946: 
conv2d_10_35948: )
conv2d_11_35951:  
conv2d_11_35953: )
conv2d_12_35957: @
conv2d_12_35959:@)
conv2d_13_35962:@@
conv2d_13_35964:@)
conv2d_14_35967:@@
conv2d_14_35969:@)
conv2d_15_35972:@@
conv2d_15_35974:@)
conv2d_16_35977:@@
conv2d_16_35979:@)
conv2d_17_35982:@@
conv2d_17_35984:@)
conv2d_18_35987:@@
conv2d_18_35989:@)
conv2d_19_35992:@
conv2d_19_35994:
identityЂ!conv2d_10/StatefulPartitionedCallЂ!conv2d_11/StatefulPartitionedCallЂ!conv2d_12/StatefulPartitionedCallЂ!conv2d_13/StatefulPartitionedCallЂ!conv2d_14/StatefulPartitionedCallЂ!conv2d_15/StatefulPartitionedCallЂ!conv2d_16/StatefulPartitionedCallЂ!conv2d_17/StatefulPartitionedCallЂ!conv2d_18/StatefulPartitionedCallЂ!conv2d_19/StatefulPartitionedCallЙ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputconv2d_10_35946conv2d_10_35948*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_354502#
!conv2d_10/StatefulPartitionedCallд
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_35951conv2d_11_35953*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_354672#
!conv2d_11/StatefulPartitionedCallІ
max_pooling2d_1/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_354262!
max_pooling2d_1/PartitionedCallв
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_12_35957conv2d_12_35959*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_354852#
!conv2d_12/StatefulPartitionedCallд
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0conv2d_13_35962conv2d_13_35964*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_355022#
!conv2d_13/StatefulPartitionedCallд
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0conv2d_14_35967conv2d_14_35969*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_355192#
!conv2d_14/StatefulPartitionedCallд
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0conv2d_15_35972conv2d_15_35974*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_355362#
!conv2d_15/StatefulPartitionedCallд
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0conv2d_16_35977conv2d_16_35979*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_355532#
!conv2d_16/StatefulPartitionedCallд
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0conv2d_17_35982conv2d_17_35984*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_355702#
!conv2d_17/StatefulPartitionedCallд
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0conv2d_18_35987conv2d_18_35989*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_355872#
!conv2d_18/StatefulPartitionedCallд
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_35992conv2d_19_35994*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_356032#
!conv2d_19/StatefulPartitionedCall
IdentityIdentity*conv2d_19/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall:r n
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
)
_user_specified_nameconv2d_10_input

§
D__inference_conv2d_13_layer_call_and_return_conditional_losses_35502

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Иж

Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_37451
xO
5sequential_1_conv2d_10_conv2d_readvariableop_resource: D
6sequential_1_conv2d_10_biasadd_readvariableop_resource: O
5sequential_1_conv2d_11_conv2d_readvariableop_resource:  D
6sequential_1_conv2d_11_biasadd_readvariableop_resource: O
5sequential_1_conv2d_12_conv2d_readvariableop_resource: @D
6sequential_1_conv2d_12_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_13_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_13_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_14_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_14_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_15_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_15_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_16_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_16_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_17_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_17_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_18_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_18_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_19_conv2d_readvariableop_resource:@D
6sequential_1_conv2d_19_biasadd_readvariableop_resource:
identity

identity_1Ђ-sequential_1/conv2d_10/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_10/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_11/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_11/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_12/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_12/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_13/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_13/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_14/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_14/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_15/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_15/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_16/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_16/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_17/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_17/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_18/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_18/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_19/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_19/Conv2D/ReadVariableOpк
,sequential_1/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_1/conv2d_10/Conv2D/ReadVariableOpу
sequential_1/conv2d_10/Conv2DConv2Dx4sequential_1/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
sequential_1/conv2d_10/Conv2Dб
-sequential_1/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_1/conv2d_10/BiasAdd/ReadVariableOpф
sequential_1/conv2d_10/BiasAddBiasAdd&sequential_1/conv2d_10/Conv2D:output:05sequential_1/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2 
sequential_1/conv2d_10/BiasAddЅ
sequential_1/conv2d_10/ReluRelu'sequential_1/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
sequential_1/conv2d_10/Reluк
,sequential_1/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02.
,sequential_1/conv2d_11/Conv2D/ReadVariableOp
sequential_1/conv2d_11/Conv2DConv2D)sequential_1/conv2d_10/Relu:activations:04sequential_1/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
sequential_1/conv2d_11/Conv2Dб
-sequential_1/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_1/conv2d_11/BiasAdd/ReadVariableOpф
sequential_1/conv2d_11/BiasAddBiasAdd&sequential_1/conv2d_11/Conv2D:output:05sequential_1/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2 
sequential_1/conv2d_11/BiasAddЅ
sequential_1/conv2d_11/ReluRelu'sequential_1/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
sequential_1/conv2d_11/Reluю
$sequential_1/max_pooling2d_1/MaxPoolMaxPool)sequential_1/conv2d_11/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ## *
ksize
*
paddingSAME*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolк
,sequential_1/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_1/conv2d_12/Conv2D/ReadVariableOp
sequential_1/conv2d_12/Conv2DConv2D-sequential_1/max_pooling2d_1/MaxPool:output:04sequential_1/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_12/Conv2Dб
-sequential_1/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_12/BiasAdd/ReadVariableOpф
sequential_1/conv2d_12/BiasAddBiasAdd&sequential_1/conv2d_12/Conv2D:output:05sequential_1/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_12/BiasAddЅ
sequential_1/conv2d_12/ReluRelu'sequential_1/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_12/Reluк
,sequential_1/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_13/Conv2D/ReadVariableOp
sequential_1/conv2d_13/Conv2DConv2D)sequential_1/conv2d_12/Relu:activations:04sequential_1/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_13/Conv2Dб
-sequential_1/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_13/BiasAdd/ReadVariableOpф
sequential_1/conv2d_13/BiasAddBiasAdd&sequential_1/conv2d_13/Conv2D:output:05sequential_1/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_13/BiasAddЅ
sequential_1/conv2d_13/ReluRelu'sequential_1/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_13/Reluк
,sequential_1/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_14/Conv2D/ReadVariableOp
sequential_1/conv2d_14/Conv2DConv2D)sequential_1/conv2d_13/Relu:activations:04sequential_1/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_14/Conv2Dб
-sequential_1/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_14/BiasAdd/ReadVariableOpф
sequential_1/conv2d_14/BiasAddBiasAdd&sequential_1/conv2d_14/Conv2D:output:05sequential_1/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_14/BiasAddЅ
sequential_1/conv2d_14/ReluRelu'sequential_1/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_14/Reluк
,sequential_1/conv2d_15/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_15/Conv2D/ReadVariableOp
sequential_1/conv2d_15/Conv2DConv2D)sequential_1/conv2d_14/Relu:activations:04sequential_1/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_15/Conv2Dб
-sequential_1/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_15/BiasAdd/ReadVariableOpф
sequential_1/conv2d_15/BiasAddBiasAdd&sequential_1/conv2d_15/Conv2D:output:05sequential_1/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_15/BiasAddЅ
sequential_1/conv2d_15/ReluRelu'sequential_1/conv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_15/Reluк
,sequential_1/conv2d_16/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_16/Conv2D/ReadVariableOp
sequential_1/conv2d_16/Conv2DConv2D)sequential_1/conv2d_15/Relu:activations:04sequential_1/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_16/Conv2Dб
-sequential_1/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_16/BiasAdd/ReadVariableOpф
sequential_1/conv2d_16/BiasAddBiasAdd&sequential_1/conv2d_16/Conv2D:output:05sequential_1/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_16/BiasAddЅ
sequential_1/conv2d_16/ReluRelu'sequential_1/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_16/Reluк
,sequential_1/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_17/Conv2D/ReadVariableOp
sequential_1/conv2d_17/Conv2DConv2D)sequential_1/conv2d_16/Relu:activations:04sequential_1/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_17/Conv2Dб
-sequential_1/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_17/BiasAdd/ReadVariableOpф
sequential_1/conv2d_17/BiasAddBiasAdd&sequential_1/conv2d_17/Conv2D:output:05sequential_1/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_17/BiasAddЅ
sequential_1/conv2d_17/ReluRelu'sequential_1/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_17/Reluк
,sequential_1/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_18/Conv2D/ReadVariableOp
sequential_1/conv2d_18/Conv2DConv2D)sequential_1/conv2d_17/Relu:activations:04sequential_1/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_18/Conv2Dб
-sequential_1/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_18/BiasAdd/ReadVariableOpф
sequential_1/conv2d_18/BiasAddBiasAdd&sequential_1/conv2d_18/Conv2D:output:05sequential_1/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_18/BiasAddЅ
sequential_1/conv2d_18/ReluRelu'sequential_1/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_18/Reluк
,sequential_1/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02.
,sequential_1/conv2d_19/Conv2D/ReadVariableOp
sequential_1/conv2d_19/Conv2DConv2D)sequential_1/conv2d_18/Relu:activations:04sequential_1/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##*
paddingSAME*
strides
2
sequential_1/conv2d_19/Conv2Dб
-sequential_1/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_1/conv2d_19/BiasAdd/ReadVariableOpф
sequential_1/conv2d_19/BiasAddBiasAdd&sequential_1/conv2d_19/Conv2D:output:05sequential_1/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##2 
sequential_1/conv2d_19/BiasAdd?
ShapeShapex*
T0*
_output_shapes
:2
ShapeX
CastCastShape:output:0*

DstT0*

SrcT0*
_output_shapes
:2
Casti
Shape_1Shape'sequential_1/conv2d_19/BiasAdd:output:0*
T0*
_output_shapes
:2	
Shape_1^
Cast_1CastShape_1:output:0*

DstT0*

SrcT0*
_output_shapes
:2
Cast_1t
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2о
strided_sliceStridedSlice
Cast_1:y:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ш
strided_slice_1StridedSlice
Cast_1:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1_
range/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range/start_
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
range/delta
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2
rangeS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/y_
mulMulrange:output:0mul/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
mulc
range_1/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_1/startc
range_1/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
range_1/delta
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2	
range_1W
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
mul_1/yg
mul_1Mulrange_1:output:0mul_1/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
mul_1
meshgrid/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
meshgrid/Reshape/shape
meshgrid/ReshapeReshape	mul_1:z:0meshgrid/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape
meshgrid/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ2
meshgrid/Reshape_1/shape
meshgrid/Reshape_1Reshapemul:z:0!meshgrid/Reshape_1/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_1R
meshgrid/SizeSize	mul_1:z:0*
T0*
_output_shapes
: 2
meshgrid/SizeT
meshgrid/Size_1Sizemul:z:0*
T0*
_output_shapes
: 2
meshgrid/Size_1
meshgrid/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ2
meshgrid/Reshape_2/shapeЃ
meshgrid/Reshape_2Reshapemeshgrid/Reshape:output:0!meshgrid/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_2
meshgrid/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
meshgrid/Reshape_3/shapeЅ
meshgrid/Reshape_3Reshapemeshgrid/Reshape_1:output:0!meshgrid/Reshape_3/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_3
meshgrid/ones/mulMulmeshgrid/Size_1:output:0meshgrid/Size:output:0*
T0*
_output_shapes
: 2
meshgrid/ones/mulo
meshgrid/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
meshgrid/ones/Less/y
meshgrid/ones/LessLessmeshgrid/ones/mul:z:0meshgrid/ones/Less/y:output:0*
T0*
_output_shapes
: 2
meshgrid/ones/Less
meshgrid/ones/packedPackmeshgrid/Size_1:output:0meshgrid/Size:output:0*
N*
T0*
_output_shapes
:2
meshgrid/ones/packedo
meshgrid/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
meshgrid/ones/Const
meshgrid/onesFillmeshgrid/ones/packed:output:0meshgrid/ones/Const:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/ones
meshgrid/mulMulmeshgrid/Reshape_2:output:0meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/mul
meshgrid/mul_1Mulmeshgrid/Reshape_3:output:0meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/mul_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Џ
strided_slice_3StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2
strided_slice_3
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"    џџџџ2
strided_slice_4/stack
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack_1
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Ћ
strided_slice_4StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
end_mask2
strided_slice_4q
SigmoidSigmoidstrided_slice_4:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2	
Sigmoidw
addAddV2strided_slice_2:output:0meshgrid/mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
addy
add_1AddV2strided_slice_3:output:0meshgrid/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
add_1
stackPackadd:z:0	add_1:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
axisџџџџџџџџџ2
stackx
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2в
strided_slice_5StridedSliceCast:y:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_5[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
	truediv/yp
truedivRealDivstrided_slice_5:output:0truediv/y:output:0*
T0*
_output_shapes
:2	
truedivh
subSubstack:output:0truediv:z:0*
T0*/
_output_shapes
:џџџџџџџџџ##2
sub
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    џџџџ2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2
strided_slice_6StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*-
_output_shapes
:џџџџџџџџџ## *
ellipsis_mask2
strided_slice_6e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
concat/axis
concatConcatV2sub:z:0strided_slice_6:output:0concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##2
concatЁ
IdentityIdentityconcat:output:0.^sequential_1/conv2d_10/BiasAdd/ReadVariableOp-^sequential_1/conv2d_10/Conv2D/ReadVariableOp.^sequential_1/conv2d_11/BiasAdd/ReadVariableOp-^sequential_1/conv2d_11/Conv2D/ReadVariableOp.^sequential_1/conv2d_12/BiasAdd/ReadVariableOp-^sequential_1/conv2d_12/Conv2D/ReadVariableOp.^sequential_1/conv2d_13/BiasAdd/ReadVariableOp-^sequential_1/conv2d_13/Conv2D/ReadVariableOp.^sequential_1/conv2d_14/BiasAdd/ReadVariableOp-^sequential_1/conv2d_14/Conv2D/ReadVariableOp.^sequential_1/conv2d_15/BiasAdd/ReadVariableOp-^sequential_1/conv2d_15/Conv2D/ReadVariableOp.^sequential_1/conv2d_16/BiasAdd/ReadVariableOp-^sequential_1/conv2d_16/Conv2D/ReadVariableOp.^sequential_1/conv2d_17/BiasAdd/ReadVariableOp-^sequential_1/conv2d_17/Conv2D/ReadVariableOp.^sequential_1/conv2d_18/BiasAdd/ReadVariableOp-^sequential_1/conv2d_18/Conv2D/ReadVariableOp.^sequential_1/conv2d_19/BiasAdd/ReadVariableOp-^sequential_1/conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

IdentityЁ

Identity_1IdentitySigmoid:y:0.^sequential_1/conv2d_10/BiasAdd/ReadVariableOp-^sequential_1/conv2d_10/Conv2D/ReadVariableOp.^sequential_1/conv2d_11/BiasAdd/ReadVariableOp-^sequential_1/conv2d_11/Conv2D/ReadVariableOp.^sequential_1/conv2d_12/BiasAdd/ReadVariableOp-^sequential_1/conv2d_12/Conv2D/ReadVariableOp.^sequential_1/conv2d_13/BiasAdd/ReadVariableOp-^sequential_1/conv2d_13/Conv2D/ReadVariableOp.^sequential_1/conv2d_14/BiasAdd/ReadVariableOp-^sequential_1/conv2d_14/Conv2D/ReadVariableOp.^sequential_1/conv2d_15/BiasAdd/ReadVariableOp-^sequential_1/conv2d_15/Conv2D/ReadVariableOp.^sequential_1/conv2d_16/BiasAdd/ReadVariableOp-^sequential_1/conv2d_16/Conv2D/ReadVariableOp.^sequential_1/conv2d_17/BiasAdd/ReadVariableOp-^sequential_1/conv2d_17/Conv2D/ReadVariableOp.^sequential_1/conv2d_18/BiasAdd/ReadVariableOp-^sequential_1/conv2d_18/Conv2D/ReadVariableOp.^sequential_1/conv2d_19/BiasAdd/ReadVariableOp-^sequential_1/conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 2^
-sequential_1/conv2d_10/BiasAdd/ReadVariableOp-sequential_1/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_10/Conv2D/ReadVariableOp,sequential_1/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_11/BiasAdd/ReadVariableOp-sequential_1/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_11/Conv2D/ReadVariableOp,sequential_1/conv2d_11/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_12/BiasAdd/ReadVariableOp-sequential_1/conv2d_12/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_12/Conv2D/ReadVariableOp,sequential_1/conv2d_12/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_13/BiasAdd/ReadVariableOp-sequential_1/conv2d_13/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_13/Conv2D/ReadVariableOp,sequential_1/conv2d_13/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_14/BiasAdd/ReadVariableOp-sequential_1/conv2d_14/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_14/Conv2D/ReadVariableOp,sequential_1/conv2d_14/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_15/BiasAdd/ReadVariableOp-sequential_1/conv2d_15/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_15/Conv2D/ReadVariableOp,sequential_1/conv2d_15/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_16/BiasAdd/ReadVariableOp-sequential_1/conv2d_16/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_16/Conv2D/ReadVariableOp,sequential_1/conv2d_16/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_17/BiasAdd/ReadVariableOp-sequential_1/conv2d_17/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_17/Conv2D/ReadVariableOp,sequential_1/conv2d_17/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_18/BiasAdd/ReadVariableOp-sequential_1/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_18/Conv2D/ReadVariableOp,sequential_1/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_19/BiasAdd/ReadVariableOp-sequential_1/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_19/Conv2D/ReadVariableOp,sequential_1/conv2d_19/Conv2D/ReadVariableOp:R N
/
_output_shapes
:џџџџџџџџџFF

_user_specified_namex
=
В	
G__inference_sequential_1_layer_call_and_return_conditional_losses_35610

inputs)
conv2d_10_35451: 
conv2d_10_35453: )
conv2d_11_35468:  
conv2d_11_35470: )
conv2d_12_35486: @
conv2d_12_35488:@)
conv2d_13_35503:@@
conv2d_13_35505:@)
conv2d_14_35520:@@
conv2d_14_35522:@)
conv2d_15_35537:@@
conv2d_15_35539:@)
conv2d_16_35554:@@
conv2d_16_35556:@)
conv2d_17_35571:@@
conv2d_17_35573:@)
conv2d_18_35588:@@
conv2d_18_35590:@)
conv2d_19_35604:@
conv2d_19_35606:
identityЂ!conv2d_10/StatefulPartitionedCallЂ!conv2d_11/StatefulPartitionedCallЂ!conv2d_12/StatefulPartitionedCallЂ!conv2d_13/StatefulPartitionedCallЂ!conv2d_14/StatefulPartitionedCallЂ!conv2d_15/StatefulPartitionedCallЂ!conv2d_16/StatefulPartitionedCallЂ!conv2d_17/StatefulPartitionedCallЂ!conv2d_18/StatefulPartitionedCallЂ!conv2d_19/StatefulPartitionedCallА
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_10_35451conv2d_10_35453*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_354502#
!conv2d_10/StatefulPartitionedCallд
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_35468conv2d_11_35470*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_354672#
!conv2d_11/StatefulPartitionedCallІ
max_pooling2d_1/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_354262!
max_pooling2d_1/PartitionedCallв
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_12_35486conv2d_12_35488*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_354852#
!conv2d_12/StatefulPartitionedCallд
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0conv2d_13_35503conv2d_13_35505*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_355022#
!conv2d_13/StatefulPartitionedCallд
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0conv2d_14_35520conv2d_14_35522*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_355192#
!conv2d_14/StatefulPartitionedCallд
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0conv2d_15_35537conv2d_15_35539*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_355362#
!conv2d_15/StatefulPartitionedCallд
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0conv2d_16_35554conv2d_16_35556*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_355532#
!conv2d_16/StatefulPartitionedCallд
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0conv2d_17_35571conv2d_17_35573*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_355702#
!conv2d_17/StatefulPartitionedCallд
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0conv2d_18_35588conv2d_18_35590*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_355872#
!conv2d_18/StatefulPartitionedCallд
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_35604conv2d_19_35606*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_356032#
!conv2d_19/StatefulPartitionedCall
IdentityIdentity*conv2d_19/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

§
D__inference_conv2d_10_layer_call_and_return_conditional_losses_38234

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

§
D__inference_conv2d_14_layer_call_and_return_conditional_losses_38314

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

и
,__inference_sequential_1_layer_call_fn_37873

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@

unknown_18:
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ##*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_361332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџFF
 
_user_specified_nameinputs
љl
њ
G__inference_sequential_1_layer_call_and_return_conditional_losses_38066

inputsB
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: B
(conv2d_11_conv2d_readvariableop_resource:  7
)conv2d_11_biasadd_readvariableop_resource: B
(conv2d_12_conv2d_readvariableop_resource: @7
)conv2d_12_biasadd_readvariableop_resource:@B
(conv2d_13_conv2d_readvariableop_resource:@@7
)conv2d_13_biasadd_readvariableop_resource:@B
(conv2d_14_conv2d_readvariableop_resource:@@7
)conv2d_14_biasadd_readvariableop_resource:@B
(conv2d_15_conv2d_readvariableop_resource:@@7
)conv2d_15_biasadd_readvariableop_resource:@B
(conv2d_16_conv2d_readvariableop_resource:@@7
)conv2d_16_biasadd_readvariableop_resource:@B
(conv2d_17_conv2d_readvariableop_resource:@@7
)conv2d_17_biasadd_readvariableop_resource:@B
(conv2d_18_conv2d_readvariableop_resource:@@7
)conv2d_18_biasadd_readvariableop_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:
identityЂ conv2d_10/BiasAdd/ReadVariableOpЂconv2d_10/Conv2D/ReadVariableOpЂ conv2d_11/BiasAdd/ReadVariableOpЂconv2d_11/Conv2D/ReadVariableOpЂ conv2d_12/BiasAdd/ReadVariableOpЂconv2d_12/Conv2D/ReadVariableOpЂ conv2d_13/BiasAdd/ReadVariableOpЂconv2d_13/Conv2D/ReadVariableOpЂ conv2d_14/BiasAdd/ReadVariableOpЂconv2d_14/Conv2D/ReadVariableOpЂ conv2d_15/BiasAdd/ReadVariableOpЂconv2d_15/Conv2D/ReadVariableOpЂ conv2d_16/BiasAdd/ReadVariableOpЂconv2d_16/Conv2D/ReadVariableOpЂ conv2d_17/BiasAdd/ReadVariableOpЂconv2d_17/Conv2D/ReadVariableOpЂ conv2d_18/BiasAdd/ReadVariableOpЂconv2d_18/Conv2D/ReadVariableOpЂ conv2d_19/BiasAdd/ReadVariableOpЂconv2d_19/Conv2D/ReadVariableOpГ
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOpг
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
conv2d_10/Conv2DЊ
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOpТ
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
conv2d_10/BiasAdd
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
conv2d_10/ReluГ
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_11/Conv2D/ReadVariableOpщ
conv2d_11/Conv2DConv2Dconv2d_10/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
conv2d_11/Conv2DЊ
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_11/BiasAdd/ReadVariableOpТ
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
conv2d_11/BiasAdd
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
conv2d_11/Reluй
max_pooling2d_1/MaxPoolMaxPoolconv2d_11/Relu:activations:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolГ
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_12/Conv2D/ReadVariableOpэ
conv2d_12/Conv2DConv2D max_pooling2d_1/MaxPool:output:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_12/Conv2DЊ
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOpТ
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_12/BiasAdd
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_12/ReluГ
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_13/Conv2D/ReadVariableOpщ
conv2d_13/Conv2DConv2Dconv2d_12/Relu:activations:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_13/Conv2DЊ
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOpТ
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_13/BiasAdd
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_13/ReluГ
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_14/Conv2D/ReadVariableOpщ
conv2d_14/Conv2DConv2Dconv2d_13/Relu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_14/Conv2DЊ
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOpТ
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_14/BiasAdd
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_14/ReluГ
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_15/Conv2D/ReadVariableOpщ
conv2d_15/Conv2DConv2Dconv2d_14/Relu:activations:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_15/Conv2DЊ
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOpТ
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_15/BiasAdd
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_15/ReluГ
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_16/Conv2D/ReadVariableOpщ
conv2d_16/Conv2DConv2Dconv2d_15/Relu:activations:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_16/Conv2DЊ
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOpТ
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_16/BiasAdd
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_16/ReluГ
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_17/Conv2D/ReadVariableOpщ
conv2d_17/Conv2DConv2Dconv2d_16/Relu:activations:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_17/Conv2DЊ
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOpТ
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_17/BiasAdd
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_17/ReluГ
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_18/Conv2D/ReadVariableOpщ
conv2d_18/Conv2DConv2Dconv2d_17/Relu:activations:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_18/Conv2DЊ
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOpТ
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_18/BiasAdd
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_18/ReluГ
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOpщ
conv2d_19/Conv2DConv2Dconv2d_18/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
conv2d_19/Conv2DЊ
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOpТ
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
conv2d_19/BiasAddК
IdentityIdentityconv2d_19/BiasAdd:output:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
h
њ
G__inference_sequential_1_layer_call_and_return_conditional_losses_38140

inputsB
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: B
(conv2d_11_conv2d_readvariableop_resource:  7
)conv2d_11_biasadd_readvariableop_resource: B
(conv2d_12_conv2d_readvariableop_resource: @7
)conv2d_12_biasadd_readvariableop_resource:@B
(conv2d_13_conv2d_readvariableop_resource:@@7
)conv2d_13_biasadd_readvariableop_resource:@B
(conv2d_14_conv2d_readvariableop_resource:@@7
)conv2d_14_biasadd_readvariableop_resource:@B
(conv2d_15_conv2d_readvariableop_resource:@@7
)conv2d_15_biasadd_readvariableop_resource:@B
(conv2d_16_conv2d_readvariableop_resource:@@7
)conv2d_16_biasadd_readvariableop_resource:@B
(conv2d_17_conv2d_readvariableop_resource:@@7
)conv2d_17_biasadd_readvariableop_resource:@B
(conv2d_18_conv2d_readvariableop_resource:@@7
)conv2d_18_biasadd_readvariableop_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:
identityЂ conv2d_10/BiasAdd/ReadVariableOpЂconv2d_10/Conv2D/ReadVariableOpЂ conv2d_11/BiasAdd/ReadVariableOpЂconv2d_11/Conv2D/ReadVariableOpЂ conv2d_12/BiasAdd/ReadVariableOpЂconv2d_12/Conv2D/ReadVariableOpЂ conv2d_13/BiasAdd/ReadVariableOpЂconv2d_13/Conv2D/ReadVariableOpЂ conv2d_14/BiasAdd/ReadVariableOpЂconv2d_14/Conv2D/ReadVariableOpЂ conv2d_15/BiasAdd/ReadVariableOpЂconv2d_15/Conv2D/ReadVariableOpЂ conv2d_16/BiasAdd/ReadVariableOpЂconv2d_16/Conv2D/ReadVariableOpЂ conv2d_17/BiasAdd/ReadVariableOpЂconv2d_17/Conv2D/ReadVariableOpЂ conv2d_18/BiasAdd/ReadVariableOpЂconv2d_18/Conv2D/ReadVariableOpЂ conv2d_19/BiasAdd/ReadVariableOpЂconv2d_19/Conv2D/ReadVariableOpГ
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOpС
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
conv2d_10/Conv2DЊ
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOpА
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_10/ReluГ
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_11/Conv2D/ReadVariableOpз
conv2d_11/Conv2DConv2Dconv2d_10/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
conv2d_11/Conv2DЊ
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_11/BiasAdd/ReadVariableOpА
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_11/BiasAdd~
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
conv2d_11/ReluЧ
max_pooling2d_1/MaxPoolMaxPoolconv2d_11/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ## *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolГ
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_12/Conv2D/ReadVariableOpл
conv2d_12/Conv2DConv2D max_pooling2d_1/MaxPool:output:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_12/Conv2DЊ
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOpА
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_12/BiasAdd~
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_12/ReluГ
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_13/Conv2D/ReadVariableOpз
conv2d_13/Conv2DConv2Dconv2d_12/Relu:activations:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_13/Conv2DЊ
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOpА
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_13/BiasAdd~
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_13/ReluГ
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_14/Conv2D/ReadVariableOpз
conv2d_14/Conv2DConv2Dconv2d_13/Relu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_14/Conv2DЊ
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOpА
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_14/BiasAdd~
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_14/ReluГ
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_15/Conv2D/ReadVariableOpз
conv2d_15/Conv2DConv2Dconv2d_14/Relu:activations:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_15/Conv2DЊ
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOpА
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_15/BiasAdd~
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_15/ReluГ
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_16/Conv2D/ReadVariableOpз
conv2d_16/Conv2DConv2Dconv2d_15/Relu:activations:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_16/Conv2DЊ
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOpА
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_16/BiasAdd~
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_16/ReluГ
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_17/Conv2D/ReadVariableOpз
conv2d_17/Conv2DConv2Dconv2d_16/Relu:activations:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_17/Conv2DЊ
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOpА
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_17/BiasAdd~
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_17/ReluГ
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_18/Conv2D/ReadVariableOpз
conv2d_18/Conv2DConv2Dconv2d_17/Relu:activations:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
conv2d_18/Conv2DЊ
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOpА
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_18/BiasAdd~
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
conv2d_18/ReluГ
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOpз
conv2d_19/Conv2DConv2Dconv2d_18/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##*
paddingSAME*
strides
2
conv2d_19/Conv2DЊ
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOpА
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##2
conv2d_19/BiasAddЈ
IdentityIdentityconv2d_19/BiasAdd:output:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџFF
 
_user_specified_nameinputs

§
D__inference_conv2d_11_layer_call_and_return_conditional_losses_35467

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs


)__inference_conv2d_13_layer_call_fn_38283

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_355022
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs


)__inference_conv2d_14_layer_call_fn_38303

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_355192
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

§
D__inference_conv2d_18_layer_call_and_return_conditional_losses_38394

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Њ=
Л	
G__inference_sequential_1_layer_call_and_return_conditional_losses_36053
conv2d_10_input)
conv2d_10_36001: 
conv2d_10_36003: )
conv2d_11_36006:  
conv2d_11_36008: )
conv2d_12_36012: @
conv2d_12_36014:@)
conv2d_13_36017:@@
conv2d_13_36019:@)
conv2d_14_36022:@@
conv2d_14_36024:@)
conv2d_15_36027:@@
conv2d_15_36029:@)
conv2d_16_36032:@@
conv2d_16_36034:@)
conv2d_17_36037:@@
conv2d_17_36039:@)
conv2d_18_36042:@@
conv2d_18_36044:@)
conv2d_19_36047:@
conv2d_19_36049:
identityЂ!conv2d_10/StatefulPartitionedCallЂ!conv2d_11/StatefulPartitionedCallЂ!conv2d_12/StatefulPartitionedCallЂ!conv2d_13/StatefulPartitionedCallЂ!conv2d_14/StatefulPartitionedCallЂ!conv2d_15/StatefulPartitionedCallЂ!conv2d_16/StatefulPartitionedCallЂ!conv2d_17/StatefulPartitionedCallЂ!conv2d_18/StatefulPartitionedCallЂ!conv2d_19/StatefulPartitionedCallЙ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallconv2d_10_inputconv2d_10_36001conv2d_10_36003*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_354502#
!conv2d_10/StatefulPartitionedCallд
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_36006conv2d_11_36008*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_354672#
!conv2d_11/StatefulPartitionedCallІ
max_pooling2d_1/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_354262!
max_pooling2d_1/PartitionedCallв
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_12_36012conv2d_12_36014*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_354852#
!conv2d_12/StatefulPartitionedCallд
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0conv2d_13_36017conv2d_13_36019*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_355022#
!conv2d_13/StatefulPartitionedCallд
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0conv2d_14_36022conv2d_14_36024*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_355192#
!conv2d_14/StatefulPartitionedCallд
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0conv2d_15_36027conv2d_15_36029*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_355362#
!conv2d_15/StatefulPartitionedCallд
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0conv2d_16_36032conv2d_16_36034*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_355532#
!conv2d_16/StatefulPartitionedCallд
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0conv2d_17_36037conv2d_17_36039*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_355702#
!conv2d_17/StatefulPartitionedCallд
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0conv2d_18_36042conv2d_18_36044*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_355872#
!conv2d_18/StatefulPartitionedCallд
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_36047conv2d_19_36049*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_356032#
!conv2d_19/StatefulPartitionedCall
IdentityIdentity*conv2d_19/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall:r n
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
)
_user_specified_nameconv2d_10_input

§
D__inference_conv2d_19_layer_call_and_return_conditional_losses_35603

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddЏ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs


)__inference_conv2d_15_layer_call_fn_38323

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_355362
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

э
6__inference_lode_star_base_model_1_layer_call_fn_37123
x!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@

unknown_18:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:џџџџџџџџџ##:џџџџџџџџџ##*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_366122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:џџџџџџџџџFF

_user_specified_namex


)__inference_conv2d_17_layer_call_fn_38363

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_355702
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs


)__inference_conv2d_10_layer_call_fn_38223

inputs!
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_354502
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ЛЯ

Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_37307
xO
5sequential_1_conv2d_10_conv2d_readvariableop_resource: D
6sequential_1_conv2d_10_biasadd_readvariableop_resource: O
5sequential_1_conv2d_11_conv2d_readvariableop_resource:  D
6sequential_1_conv2d_11_biasadd_readvariableop_resource: O
5sequential_1_conv2d_12_conv2d_readvariableop_resource: @D
6sequential_1_conv2d_12_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_13_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_13_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_14_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_14_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_15_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_15_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_16_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_16_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_17_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_17_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_18_conv2d_readvariableop_resource:@@D
6sequential_1_conv2d_18_biasadd_readvariableop_resource:@O
5sequential_1_conv2d_19_conv2d_readvariableop_resource:@D
6sequential_1_conv2d_19_biasadd_readvariableop_resource:
identity

identity_1Ђ-sequential_1/conv2d_10/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_10/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_11/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_11/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_12/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_12/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_13/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_13/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_14/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_14/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_15/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_15/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_16/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_16/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_17/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_17/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_18/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_18/Conv2D/ReadVariableOpЂ-sequential_1/conv2d_19/BiasAdd/ReadVariableOpЂ,sequential_1/conv2d_19/Conv2D/ReadVariableOpк
,sequential_1/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_1/conv2d_10/Conv2D/ReadVariableOpу
sequential_1/conv2d_10/Conv2DConv2Dx4sequential_1/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
sequential_1/conv2d_10/Conv2Dб
-sequential_1/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_1/conv2d_10/BiasAdd/ReadVariableOpф
sequential_1/conv2d_10/BiasAddBiasAdd&sequential_1/conv2d_10/Conv2D:output:05sequential_1/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2 
sequential_1/conv2d_10/BiasAddЅ
sequential_1/conv2d_10/ReluRelu'sequential_1/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
sequential_1/conv2d_10/Reluк
,sequential_1/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02.
,sequential_1/conv2d_11/Conv2D/ReadVariableOp
sequential_1/conv2d_11/Conv2DConv2D)sequential_1/conv2d_10/Relu:activations:04sequential_1/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF *
paddingSAME*
strides
2
sequential_1/conv2d_11/Conv2Dб
-sequential_1/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_1/conv2d_11/BiasAdd/ReadVariableOpф
sequential_1/conv2d_11/BiasAddBiasAdd&sequential_1/conv2d_11/Conv2D:output:05sequential_1/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2 
sequential_1/conv2d_11/BiasAddЅ
sequential_1/conv2d_11/ReluRelu'sequential_1/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџFF 2
sequential_1/conv2d_11/Reluю
$sequential_1/max_pooling2d_1/MaxPoolMaxPool)sequential_1/conv2d_11/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ## *
ksize
*
paddingSAME*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolк
,sequential_1/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_1/conv2d_12/Conv2D/ReadVariableOp
sequential_1/conv2d_12/Conv2DConv2D-sequential_1/max_pooling2d_1/MaxPool:output:04sequential_1/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_12/Conv2Dб
-sequential_1/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_12/BiasAdd/ReadVariableOpф
sequential_1/conv2d_12/BiasAddBiasAdd&sequential_1/conv2d_12/Conv2D:output:05sequential_1/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_12/BiasAddЅ
sequential_1/conv2d_12/ReluRelu'sequential_1/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_12/Reluк
,sequential_1/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_13/Conv2D/ReadVariableOp
sequential_1/conv2d_13/Conv2DConv2D)sequential_1/conv2d_12/Relu:activations:04sequential_1/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_13/Conv2Dб
-sequential_1/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_13/BiasAdd/ReadVariableOpф
sequential_1/conv2d_13/BiasAddBiasAdd&sequential_1/conv2d_13/Conv2D:output:05sequential_1/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_13/BiasAddЅ
sequential_1/conv2d_13/ReluRelu'sequential_1/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_13/Reluк
,sequential_1/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_14/Conv2D/ReadVariableOp
sequential_1/conv2d_14/Conv2DConv2D)sequential_1/conv2d_13/Relu:activations:04sequential_1/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_14/Conv2Dб
-sequential_1/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_14/BiasAdd/ReadVariableOpф
sequential_1/conv2d_14/BiasAddBiasAdd&sequential_1/conv2d_14/Conv2D:output:05sequential_1/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_14/BiasAddЅ
sequential_1/conv2d_14/ReluRelu'sequential_1/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_14/Reluк
,sequential_1/conv2d_15/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_15/Conv2D/ReadVariableOp
sequential_1/conv2d_15/Conv2DConv2D)sequential_1/conv2d_14/Relu:activations:04sequential_1/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_15/Conv2Dб
-sequential_1/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_15/BiasAdd/ReadVariableOpф
sequential_1/conv2d_15/BiasAddBiasAdd&sequential_1/conv2d_15/Conv2D:output:05sequential_1/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_15/BiasAddЅ
sequential_1/conv2d_15/ReluRelu'sequential_1/conv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_15/Reluк
,sequential_1/conv2d_16/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_16/Conv2D/ReadVariableOp
sequential_1/conv2d_16/Conv2DConv2D)sequential_1/conv2d_15/Relu:activations:04sequential_1/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_16/Conv2Dб
-sequential_1/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_16/BiasAdd/ReadVariableOpф
sequential_1/conv2d_16/BiasAddBiasAdd&sequential_1/conv2d_16/Conv2D:output:05sequential_1/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_16/BiasAddЅ
sequential_1/conv2d_16/ReluRelu'sequential_1/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_16/Reluк
,sequential_1/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_17/Conv2D/ReadVariableOp
sequential_1/conv2d_17/Conv2DConv2D)sequential_1/conv2d_16/Relu:activations:04sequential_1/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_17/Conv2Dб
-sequential_1/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_17/BiasAdd/ReadVariableOpф
sequential_1/conv2d_17/BiasAddBiasAdd&sequential_1/conv2d_17/Conv2D:output:05sequential_1/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_17/BiasAddЅ
sequential_1/conv2d_17/ReluRelu'sequential_1/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_17/Reluк
,sequential_1/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_1/conv2d_18/Conv2D/ReadVariableOp
sequential_1/conv2d_18/Conv2DConv2D)sequential_1/conv2d_17/Relu:activations:04sequential_1/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@*
paddingSAME*
strides
2
sequential_1/conv2d_18/Conv2Dб
-sequential_1/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_1/conv2d_18/BiasAdd/ReadVariableOpф
sequential_1/conv2d_18/BiasAddBiasAdd&sequential_1/conv2d_18/Conv2D:output:05sequential_1/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2 
sequential_1/conv2d_18/BiasAddЅ
sequential_1/conv2d_18/ReluRelu'sequential_1/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##@2
sequential_1/conv2d_18/Reluк
,sequential_1/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02.
,sequential_1/conv2d_19/Conv2D/ReadVariableOp
sequential_1/conv2d_19/Conv2DConv2D)sequential_1/conv2d_18/Relu:activations:04sequential_1/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##*
paddingSAME*
strides
2
sequential_1/conv2d_19/Conv2Dб
-sequential_1/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_1/conv2d_19/BiasAdd/ReadVariableOpф
sequential_1/conv2d_19/BiasAddBiasAdd&sequential_1/conv2d_19/Conv2D:output:05sequential_1/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ##2 
sequential_1/conv2d_19/BiasAdd?
ShapeShapex*
T0*
_output_shapes
:2
ShapeX
CastCastShape:output:0*

DstT0*

SrcT0*
_output_shapes
:2
Casti
Shape_1Shape'sequential_1/conv2d_19/BiasAdd:output:0*
T0*
_output_shapes
:2	
Shape_1^
Cast_1CastShape_1:output:0*

DstT0*

SrcT0*
_output_shapes
:2
Cast_1t
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2о
strided_sliceStridedSlice
Cast_1:y:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ш
strided_slice_1StridedSlice
Cast_1:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1_
range/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range/start_
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
range/delta
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2
rangeS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/y_
mulMulrange:output:0mul/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
mulc
range_1/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_1/startc
range_1/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
range_1/delta
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2	
range_1W
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
mul_1/yg
mul_1Mulrange_1:output:0mul_1/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
mul_1
meshgrid/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
meshgrid/Reshape/shape
meshgrid/ReshapeReshape	mul_1:z:0meshgrid/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape
meshgrid/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ2
meshgrid/Reshape_1/shape
meshgrid/Reshape_1Reshapemul:z:0!meshgrid/Reshape_1/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_1R
meshgrid/SizeSize	mul_1:z:0*
T0*
_output_shapes
: 2
meshgrid/SizeT
meshgrid/Size_1Sizemul:z:0*
T0*
_output_shapes
: 2
meshgrid/Size_1
meshgrid/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ2
meshgrid/Reshape_2/shapeЃ
meshgrid/Reshape_2Reshapemeshgrid/Reshape:output:0!meshgrid/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_2
meshgrid/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
meshgrid/Reshape_3/shapeЅ
meshgrid/Reshape_3Reshapemeshgrid/Reshape_1:output:0!meshgrid/Reshape_3/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_3
meshgrid/ones/mulMulmeshgrid/Size_1:output:0meshgrid/Size:output:0*
T0*
_output_shapes
: 2
meshgrid/ones/mulo
meshgrid/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
meshgrid/ones/Less/y
meshgrid/ones/LessLessmeshgrid/ones/mul:z:0meshgrid/ones/Less/y:output:0*
T0*
_output_shapes
: 2
meshgrid/ones/Less
meshgrid/ones/packedPackmeshgrid/Size_1:output:0meshgrid/Size:output:0*
N*
T0*
_output_shapes
:2
meshgrid/ones/packedo
meshgrid/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
meshgrid/ones/Const
meshgrid/onesFillmeshgrid/ones/packed:output:0meshgrid/ones/Const:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/ones
meshgrid/mulMulmeshgrid/Reshape_2:output:0meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/mul
meshgrid/mul_1Mulmeshgrid/Reshape_3:output:0meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/mul_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Џ
strided_slice_3StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2
strided_slice_3
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"    џџџџ2
strided_slice_4/stack
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack_1
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Ћ
strided_slice_4StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
end_mask2
strided_slice_4q
SigmoidSigmoidstrided_slice_4:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2	
Sigmoidw
addAddV2strided_slice_2:output:0meshgrid/mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
addy
add_1AddV2strided_slice_3:output:0meshgrid/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
add_1
stackPackadd:z:0	add_1:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
axisџџџџџџџџџ2
stack
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    џџџџ2
strided_slice_5/stack_1
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2
strided_slice_5StridedSlice'sequential_1/conv2d_19/BiasAdd:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*-
_output_shapes
:џџџџџџџџџ## *
ellipsis_mask2
strided_slice_5e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
concat/axis
concatConcatV2stack:output:0strided_slice_5:output:0concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##2
concatЁ
IdentityIdentityconcat:output:0.^sequential_1/conv2d_10/BiasAdd/ReadVariableOp-^sequential_1/conv2d_10/Conv2D/ReadVariableOp.^sequential_1/conv2d_11/BiasAdd/ReadVariableOp-^sequential_1/conv2d_11/Conv2D/ReadVariableOp.^sequential_1/conv2d_12/BiasAdd/ReadVariableOp-^sequential_1/conv2d_12/Conv2D/ReadVariableOp.^sequential_1/conv2d_13/BiasAdd/ReadVariableOp-^sequential_1/conv2d_13/Conv2D/ReadVariableOp.^sequential_1/conv2d_14/BiasAdd/ReadVariableOp-^sequential_1/conv2d_14/Conv2D/ReadVariableOp.^sequential_1/conv2d_15/BiasAdd/ReadVariableOp-^sequential_1/conv2d_15/Conv2D/ReadVariableOp.^sequential_1/conv2d_16/BiasAdd/ReadVariableOp-^sequential_1/conv2d_16/Conv2D/ReadVariableOp.^sequential_1/conv2d_17/BiasAdd/ReadVariableOp-^sequential_1/conv2d_17/Conv2D/ReadVariableOp.^sequential_1/conv2d_18/BiasAdd/ReadVariableOp-^sequential_1/conv2d_18/Conv2D/ReadVariableOp.^sequential_1/conv2d_19/BiasAdd/ReadVariableOp-^sequential_1/conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

IdentityЁ

Identity_1IdentitySigmoid:y:0.^sequential_1/conv2d_10/BiasAdd/ReadVariableOp-^sequential_1/conv2d_10/Conv2D/ReadVariableOp.^sequential_1/conv2d_11/BiasAdd/ReadVariableOp-^sequential_1/conv2d_11/Conv2D/ReadVariableOp.^sequential_1/conv2d_12/BiasAdd/ReadVariableOp-^sequential_1/conv2d_12/Conv2D/ReadVariableOp.^sequential_1/conv2d_13/BiasAdd/ReadVariableOp-^sequential_1/conv2d_13/Conv2D/ReadVariableOp.^sequential_1/conv2d_14/BiasAdd/ReadVariableOp-^sequential_1/conv2d_14/Conv2D/ReadVariableOp.^sequential_1/conv2d_15/BiasAdd/ReadVariableOp-^sequential_1/conv2d_15/Conv2D/ReadVariableOp.^sequential_1/conv2d_16/BiasAdd/ReadVariableOp-^sequential_1/conv2d_16/Conv2D/ReadVariableOp.^sequential_1/conv2d_17/BiasAdd/ReadVariableOp-^sequential_1/conv2d_17/Conv2D/ReadVariableOp.^sequential_1/conv2d_18/BiasAdd/ReadVariableOp-^sequential_1/conv2d_18/Conv2D/ReadVariableOp.^sequential_1/conv2d_19/BiasAdd/ReadVariableOp-^sequential_1/conv2d_19/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 2^
-sequential_1/conv2d_10/BiasAdd/ReadVariableOp-sequential_1/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_10/Conv2D/ReadVariableOp,sequential_1/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_11/BiasAdd/ReadVariableOp-sequential_1/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_11/Conv2D/ReadVariableOp,sequential_1/conv2d_11/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_12/BiasAdd/ReadVariableOp-sequential_1/conv2d_12/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_12/Conv2D/ReadVariableOp,sequential_1/conv2d_12/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_13/BiasAdd/ReadVariableOp-sequential_1/conv2d_13/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_13/Conv2D/ReadVariableOp,sequential_1/conv2d_13/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_14/BiasAdd/ReadVariableOp-sequential_1/conv2d_14/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_14/Conv2D/ReadVariableOp,sequential_1/conv2d_14/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_15/BiasAdd/ReadVariableOp-sequential_1/conv2d_15/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_15/Conv2D/ReadVariableOp,sequential_1/conv2d_15/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_16/BiasAdd/ReadVariableOp-sequential_1/conv2d_16/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_16/Conv2D/ReadVariableOp,sequential_1/conv2d_16/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_17/BiasAdd/ReadVariableOp-sequential_1/conv2d_17/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_17/Conv2D/ReadVariableOp,sequential_1/conv2d_17/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_18/BiasAdd/ReadVariableOp-sequential_1/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_18/Conv2D/ReadVariableOp,sequential_1/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_19/BiasAdd/ReadVariableOp-sequential_1/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_19/Conv2D/ReadVariableOp,sequential_1/conv2d_19/Conv2D/ReadVariableOp:R N
/
_output_shapes
:џџџџџџџџџFF

_user_specified_namex

§
D__inference_conv2d_15_layer_call_and_return_conditional_losses_38334

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЕ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
ReluБ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
љl
њ
G__inference_sequential_1_layer_call_and_return_conditional_losses_37992

inputsB
(conv2d_10_conv2d_readvariableop_resource: 7
)conv2d_10_biasadd_readvariableop_resource: B
(conv2d_11_conv2d_readvariableop_resource:  7
)conv2d_11_biasadd_readvariableop_resource: B
(conv2d_12_conv2d_readvariableop_resource: @7
)conv2d_12_biasadd_readvariableop_resource:@B
(conv2d_13_conv2d_readvariableop_resource:@@7
)conv2d_13_biasadd_readvariableop_resource:@B
(conv2d_14_conv2d_readvariableop_resource:@@7
)conv2d_14_biasadd_readvariableop_resource:@B
(conv2d_15_conv2d_readvariableop_resource:@@7
)conv2d_15_biasadd_readvariableop_resource:@B
(conv2d_16_conv2d_readvariableop_resource:@@7
)conv2d_16_biasadd_readvariableop_resource:@B
(conv2d_17_conv2d_readvariableop_resource:@@7
)conv2d_17_biasadd_readvariableop_resource:@B
(conv2d_18_conv2d_readvariableop_resource:@@7
)conv2d_18_biasadd_readvariableop_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:
identityЂ conv2d_10/BiasAdd/ReadVariableOpЂconv2d_10/Conv2D/ReadVariableOpЂ conv2d_11/BiasAdd/ReadVariableOpЂconv2d_11/Conv2D/ReadVariableOpЂ conv2d_12/BiasAdd/ReadVariableOpЂconv2d_12/Conv2D/ReadVariableOpЂ conv2d_13/BiasAdd/ReadVariableOpЂconv2d_13/Conv2D/ReadVariableOpЂ conv2d_14/BiasAdd/ReadVariableOpЂconv2d_14/Conv2D/ReadVariableOpЂ conv2d_15/BiasAdd/ReadVariableOpЂconv2d_15/Conv2D/ReadVariableOpЂ conv2d_16/BiasAdd/ReadVariableOpЂconv2d_16/Conv2D/ReadVariableOpЂ conv2d_17/BiasAdd/ReadVariableOpЂconv2d_17/Conv2D/ReadVariableOpЂ conv2d_18/BiasAdd/ReadVariableOpЂconv2d_18/Conv2D/ReadVariableOpЂ conv2d_19/BiasAdd/ReadVariableOpЂconv2d_19/Conv2D/ReadVariableOpГ
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_10/Conv2D/ReadVariableOpг
conv2d_10/Conv2DConv2Dinputs'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
conv2d_10/Conv2DЊ
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOpТ
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
conv2d_10/BiasAdd
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
conv2d_10/ReluГ
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_11/Conv2D/ReadVariableOpщ
conv2d_11/Conv2DConv2Dconv2d_10/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
conv2d_11/Conv2DЊ
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_11/BiasAdd/ReadVariableOpТ
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
conv2d_11/BiasAdd
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
conv2d_11/Reluй
max_pooling2d_1/MaxPoolMaxPoolconv2d_11/Relu:activations:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolГ
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_12/Conv2D/ReadVariableOpэ
conv2d_12/Conv2DConv2D max_pooling2d_1/MaxPool:output:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_12/Conv2DЊ
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_12/BiasAdd/ReadVariableOpТ
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_12/BiasAdd
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_12/ReluГ
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_13/Conv2D/ReadVariableOpщ
conv2d_13/Conv2DConv2Dconv2d_12/Relu:activations:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_13/Conv2DЊ
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOpТ
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_13/BiasAdd
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_13/ReluГ
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_14/Conv2D/ReadVariableOpщ
conv2d_14/Conv2DConv2Dconv2d_13/Relu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_14/Conv2DЊ
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOpТ
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_14/BiasAdd
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_14/ReluГ
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_15/Conv2D/ReadVariableOpщ
conv2d_15/Conv2DConv2Dconv2d_14/Relu:activations:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_15/Conv2DЊ
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOpТ
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_15/BiasAdd
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_15/ReluГ
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_16/Conv2D/ReadVariableOpщ
conv2d_16/Conv2DConv2Dconv2d_15/Relu:activations:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_16/Conv2DЊ
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOpТ
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_16/BiasAdd
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_16/ReluГ
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_17/Conv2D/ReadVariableOpщ
conv2d_17/Conv2DConv2Dconv2d_16/Relu:activations:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_17/Conv2DЊ
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOpТ
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_17/BiasAdd
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_17/ReluГ
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_18/Conv2D/ReadVariableOpщ
conv2d_18/Conv2DConv2Dconv2d_17/Relu:activations:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_18/Conv2DЊ
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOpТ
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_18/BiasAdd
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2
conv2d_18/ReluГ
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOpщ
conv2d_19/Conv2DConv2Dconv2d_18/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
conv2d_19/Conv2DЊ
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOpТ
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
conv2d_19/BiasAddК
IdentityIdentityconv2d_19/BiasAdd:output:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ж
р
#__inference_signature_wrapper_36982
input_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@

unknown_18:
identity

identity_1ЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:џџџџџџџџџ##:џџџџџџџџџ##*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_354202
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:џџџџџџџџџFF
!
_user_specified_name	input_1
ЮV
Т
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_36239
x,
sequential_1_36134:  
sequential_1_36136: ,
sequential_1_36138:   
sequential_1_36140: ,
sequential_1_36142: @ 
sequential_1_36144:@,
sequential_1_36146:@@ 
sequential_1_36148:@,
sequential_1_36150:@@ 
sequential_1_36152:@,
sequential_1_36154:@@ 
sequential_1_36156:@,
sequential_1_36158:@@ 
sequential_1_36160:@,
sequential_1_36162:@@ 
sequential_1_36164:@,
sequential_1_36166:@@ 
sequential_1_36168:@,
sequential_1_36170:@ 
sequential_1_36172:
identity

identity_1Ђ$sequential_1/StatefulPartitionedCallД
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallxsequential_1_36134sequential_1_36136sequential_1_36138sequential_1_36140sequential_1_36142sequential_1_36144sequential_1_36146sequential_1_36148sequential_1_36150sequential_1_36152sequential_1_36154sequential_1_36156sequential_1_36158sequential_1_36160sequential_1_36162sequential_1_36164sequential_1_36166sequential_1_36168sequential_1_36170sequential_1_36172* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ##*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_361332&
$sequential_1/StatefulPartitionedCall?
ShapeShapex*
T0*
_output_shapes
:2
ShapeX
CastCastShape:output:0*

DstT0*

SrcT0*
_output_shapes
:2
Casto
Shape_1Shape-sequential_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2	
Shape_1^
Cast_1CastShape_1:output:0*

DstT0*

SrcT0*
_output_shapes
:2
Cast_1t
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2о
strided_sliceStridedSlice
Cast_1:y:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ш
strided_slice_1StridedSlice
Cast_1:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1_
range/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range/start_
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
range/delta
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2
rangeS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/y_
mulMulrange:output:0mul/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
mulc
range_1/startConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_1/startc
range_1/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
range_1/delta
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*

Tidx0*#
_output_shapes
:џџџџџџџџџ2	
range_1W
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
mul_1/yg
mul_1Mulrange_1:output:0mul_1/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
mul_1
meshgrid/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
meshgrid/Reshape/shape
meshgrid/ReshapeReshape	mul_1:z:0meshgrid/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape
meshgrid/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ2
meshgrid/Reshape_1/shape
meshgrid/Reshape_1Reshapemul:z:0!meshgrid/Reshape_1/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_1R
meshgrid/SizeSize	mul_1:z:0*
T0*
_output_shapes
: 2
meshgrid/SizeT
meshgrid/Size_1Sizemul:z:0*
T0*
_output_shapes
: 2
meshgrid/Size_1
meshgrid/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ2
meshgrid/Reshape_2/shapeЃ
meshgrid/Reshape_2Reshapemeshgrid/Reshape:output:0!meshgrid/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_2
meshgrid/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
meshgrid/Reshape_3/shapeЅ
meshgrid/Reshape_3Reshapemeshgrid/Reshape_1:output:0!meshgrid/Reshape_3/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
meshgrid/Reshape_3
meshgrid/ones/mulMulmeshgrid/Size_1:output:0meshgrid/Size:output:0*
T0*
_output_shapes
: 2
meshgrid/ones/mulo
meshgrid/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
meshgrid/ones/Less/y
meshgrid/ones/LessLessmeshgrid/ones/mul:z:0meshgrid/ones/Less/y:output:0*
T0*
_output_shapes
: 2
meshgrid/ones/Less
meshgrid/ones/packedPackmeshgrid/Size_1:output:0meshgrid/Size:output:0*
N*
T0*
_output_shapes
:2
meshgrid/ones/packedo
meshgrid/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
meshgrid/ones/Const
meshgrid/onesFillmeshgrid/ones/packed:output:0meshgrid/ones/Const:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/ones
meshgrid/mulMulmeshgrid/Reshape_2:output:0meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/mul
meshgrid/mul_1Mulmeshgrid/Reshape_3:output:0meshgrid/ones:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
meshgrid/mul_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Е
strided_slice_2StridedSlice-sequential_1/StatefulPartitionedCall:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Е
strided_slice_3StridedSlice-sequential_1/StatefulPartitionedCall:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
shrink_axis_mask2
strided_slice_3
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"    џџџџ2
strided_slice_4/stack
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack_1
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Б
strided_slice_4StridedSlice-sequential_1/StatefulPartitionedCall:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ##*
ellipsis_mask*
end_mask2
strided_slice_4q
SigmoidSigmoidstrided_slice_4:output:0*
T0*/
_output_shapes
:џџџџџџџџџ##2	
Sigmoidw
addAddV2strided_slice_2:output:0meshgrid/mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
addy
add_1AddV2strided_slice_3:output:0meshgrid/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ##2
add_1
stackPackadd:z:0	add_1:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##*
axisџџџџџџџџџ2
stack
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_5/stack
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    џџџџ2
strided_slice_5/stack_1
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2
strided_slice_5StridedSlice-sequential_1/StatefulPartitionedCall:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*-
_output_shapes
:џџџџџџџџџ## *
ellipsis_mask2
strided_slice_5e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
concat/axis
concatConcatV2stack:output:0strided_slice_5:output:0concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ##2
concat
IdentityIdentityconcat:output:0%^sequential_1/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity

Identity_1IdentitySigmoid:y:0%^sequential_1/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ##2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:џџџџџџџџџFF: : : : : : : : : : : : : : : : : : : : 2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:R N
/
_output_shapes
:џџџџџџџџџFF

_user_specified_namex
е
K
/__inference_max_pooling2d_1_layer_call_fn_35432

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_354262
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


)__inference_conv2d_12_layer_call_fn_38263

inputs!
unknown: @
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_354852
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
К
я
__inference__traced_save_38638
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop/
+savev2_conv2d_12_kernel_read_readvariableop-
)savev2_conv2d_12_bias_read_readvariableop/
+savev2_conv2d_13_kernel_read_readvariableop-
)savev2_conv2d_13_bias_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop-
)savev2_conv2d_14_bias_read_readvariableop/
+savev2_conv2d_15_kernel_read_readvariableop-
)savev2_conv2d_15_bias_read_readvariableop/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_10_kernel_m_read_readvariableop4
0savev2_adam_conv2d_10_bias_m_read_readvariableop6
2savev2_adam_conv2d_11_kernel_m_read_readvariableop4
0savev2_adam_conv2d_11_bias_m_read_readvariableop6
2savev2_adam_conv2d_12_kernel_m_read_readvariableop4
0savev2_adam_conv2d_12_bias_m_read_readvariableop6
2savev2_adam_conv2d_13_kernel_m_read_readvariableop4
0savev2_adam_conv2d_13_bias_m_read_readvariableop6
2savev2_adam_conv2d_14_kernel_m_read_readvariableop4
0savev2_adam_conv2d_14_bias_m_read_readvariableop6
2savev2_adam_conv2d_15_kernel_m_read_readvariableop4
0savev2_adam_conv2d_15_bias_m_read_readvariableop6
2savev2_adam_conv2d_16_kernel_m_read_readvariableop4
0savev2_adam_conv2d_16_bias_m_read_readvariableop6
2savev2_adam_conv2d_17_kernel_m_read_readvariableop4
0savev2_adam_conv2d_17_bias_m_read_readvariableop6
2savev2_adam_conv2d_18_kernel_m_read_readvariableop4
0savev2_adam_conv2d_18_bias_m_read_readvariableop6
2savev2_adam_conv2d_19_kernel_m_read_readvariableop4
0savev2_adam_conv2d_19_bias_m_read_readvariableop6
2savev2_adam_conv2d_10_kernel_v_read_readvariableop4
0savev2_adam_conv2d_10_bias_v_read_readvariableop6
2savev2_adam_conv2d_11_kernel_v_read_readvariableop4
0savev2_adam_conv2d_11_bias_v_read_readvariableop6
2savev2_adam_conv2d_12_kernel_v_read_readvariableop4
0savev2_adam_conv2d_12_bias_v_read_readvariableop6
2savev2_adam_conv2d_13_kernel_v_read_readvariableop4
0savev2_adam_conv2d_13_bias_v_read_readvariableop6
2savev2_adam_conv2d_14_kernel_v_read_readvariableop4
0savev2_adam_conv2d_14_bias_v_read_readvariableop6
2savev2_adam_conv2d_15_kernel_v_read_readvariableop4
0savev2_adam_conv2d_15_bias_v_read_readvariableop6
2savev2_adam_conv2d_16_kernel_v_read_readvariableop4
0savev2_adam_conv2d_16_bias_v_read_readvariableop6
2savev2_adam_conv2d_17_kernel_v_read_readvariableop4
0savev2_adam_conv2d_17_bias_v_read_readvariableop6
2savev2_adam_conv2d_18_kernel_v_read_readvariableop4
0savev2_adam_conv2d_18_bias_v_read_readvariableop6
2savev2_adam_conv2d_19_kernel_v_read_readvariableop4
0savev2_adam_conv2d_19_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЈ$
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*К#
valueА#B­#DB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*
valueBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesѕ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop+savev2_conv2d_12_kernel_read_readvariableop)savev2_conv2d_12_bias_read_readvariableop+savev2_conv2d_13_kernel_read_readvariableop)savev2_conv2d_13_bias_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableop+savev2_conv2d_15_kernel_read_readvariableop)savev2_conv2d_15_bias_read_readvariableop+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop0savev2_adam_conv2d_10_bias_m_read_readvariableop2savev2_adam_conv2d_11_kernel_m_read_readvariableop0savev2_adam_conv2d_11_bias_m_read_readvariableop2savev2_adam_conv2d_12_kernel_m_read_readvariableop0savev2_adam_conv2d_12_bias_m_read_readvariableop2savev2_adam_conv2d_13_kernel_m_read_readvariableop0savev2_adam_conv2d_13_bias_m_read_readvariableop2savev2_adam_conv2d_14_kernel_m_read_readvariableop0savev2_adam_conv2d_14_bias_m_read_readvariableop2savev2_adam_conv2d_15_kernel_m_read_readvariableop0savev2_adam_conv2d_15_bias_m_read_readvariableop2savev2_adam_conv2d_16_kernel_m_read_readvariableop0savev2_adam_conv2d_16_bias_m_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop0savev2_adam_conv2d_17_bias_m_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop0savev2_adam_conv2d_18_bias_m_read_readvariableop2savev2_adam_conv2d_19_kernel_m_read_readvariableop0savev2_adam_conv2d_19_bias_m_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop0savev2_adam_conv2d_10_bias_v_read_readvariableop2savev2_adam_conv2d_11_kernel_v_read_readvariableop0savev2_adam_conv2d_11_bias_v_read_readvariableop2savev2_adam_conv2d_12_kernel_v_read_readvariableop0savev2_adam_conv2d_12_bias_v_read_readvariableop2savev2_adam_conv2d_13_kernel_v_read_readvariableop0savev2_adam_conv2d_13_bias_v_read_readvariableop2savev2_adam_conv2d_14_kernel_v_read_readvariableop0savev2_adam_conv2d_14_bias_v_read_readvariableop2savev2_adam_conv2d_15_kernel_v_read_readvariableop0savev2_adam_conv2d_15_bias_v_read_readvariableop2savev2_adam_conv2d_16_kernel_v_read_readvariableop0savev2_adam_conv2d_16_bias_v_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop0savev2_adam_conv2d_17_bias_v_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop0savev2_adam_conv2d_18_bias_v_read_readvariableop2savev2_adam_conv2d_19_kernel_v_read_readvariableop0savev2_adam_conv2d_19_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *R
dtypesH
F2D	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*ї
_input_shapesх
т: : : : : : : : :  : : @:@:@@:@:@@:@:@@:@:@@:@:@@:@:@@:@:@:: : : : :  : : @:@:@@:@:@@:@:@@:@:@@:@:@@:@:@@:@:@:: : :  : : @:@:@@:@:@@:@:@@:@:@@:@:@@:@:@@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 	

_output_shapes
: :,
(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :, (
&
_output_shapes
: @: !

_output_shapes
:@:,"(
&
_output_shapes
:@@: #

_output_shapes
:@:,$(
&
_output_shapes
:@@: %

_output_shapes
:@:,&(
&
_output_shapes
:@@: '

_output_shapes
:@:,((
&
_output_shapes
:@@: )

_output_shapes
:@:,*(
&
_output_shapes
:@@: +

_output_shapes
:@:,,(
&
_output_shapes
:@@: -

_output_shapes
:@:,.(
&
_output_shapes
:@: /

_output_shapes
::,0(
&
_output_shapes
: : 1

_output_shapes
: :,2(
&
_output_shapes
:  : 3

_output_shapes
: :,4(
&
_output_shapes
: @: 5

_output_shapes
:@:,6(
&
_output_shapes
:@@: 7

_output_shapes
:@:,8(
&
_output_shapes
:@@: 9

_output_shapes
:@:,:(
&
_output_shapes
:@@: ;

_output_shapes
:@:,<(
&
_output_shapes
:@@: =

_output_shapes
:@:,>(
&
_output_shapes
:@@: ?

_output_shapes
:@:,@(
&
_output_shapes
:@@: A

_output_shapes
:@:,B(
&
_output_shapes
:@: C

_output_shapes
::D

_output_shapes
: "ЬL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultэ
C
input_18
serving_default_input_1:0џџџџџџџџџFFD
output_18
StatefulPartitionedCall:0џџџџџџџџџ##D
output_28
StatefulPartitionedCall:1џџџџџџџџџ##tensorflow/serving/predict:ѕд
Лx
	model
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
Ъ_default_save_signature
Ы__call__
+Ь&call_and_return_all_conditional_losses"тv
_tf_keras_modelШv{"name": "lode_star_base_model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "LodeSTARBaseModel", "config": {"model": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_10_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "__passive_serialization__": true, "shared_object_id": 32}}, "shared_object_id": 33, "is_graph_network": false, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [8, 70, 70, 1]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "LodeSTARBaseModel", "config": {"model": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, null, null, 1], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_10_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "batch_input_shape": [null, null, null, 1], "dtype": "float32", "filters": 32, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": [2, 2], "padding": "same", "strides": [2, 2], "data_format": "channels_last"}, "shared_object_id": 7}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 28}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": [1, 1], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 31}]}}}}, "training_config": {"loss": "mae", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Є
layer_with_weights-0
layer-0
	layer_with_weights-1
	layer-1

layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
layer_with_weights-7
layer-8
layer_with_weights-8
layer-9
layer_with_weights-9
layer-10
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"я
_tf_keras_sequentialЯ{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_10_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "__passive_serialization__": true, "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, null, null, 1]}, "float32", "conv2d_10_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_10_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 7}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 28}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 31}]}}, "training_config": {"loss": "mae", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
у
iter

beta_1

beta_2
	decay
learning_ratemЂmЃmЄmЅ mІ!mЇ"mЈ#mЉ$mЊ%mЋ&mЌ'm­(mЎ)mЏ*mА+mБ,mВ-mГ.mД/mЕvЖvЗvИvЙ vК!vЛ"vМ#vН$vО%vП&vР'vС(vТ)vУ*vФ+vХ,vЦ-vЧ.vШ/vЩ"
	optimizer
 "
trackable_list_wrapper
Ж
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19"
trackable_list_wrapper
Ж
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19"
trackable_list_wrapper
Ю
0layer_metrics
regularization_losses

1layers
trainable_variables
	variables
2layer_regularization_losses
3non_trainable_variables
4metrics
Ы__call__
Ъ_default_save_signature
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
-
Яserving_default"
signature_map
о

kernel
bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
а__call__
+б&call_and_return_all_conditional_losses"З

_tf_keras_layer
{"name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 1]}}
з


kernel
bias
9regularization_losses
:trainable_variables
;	variables
<	keras_api
в__call__
+г&call_and_return_all_conditional_losses"А	
_tf_keras_layer	{"name": "conv2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 32]}}
Џ
=regularization_losses
>trainable_variables
?	variables
@	keras_api
д__call__
+е&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 36}}
и


 kernel
!bias
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"Б	
_tf_keras_layer	{"name": "conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 32]}}
к


"kernel
#bias
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
и__call__
+й&call_and_return_all_conditional_losses"Г	
_tf_keras_layer	{"name": "conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 64]}}
к


$kernel
%bias
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
к__call__
+л&call_and_return_all_conditional_losses"Г	
_tf_keras_layer	{"name": "conv2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 64]}}
к


&kernel
'bias
Mregularization_losses
Ntrainable_variables
O	variables
P	keras_api
м__call__
+н&call_and_return_all_conditional_losses"Г	
_tf_keras_layer	{"name": "conv2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 64]}}
к


(kernel
)bias
Qregularization_losses
Rtrainable_variables
S	variables
T	keras_api
о__call__
+п&call_and_return_all_conditional_losses"Г	
_tf_keras_layer	{"name": "conv2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 64]}}
к


*kernel
+bias
Uregularization_losses
Vtrainable_variables
W	variables
X	keras_api
р__call__
+с&call_and_return_all_conditional_losses"Г	
_tf_keras_layer	{"name": "conv2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 64]}}
к


,kernel
-bias
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
т__call__
+у&call_and_return_all_conditional_losses"Г	
_tf_keras_layer	{"name": "conv2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 43}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 64]}}
л


.kernel
/bias
]regularization_losses
^trainable_variables
_	variables
`	keras_api
ф__call__
+х&call_and_return_all_conditional_losses"Д	
_tf_keras_layer	{"name": "conv2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 44}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 64]}}
 "
trackable_list_wrapper
Ж
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19"
trackable_list_wrapper
Ж
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19"
trackable_list_wrapper
А
alayer_metrics
regularization_losses

blayers
trainable_variables
	variables
clayer_regularization_losses
dnon_trainable_variables
emetrics
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
*:( 2conv2d_10/kernel
: 2conv2d_10/bias
*:(  2conv2d_11/kernel
: 2conv2d_11/bias
*:( @2conv2d_12/kernel
:@2conv2d_12/bias
*:(@@2conv2d_13/kernel
:@2conv2d_13/bias
*:(@@2conv2d_14/kernel
:@2conv2d_14/bias
*:(@@2conv2d_15/kernel
:@2conv2d_15/bias
*:(@@2conv2d_16/kernel
:@2conv2d_16/bias
*:(@@2conv2d_17/kernel
:@2conv2d_17/bias
*:(@@2conv2d_18/kernel
:@2conv2d_18/bias
*:(@2conv2d_19/kernel
:2conv2d_19/bias
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
f0"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
А
glayer_metrics
5regularization_losses

hlayers
6trainable_variables
7	variables
ilayer_regularization_losses
jnon_trainable_variables
kmetrics
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
А
llayer_metrics
9regularization_losses

mlayers
:trainable_variables
;	variables
nlayer_regularization_losses
onon_trainable_variables
pmetrics
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
qlayer_metrics
=regularization_losses

rlayers
>trainable_variables
?	variables
slayer_regularization_losses
tnon_trainable_variables
umetrics
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
А
vlayer_metrics
Aregularization_losses

wlayers
Btrainable_variables
C	variables
xlayer_regularization_losses
ynon_trainable_variables
zmetrics
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
А
{layer_metrics
Eregularization_losses

|layers
Ftrainable_variables
G	variables
}layer_regularization_losses
~non_trainable_variables
metrics
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
Е
layer_metrics
Iregularization_losses
layers
Jtrainable_variables
K	variables
 layer_regularization_losses
non_trainable_variables
metrics
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
Е
layer_metrics
Mregularization_losses
layers
Ntrainable_variables
O	variables
 layer_regularization_losses
non_trainable_variables
metrics
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
Е
layer_metrics
Qregularization_losses
layers
Rtrainable_variables
S	variables
 layer_regularization_losses
non_trainable_variables
metrics
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
Е
layer_metrics
Uregularization_losses
layers
Vtrainable_variables
W	variables
 layer_regularization_losses
non_trainable_variables
metrics
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
Е
layer_metrics
Yregularization_losses
layers
Ztrainable_variables
[	variables
 layer_regularization_losses
non_trainable_variables
metrics
т__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
Е
layer_metrics
]regularization_losses
layers
^trainable_variables
_	variables
 layer_regularization_losses
non_trainable_variables
metrics
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
n
0
	1

2
3
4
5
6
7
8
9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
и

total

count
 	variables
Ё	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 45}
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
 	variables"
_generic_user_object
/:- 2Adam/conv2d_10/kernel/m
!: 2Adam/conv2d_10/bias/m
/:-  2Adam/conv2d_11/kernel/m
!: 2Adam/conv2d_11/bias/m
/:- @2Adam/conv2d_12/kernel/m
!:@2Adam/conv2d_12/bias/m
/:-@@2Adam/conv2d_13/kernel/m
!:@2Adam/conv2d_13/bias/m
/:-@@2Adam/conv2d_14/kernel/m
!:@2Adam/conv2d_14/bias/m
/:-@@2Adam/conv2d_15/kernel/m
!:@2Adam/conv2d_15/bias/m
/:-@@2Adam/conv2d_16/kernel/m
!:@2Adam/conv2d_16/bias/m
/:-@@2Adam/conv2d_17/kernel/m
!:@2Adam/conv2d_17/bias/m
/:-@@2Adam/conv2d_18/kernel/m
!:@2Adam/conv2d_18/bias/m
/:-@2Adam/conv2d_19/kernel/m
!:2Adam/conv2d_19/bias/m
/:- 2Adam/conv2d_10/kernel/v
!: 2Adam/conv2d_10/bias/v
/:-  2Adam/conv2d_11/kernel/v
!: 2Adam/conv2d_11/bias/v
/:- @2Adam/conv2d_12/kernel/v
!:@2Adam/conv2d_12/bias/v
/:-@@2Adam/conv2d_13/kernel/v
!:@2Adam/conv2d_13/bias/v
/:-@@2Adam/conv2d_14/kernel/v
!:@2Adam/conv2d_14/bias/v
/:-@@2Adam/conv2d_15/kernel/v
!:@2Adam/conv2d_15/bias/v
/:-@@2Adam/conv2d_16/kernel/v
!:@2Adam/conv2d_16/bias/v
/:-@@2Adam/conv2d_17/kernel/v
!:@2Adam/conv2d_17/bias/v
/:-@@2Adam/conv2d_18/kernel/v
!:@2Adam/conv2d_18/bias/v
/:-@2Adam/conv2d_19/kernel/v
!:2Adam/conv2d_19/bias/v
ц2у
 __inference__wrapped_model_35420О
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *.Ђ+
)&
input_1џџџџџџџџџFF
2
6__inference_lode_star_base_model_1_layer_call_fn_37029
6__inference_lode_star_base_model_1_layer_call_fn_37076
6__inference_lode_star_base_model_1_layer_call_fn_37123
6__inference_lode_star_base_model_1_layer_call_fn_37170Џ
ІВЂ
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2ў
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_37307
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_37451
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_37588
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_37732Џ
ІВЂ
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
к2з
,__inference_sequential_1_layer_call_fn_35653
,__inference_sequential_1_layer_call_fn_37783
,__inference_sequential_1_layer_call_fn_37828
,__inference_sequential_1_layer_call_fn_35943
,__inference_sequential_1_layer_call_fn_37873
,__inference_sequential_1_layer_call_fn_37918Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ќ2љ
G__inference_sequential_1_layer_call_and_return_conditional_losses_37992
G__inference_sequential_1_layer_call_and_return_conditional_losses_38066
G__inference_sequential_1_layer_call_and_return_conditional_losses_35998
G__inference_sequential_1_layer_call_and_return_conditional_losses_36053
G__inference_sequential_1_layer_call_and_return_conditional_losses_38140
G__inference_sequential_1_layer_call_and_return_conditional_losses_38214Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЪBЧ
#__inference_signature_wrapper_36982input_1"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_10_layer_call_fn_38223Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_10_layer_call_and_return_conditional_losses_38234Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_11_layer_call_fn_38243Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_11_layer_call_and_return_conditional_losses_38254Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
/__inference_max_pooling2d_1_layer_call_fn_35432р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
В2Џ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_35426р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
г2а
)__inference_conv2d_12_layer_call_fn_38263Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_12_layer_call_and_return_conditional_losses_38274Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_13_layer_call_fn_38283Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_13_layer_call_and_return_conditional_losses_38294Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_14_layer_call_fn_38303Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_14_layer_call_and_return_conditional_losses_38314Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_15_layer_call_fn_38323Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_15_layer_call_and_return_conditional_losses_38334Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_16_layer_call_fn_38343Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_16_layer_call_and_return_conditional_losses_38354Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_17_layer_call_fn_38363Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_17_layer_call_and_return_conditional_losses_38374Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_18_layer_call_fn_38383Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_18_layer_call_and_return_conditional_losses_38394Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_19_layer_call_fn_38403Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_19_layer_call_and_return_conditional_losses_38413Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ъ
 __inference__wrapped_model_35420Х !"#$%&'()*+,-./8Ђ5
.Ђ+
)&
input_1џџџџџџџџџFF
Њ "sЊp
6
output_1*'
output_1џџџџџџџџџ##
6
output_2*'
output_2џџџџџџџџџ##й
D__inference_conv2d_10_layer_call_and_return_conditional_losses_38234IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Б
)__inference_conv2d_10_layer_call_fn_38223IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ й
D__inference_conv2d_11_layer_call_and_return_conditional_losses_38254IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Б
)__inference_conv2d_11_layer_call_fn_38243IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ й
D__inference_conv2d_12_layer_call_and_return_conditional_losses_38274 !IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Б
)__inference_conv2d_12_layer_call_fn_38263 !IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@й
D__inference_conv2d_13_layer_call_and_return_conditional_losses_38294"#IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Б
)__inference_conv2d_13_layer_call_fn_38283"#IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@й
D__inference_conv2d_14_layer_call_and_return_conditional_losses_38314$%IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Б
)__inference_conv2d_14_layer_call_fn_38303$%IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@й
D__inference_conv2d_15_layer_call_and_return_conditional_losses_38334&'IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Б
)__inference_conv2d_15_layer_call_fn_38323&'IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@й
D__inference_conv2d_16_layer_call_and_return_conditional_losses_38354()IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Б
)__inference_conv2d_16_layer_call_fn_38343()IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@й
D__inference_conv2d_17_layer_call_and_return_conditional_losses_38374*+IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Б
)__inference_conv2d_17_layer_call_fn_38363*+IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@й
D__inference_conv2d_18_layer_call_and_return_conditional_losses_38394,-IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Б
)__inference_conv2d_18_layer_call_fn_38383,-IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@й
D__inference_conv2d_19_layer_call_and_return_conditional_losses_38413./IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Б
)__inference_conv2d_19_layer_call_fn_38403./IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_37307Ћ !"#$%&'()*+,-./6Ђ3
,Ђ)
# 
xџџџџџџџџџFF
p 
Њ "[ЂX
QЂN
%"
0/0џџџџџџџџџ##
%"
0/1џџџџџџџџџ##
 
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_37451Ћ !"#$%&'()*+,-./6Ђ3
,Ђ)
# 
xџџџџџџџџџFF
p
Њ "[ЂX
QЂN
%"
0/0џџџџџџџџџ##
%"
0/1џџџџџџџџџ##
 
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_37588Б !"#$%&'()*+,-./<Ђ9
2Ђ/
)&
input_1џџџџџџџџџFF
p 
Њ "[ЂX
QЂN
%"
0/0џџџџџџџџџ##
%"
0/1џџџџџџџџџ##
 
Q__inference_lode_star_base_model_1_layer_call_and_return_conditional_losses_37732Б !"#$%&'()*+,-./<Ђ9
2Ђ/
)&
input_1џџџџџџџџџFF
p
Њ "[ЂX
QЂN
%"
0/0џџџџџџџџџ##
%"
0/1џџџџџџџџџ##
 о
6__inference_lode_star_base_model_1_layer_call_fn_37029Ѓ !"#$%&'()*+,-./<Ђ9
2Ђ/
)&
input_1џџџџџџџџџFF
p 
Њ "MЂJ
# 
0џџџџџџџџџ##
# 
1џџџџџџџџџ##и
6__inference_lode_star_base_model_1_layer_call_fn_37076 !"#$%&'()*+,-./6Ђ3
,Ђ)
# 
xџџџџџџџџџFF
p 
Њ "MЂJ
# 
0џџџџџџџџџ##
# 
1џџџџџџџџџ##и
6__inference_lode_star_base_model_1_layer_call_fn_37123 !"#$%&'()*+,-./6Ђ3
,Ђ)
# 
xџџџџџџџџџFF
p
Њ "MЂJ
# 
0џџџџџџџџџ##
# 
1џџџџџџџџџ##о
6__inference_lode_star_base_model_1_layer_call_fn_37170Ѓ !"#$%&'()*+,-./<Ђ9
2Ђ/
)&
input_1џџџџџџџџџFF
p
Њ "MЂJ
# 
0џџџџџџџџџ##
# 
1џџџџџџџџџ##э
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_35426RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Х
/__inference_max_pooling2d_1_layer_call_fn_35432RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
G__inference_sequential_1_layer_call_and_return_conditional_losses_35998Г !"#$%&'()*+,-./ZЂW
PЂM
C@
conv2d_10_input+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 џ
G__inference_sequential_1_layer_call_and_return_conditional_losses_36053Г !"#$%&'()*+,-./ZЂW
PЂM
C@
conv2d_10_input+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 і
G__inference_sequential_1_layer_call_and_return_conditional_losses_37992Њ !"#$%&'()*+,-./QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 і
G__inference_sequential_1_layer_call_and_return_conditional_losses_38066Њ !"#$%&'()*+,-./QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 в
G__inference_sequential_1_layer_call_and_return_conditional_losses_38140 !"#$%&'()*+,-./?Ђ<
5Ђ2
(%
inputsџџџџџџџџџFF
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ##
 в
G__inference_sequential_1_layer_call_and_return_conditional_losses_38214 !"#$%&'()*+,-./?Ђ<
5Ђ2
(%
inputsџџџџџџџџџFF
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ##
 з
,__inference_sequential_1_layer_call_fn_35653І !"#$%&'()*+,-./ZЂW
PЂM
C@
conv2d_10_input+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџз
,__inference_sequential_1_layer_call_fn_35943І !"#$%&'()*+,-./ZЂW
PЂM
C@
conv2d_10_input+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЮ
,__inference_sequential_1_layer_call_fn_37783 !"#$%&'()*+,-./QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЮ
,__inference_sequential_1_layer_call_fn_37828 !"#$%&'()*+,-./QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЉ
,__inference_sequential_1_layer_call_fn_37873y !"#$%&'()*+,-./?Ђ<
5Ђ2
(%
inputsџџџџџџџџџFF
p 

 
Њ " џџџџџџџџџ##Љ
,__inference_sequential_1_layer_call_fn_37918y !"#$%&'()*+,-./?Ђ<
5Ђ2
(%
inputsџџџџџџџџџFF
p

 
Њ " џџџџџџџџџ##ј
#__inference_signature_wrapper_36982а !"#$%&'()*+,-./CЂ@
Ђ 
9Њ6
4
input_1)&
input_1џџџџџџџџџFF"sЊp
6
output_1*'
output_1џџџџџџџџџ##
6
output_2*'
output_2џџџџџџџџџ##