��$
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
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
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
�
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68�"
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:@*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
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
�
:transformer_block/multi_head_self_attention/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*K
shared_name<:transformer_block/multi_head_self_attention/dense_1/kernel
�
Ntransformer_block/multi_head_self_attention/dense_1/kernel/Read/ReadVariableOpReadVariableOp:transformer_block/multi_head_self_attention/dense_1/kernel*
_output_shapes

:@@*
dtype0
�
8transformer_block/multi_head_self_attention/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*I
shared_name:8transformer_block/multi_head_self_attention/dense_1/bias
�
Ltransformer_block/multi_head_self_attention/dense_1/bias/Read/ReadVariableOpReadVariableOp8transformer_block/multi_head_self_attention/dense_1/bias*
_output_shapes
:@*
dtype0
�
:transformer_block/multi_head_self_attention/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*K
shared_name<:transformer_block/multi_head_self_attention/dense_2/kernel
�
Ntransformer_block/multi_head_self_attention/dense_2/kernel/Read/ReadVariableOpReadVariableOp:transformer_block/multi_head_self_attention/dense_2/kernel*
_output_shapes

:@@*
dtype0
�
8transformer_block/multi_head_self_attention/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*I
shared_name:8transformer_block/multi_head_self_attention/dense_2/bias
�
Ltransformer_block/multi_head_self_attention/dense_2/bias/Read/ReadVariableOpReadVariableOp8transformer_block/multi_head_self_attention/dense_2/bias*
_output_shapes
:@*
dtype0
�
:transformer_block/multi_head_self_attention/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*K
shared_name<:transformer_block/multi_head_self_attention/dense_3/kernel
�
Ntransformer_block/multi_head_self_attention/dense_3/kernel/Read/ReadVariableOpReadVariableOp:transformer_block/multi_head_self_attention/dense_3/kernel*
_output_shapes

:@@*
dtype0
�
8transformer_block/multi_head_self_attention/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*I
shared_name:8transformer_block/multi_head_self_attention/dense_3/bias
�
Ltransformer_block/multi_head_self_attention/dense_3/bias/Read/ReadVariableOpReadVariableOp8transformer_block/multi_head_self_attention/dense_3/bias*
_output_shapes
:@*
dtype0
�
:transformer_block/multi_head_self_attention/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*K
shared_name<:transformer_block/multi_head_self_attention/dense_4/kernel
�
Ntransformer_block/multi_head_self_attention/dense_4/kernel/Read/ReadVariableOpReadVariableOp:transformer_block/multi_head_self_attention/dense_4/kernel*
_output_shapes

:@@*
dtype0
�
8transformer_block/multi_head_self_attention/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*I
shared_name:8transformer_block/multi_head_self_attention/dense_4/bias
�
Ltransformer_block/multi_head_self_attention/dense_4/bias/Read/ReadVariableOpReadVariableOp8transformer_block/multi_head_self_attention/dense_4/bias*
_output_shapes
:@*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	@�*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:�*
dtype0
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	�@*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:@*
dtype0
�
+transformer_block/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+transformer_block/layer_normalization/gamma
�
?transformer_block/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp+transformer_block/layer_normalization/gamma*
_output_shapes
:@*
dtype0
�
*transformer_block/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*transformer_block/layer_normalization/beta
�
>transformer_block/layer_normalization/beta/Read/ReadVariableOpReadVariableOp*transformer_block/layer_normalization/beta*
_output_shapes
:@*
dtype0
�
-transformer_block/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-transformer_block/layer_normalization_1/gamma
�
Atransformer_block/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp-transformer_block/layer_normalization_1/gamma*
_output_shapes
:@*
dtype0
�
,transformer_block/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,transformer_block/layer_normalization_1/beta
�
@transformer_block/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp,transformer_block/layer_normalization_1/beta*
_output_shapes
:@*
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
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/m
�
UAdam/transformer_block/multi_head_self_attention/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/m*
_output_shapes

:@@*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_1/bias/m
�
SAdam/transformer_block/multi_head_self_attention/dense_1/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_1/bias/m*
_output_shapes
:@*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/m
�
UAdam/transformer_block/multi_head_self_attention/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/m*
_output_shapes

:@@*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_2/bias/m
�
SAdam/transformer_block/multi_head_self_attention/dense_2/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_2/bias/m*
_output_shapes
:@*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/m
�
UAdam/transformer_block/multi_head_self_attention/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/m*
_output_shapes

:@@*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_3/bias/m
�
SAdam/transformer_block/multi_head_self_attention/dense_3/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_3/bias/m*
_output_shapes
:@*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_4/kernel/m
�
UAdam/transformer_block/multi_head_self_attention/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_4/kernel/m*
_output_shapes

:@@*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_4/bias/m
�
SAdam/transformer_block/multi_head_self_attention/dense_4/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_4/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*&
shared_nameAdam/dense_5/kernel/m
�
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	@�*
dtype0

Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_5/bias/m
x
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_6/kernel/m
�
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes
:	�@*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:@*
dtype0
�
2Adam/transformer_block/layer_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*C
shared_name42Adam/transformer_block/layer_normalization/gamma/m
�
FAdam/transformer_block/layer_normalization/gamma/m/Read/ReadVariableOpReadVariableOp2Adam/transformer_block/layer_normalization/gamma/m*
_output_shapes
:@*
dtype0
�
1Adam/transformer_block/layer_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31Adam/transformer_block/layer_normalization/beta/m
�
EAdam/transformer_block/layer_normalization/beta/m/Read/ReadVariableOpReadVariableOp1Adam/transformer_block/layer_normalization/beta/m*
_output_shapes
:@*
dtype0
�
4Adam/transformer_block/layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*E
shared_name64Adam/transformer_block/layer_normalization_1/gamma/m
�
HAdam/transformer_block/layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/transformer_block/layer_normalization_1/gamma/m*
_output_shapes
:@*
dtype0
�
3Adam/transformer_block/layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*D
shared_name53Adam/transformer_block/layer_normalization_1/beta/m
�
GAdam/transformer_block/layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp3Adam/transformer_block/layer_normalization_1/beta/m*
_output_shapes
:@*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/v
�
UAdam/transformer_block/multi_head_self_attention/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/v*
_output_shapes

:@@*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_1/bias/v
�
SAdam/transformer_block/multi_head_self_attention/dense_1/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_1/bias/v*
_output_shapes
:@*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/v
�
UAdam/transformer_block/multi_head_self_attention/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/v*
_output_shapes

:@@*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_2/bias/v
�
SAdam/transformer_block/multi_head_self_attention/dense_2/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_2/bias/v*
_output_shapes
:@*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/v
�
UAdam/transformer_block/multi_head_self_attention/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/v*
_output_shapes

:@@*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_3/bias/v
�
SAdam/transformer_block/multi_head_self_attention/dense_3/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_3/bias/v*
_output_shapes
:@*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_4/kernel/v
�
UAdam/transformer_block/multi_head_self_attention/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_4/kernel/v*
_output_shapes

:@@*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_4/bias/v
�
SAdam/transformer_block/multi_head_self_attention/dense_4/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_4/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*&
shared_nameAdam/dense_5/kernel/v
�
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	@�*
dtype0

Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_5/bias/v
x
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_6/kernel/v
�
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes
:	�@*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:@*
dtype0
�
2Adam/transformer_block/layer_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*C
shared_name42Adam/transformer_block/layer_normalization/gamma/v
�
FAdam/transformer_block/layer_normalization/gamma/v/Read/ReadVariableOpReadVariableOp2Adam/transformer_block/layer_normalization/gamma/v*
_output_shapes
:@*
dtype0
�
1Adam/transformer_block/layer_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31Adam/transformer_block/layer_normalization/beta/v
�
EAdam/transformer_block/layer_normalization/beta/v/Read/ReadVariableOpReadVariableOp1Adam/transformer_block/layer_normalization/beta/v*
_output_shapes
:@*
dtype0
�
4Adam/transformer_block/layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*E
shared_name64Adam/transformer_block/layer_normalization_1/gamma/v
�
HAdam/transformer_block/layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/transformer_block/layer_normalization_1/gamma/v*
_output_shapes
:@*
dtype0
�
3Adam/transformer_block/layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*D
shared_name53Adam/transformer_block/layer_normalization_1/beta/v
�
GAdam/transformer_block/layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp3Adam/transformer_block/layer_normalization_1/beta/v*
_output_shapes
:@*
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ݖ
valueҖBΖ BƖ
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�
	attention
ffn

layernorm1

layernorm2
dropout1
dropout2
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses*
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
�

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*
�
1iter

2beta_1

3beta_2
	4decay
5learning_ratem�m�)m�*m�6m�7m�8m�9m�:m�;m�<m�=m�>m�?m�@m�Am�Bm�Cm�Dm�Em�v�v�)v�*v�6v�7v�8v�9v�:v�;v�<v�=v�>v�?v�@v�Av�Bv�Cv�Dv�Ev�*
�
0
1
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
)18
*19*
�
0
1
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
)18
*19*
* 
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Kserving_default* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
�
Qwq
Rwk
Swv
Tcombine_heads
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses*
�
[layer_with_weights-0
[layer-0
\layer_with_weights-1
\layer-1
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses*
�
caxis
	Bgamma
Cbeta
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses*
�
jaxis
	Dgamma
Ebeta
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses*
�
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u_random_generator
v__call__
*w&call_and_return_all_conditional_losses* 
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|_random_generator
}__call__
*~&call_and_return_all_conditional_losses* 
z
60
71
82
93
:4
;5
<6
=7
>8
?9
@10
A11
B12
C13
D14
E15*
z
60
71
82
93
:4
;5
<6
=7
>8
?9
@10
A11
B12
C13
D14
E15*
* 
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

)0
*1*

)0
*1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
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
zt
VARIABLE_VALUE:transformer_block/multi_head_self_attention/dense_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block/multi_head_self_attention/dense_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block/multi_head_self_attention/dense_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block/multi_head_self_attention/dense_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block/multi_head_self_attention/dense_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block/multi_head_self_attention/dense_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block/multi_head_self_attention/dense_4/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block/multi_head_self_attention/dense_4/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_5/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_5/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_6/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_6/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+transformer_block/layer_normalization/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*transformer_block/layer_normalization/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-transformer_block/layer_normalization_1/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,transformer_block/layer_normalization_1/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
�

6kernel
7bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�

8kernel
9bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�

:kernel
;bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�

<kernel
=bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
<
60
71
82
93
:4
;5
<6
=7*
<
60
71
82
93
:4
;5
<6
=7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*
* 
* 
�

>kernel
?bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�

@kernel
Abias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
 
>0
?1
@2
A3*
 
>0
?1
@2
A3*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*
* 
* 
* 

B0
C1*

B0
C1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*
* 
* 
* 

D0
E1*

D0
E1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses* 
* 
* 
* 
* 
.
0
1
2
3
4
5*
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

�total

�count
�	variables
�	keras_api*
M

�total

�count
�
_fn_kwargs
�	variables
�	keras_api*

60
71*

60
71*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

80
91*

80
91*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

:0
;1*

:0
;1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

<0
=1*

<0
=1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
 
Q0
R1
S2
T3*
* 
* 
* 

>0
?1*

>0
?1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

@0
A1*

@0
A1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 

[0
\1*
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
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
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
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_3/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_4/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_4/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_5/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_5/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_6/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_6/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/transformer_block/layer_normalization/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1Adam/transformer_block/layer_normalization/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE4Adam/transformer_block/layer_normalization_1/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE3Adam/transformer_block/layer_normalization_1/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_3/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_4/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_4/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_5/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_5/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_6/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_6/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/transformer_block/layer_normalization/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1Adam/transformer_block/layer_normalization/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE4Adam/transformer_block/layer_normalization_1/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE3Adam/transformer_block/layer_normalization_1/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_input_1Placeholder*+
_output_shapes
:���������d*
dtype0* 
shape:���������d
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense/kernel
dense/bias:transformer_block/multi_head_self_attention/dense_1/kernel8transformer_block/multi_head_self_attention/dense_1/bias:transformer_block/multi_head_self_attention/dense_2/kernel8transformer_block/multi_head_self_attention/dense_2/bias:transformer_block/multi_head_self_attention/dense_3/kernel8transformer_block/multi_head_self_attention/dense_3/bias:transformer_block/multi_head_self_attention/dense_4/kernel8transformer_block/multi_head_self_attention/dense_4/bias+transformer_block/layer_normalization/gamma*transformer_block/layer_normalization/betadense_5/kerneldense_5/biasdense_6/kerneldense_6/bias-transformer_block/layer_normalization_1/gamma,transformer_block/layer_normalization_1/betadense_7/kerneldense_7/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_255966
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�"
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_1/kernel/Read/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_1/bias/Read/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_2/kernel/Read/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_2/bias/Read/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_3/kernel/Read/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_3/bias/Read/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_4/kernel/Read/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp?transformer_block/layer_normalization/gamma/Read/ReadVariableOp>transformer_block/layer_normalization/beta/Read/ReadVariableOpAtransformer_block/layer_normalization_1/gamma/Read/ReadVariableOp@transformer_block/layer_normalization_1/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_1/kernel/m/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_1/bias/m/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_2/kernel/m/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_2/bias/m/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_3/kernel/m/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_3/bias/m/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_4/kernel/m/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOpFAdam/transformer_block/layer_normalization/gamma/m/Read/ReadVariableOpEAdam/transformer_block/layer_normalization/beta/m/Read/ReadVariableOpHAdam/transformer_block/layer_normalization_1/gamma/m/Read/ReadVariableOpGAdam/transformer_block/layer_normalization_1/beta/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_1/kernel/v/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_1/bias/v/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_2/kernel/v/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_2/bias/v/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_3/kernel/v/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_3/bias/v/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_4/kernel/v/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOpFAdam/transformer_block/layer_normalization/gamma/v/Read/ReadVariableOpEAdam/transformer_block/layer_normalization/beta/v/Read/ReadVariableOpHAdam/transformer_block/layer_normalization_1/gamma/v/Read/ReadVariableOpGAdam/transformer_block/layer_normalization_1/beta/v/Read/ReadVariableOpConst*R
TinK
I2G	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_257053
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate:transformer_block/multi_head_self_attention/dense_1/kernel8transformer_block/multi_head_self_attention/dense_1/bias:transformer_block/multi_head_self_attention/dense_2/kernel8transformer_block/multi_head_self_attention/dense_2/bias:transformer_block/multi_head_self_attention/dense_3/kernel8transformer_block/multi_head_self_attention/dense_3/bias:transformer_block/multi_head_self_attention/dense_4/kernel8transformer_block/multi_head_self_attention/dense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/bias+transformer_block/layer_normalization/gamma*transformer_block/layer_normalization/beta-transformer_block/layer_normalization_1/gamma,transformer_block/layer_normalization_1/betatotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/m?Adam/transformer_block/multi_head_self_attention/dense_1/bias/mAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/m?Adam/transformer_block/multi_head_self_attention/dense_2/bias/mAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/m?Adam/transformer_block/multi_head_self_attention/dense_3/bias/mAAdam/transformer_block/multi_head_self_attention/dense_4/kernel/m?Adam/transformer_block/multi_head_self_attention/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/m2Adam/transformer_block/layer_normalization/gamma/m1Adam/transformer_block/layer_normalization/beta/m4Adam/transformer_block/layer_normalization_1/gamma/m3Adam/transformer_block/layer_normalization_1/beta/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/vAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/v?Adam/transformer_block/multi_head_self_attention/dense_1/bias/vAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/v?Adam/transformer_block/multi_head_self_attention/dense_2/bias/vAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/v?Adam/transformer_block/multi_head_self_attention/dense_3/bias/vAAdam/transformer_block/multi_head_self_attention/dense_4/kernel/v?Adam/transformer_block/multi_head_self_attention/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/v2Adam/transformer_block/layer_normalization/gamma/v1Adam/transformer_block/layer_normalization/beta/v4Adam/transformer_block/layer_normalization_1/gamma/v3Adam/transformer_block/layer_normalization_1/beta/v*Q
TinJ
H2F*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_257270�
�
U
9__inference_global_average_pooling1d_layer_call_fn_256578

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_254249i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
A__inference_model_layer_call_and_return_conditional_losses_254588

inputs
dense_254290:@
dense_254292:@*
transformer_block_254536:@@&
transformer_block_254538:@*
transformer_block_254540:@@&
transformer_block_254542:@*
transformer_block_254544:@@&
transformer_block_254546:@*
transformer_block_254548:@@&
transformer_block_254550:@&
transformer_block_254552:@&
transformer_block_254554:@+
transformer_block_254556:	@�'
transformer_block_254558:	�+
transformer_block_254560:	�@&
transformer_block_254562:@&
transformer_block_254564:@&
transformer_block_254566:@ 
dense_7_254582:@
dense_7_254584:
identity��dense/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�)transformer_block/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_254290dense_254292*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_254289�
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0transformer_block_254536transformer_block_254538transformer_block_254540transformer_block_254542transformer_block_254544transformer_block_254546transformer_block_254548transformer_block_254550transformer_block_254552transformer_block_254554transformer_block_254556transformer_block_254558transformer_block_254560transformer_block_254562transformer_block_254564transformer_block_254566*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_transformer_block_layer_call_and_return_conditional_losses_254535�
(global_average_pooling1d/PartitionedCallPartitionedCall2transformer_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_254249�
dense_7/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_7_254582dense_7_254584*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_254581w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d: : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�

�
C__inference_dense_7_layer_call_and_return_conditional_losses_256604

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_255310

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:	�@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:
identity��StatefulPartitionedCall�
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
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_254588o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
(__inference_dense_6_layer_call_fn_256793

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_254120s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������d�: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:���������d�
 
_user_specified_nameinputs
�
�
+__inference_sequential_layer_call_fn_254211
dense_5_input
unknown:	@�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_254187s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������d@
'
_user_specified_namedense_5_input
�
�
&__inference_model_layer_call_fn_255163
input_1
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:	�@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:
identity��StatefulPartitionedCall�
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
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_255075o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������d
!
_user_specified_name	input_1
�
�
$__inference_signature_wrapper_255966
input_1
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:	�@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:
identity��StatefulPartitionedCall�
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
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_254046o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������d
!
_user_specified_name	input_1
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_254127

inputs!
dense_5_254085:	@�
dense_5_254087:	�!
dense_6_254121:	�@
dense_6_254123:@
identity��dense_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�
dense_5/StatefulPartitionedCallStatefulPartitionedCallinputsdense_5_254085dense_5_254087*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������d�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_254084�
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_254121dense_6_254123*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_254120{
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d@�
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d@: : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
�
�
C__inference_dense_6_layer_call_and_return_conditional_losses_256823

inputs4
!tensordot_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:���������d��
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������d@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������d�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:���������d�
 
_user_specified_nameinputs
�
�
(__inference_dense_5_layer_call_fn_256753

inputs
unknown:	@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������d�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_254084t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������d�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
�>
�
F__inference_sequential_layer_call_and_return_conditional_losses_256744

inputs<
)dense_5_tensordot_readvariableop_resource:	@�6
'dense_5_biasadd_readvariableop_resource:	�<
)dense_6_tensordot_readvariableop_resource:	�@5
'dense_6_biasadd_readvariableop_resource:@
identity��dense_5/BiasAdd/ReadVariableOp� dense_5/Tensordot/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp� dense_6/Tensordot/ReadVariableOp�
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_5/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/transpose	Transposeinputs!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������d��
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������d�e
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*,
_output_shapes
:���������d��
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_6/Tensordot/ShapeShapedense_5/Relu:activations:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_6/Tensordot/transpose	Transposedense_5/Relu:activations:0!dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:���������d��
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@c
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@a
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@k
IdentityIdentitydense_6/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������d@�
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d@: : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
��
�
M__inference_transformer_block_layer_call_and_return_conditional_losses_254535

inputsU
Cmulti_head_self_attention_dense_1_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_1_biasadd_readvariableop_resource:@U
Cmulti_head_self_attention_dense_2_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_2_biasadd_readvariableop_resource:@U
Cmulti_head_self_attention_dense_3_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_3_biasadd_readvariableop_resource:@U
Cmulti_head_self_attention_dense_4_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_4_biasadd_readvariableop_resource:@G
9layer_normalization_batchnorm_mul_readvariableop_resource:@C
5layer_normalization_batchnorm_readvariableop_resource:@G
4sequential_dense_5_tensordot_readvariableop_resource:	@�A
2sequential_dense_5_biasadd_readvariableop_resource:	�G
4sequential_dense_6_tensordot_readvariableop_resource:	�@@
2sequential_dense_6_biasadd_readvariableop_resource:@I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_1_batchnorm_readvariableop_resource:@
identity��,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_4/Tensordot/ReadVariableOp�)sequential/dense_5/BiasAdd/ReadVariableOp�+sequential/dense_5/Tensordot/ReadVariableOp�)sequential/dense_6/BiasAdd/ReadVariableOp�+sequential/dense_6/Tensordot/ReadVariableOpU
multi_head_self_attention/ShapeShapeinputs*
T0*
_output_shapes
:w
-multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'multi_head_self_attention/strided_sliceStridedSlice(multi_head_self_attention/Shape:output:06multi_head_self_attention/strided_slice/stack:output:08multi_head_self_attention/strided_slice/stack_1:output:08multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_1_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_1/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/free:output:0Bmulti_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0Dmulti_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_1/Tensordot/ProdProd=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_1/Tensordot/Prod_1Prod?multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_1/Tensordot/concatConcatV29multi_head_self_attention/dense_1/Tensordot/free:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0@multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_1/Tensordot/stackPack9multi_head_self_attention/dense_1/Tensordot/Prod:output:0;multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_1/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
3multi_head_self_attention/dense_1/Tensordot/ReshapeReshape9multi_head_self_attention/dense_1/Tensordot/transpose:y:0:multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_1/Tensordot/MatMulMatMul<multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_1/TensordotReshape<multi_head_self_attention/dense_1/Tensordot/MatMul:product:0=multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_1/BiasAddBiasAdd4multi_head_self_attention/dense_1/Tensordot:output:0@multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_2/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/free:output:0Bmulti_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0Dmulti_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_2/Tensordot/ProdProd=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_2/Tensordot/Prod_1Prod?multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_2/Tensordot/concatConcatV29multi_head_self_attention/dense_2/Tensordot/free:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0@multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_2/Tensordot/stackPack9multi_head_self_attention/dense_2/Tensordot/Prod:output:0;multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_2/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
3multi_head_self_attention/dense_2/Tensordot/ReshapeReshape9multi_head_self_attention/dense_2/Tensordot/transpose:y:0:multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_2/Tensordot/MatMulMatMul<multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_2/TensordotReshape<multi_head_self_attention/dense_2/Tensordot/MatMul:product:0=multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_2/BiasAddBiasAdd4multi_head_self_attention/dense_2/Tensordot:output:0@multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_3/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/free:output:0Bmulti_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0Dmulti_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_3/Tensordot/ProdProd=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_3/Tensordot/Prod_1Prod?multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_3/Tensordot/concatConcatV29multi_head_self_attention/dense_3/Tensordot/free:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0@multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_3/Tensordot/stackPack9multi_head_self_attention/dense_3/Tensordot/Prod:output:0;multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_3/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
3multi_head_self_attention/dense_3/Tensordot/ReshapeReshape9multi_head_self_attention/dense_3/Tensordot/transpose:y:0:multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_3/Tensordot/MatMulMatMul<multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_3/TensordotReshape<multi_head_self_attention/dense_3/Tensordot/MatMul:product:0=multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_3/BiasAddBiasAdd4multi_head_self_attention/dense_3/Tensordot:output:0@multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@t
)multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������k
)multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :k
)multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
'multi_head_self_attention/Reshape/shapePack0multi_head_self_attention/strided_slice:output:02multi_head_self_attention/Reshape/shape/1:output:02multi_head_self_attention/Reshape/shape/2:output:02multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
!multi_head_self_attention/ReshapeReshape2multi_head_self_attention/dense_1/BiasAdd:output:00multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
(multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
#multi_head_self_attention/transpose	Transpose*multi_head_self_attention/Reshape:output:01multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"������������������v
+multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
)multi_head_self_attention/Reshape_1/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_1/shape/1:output:04multi_head_self_attention/Reshape_1/shape/2:output:04multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_1Reshape2multi_head_self_attention/dense_2/BiasAdd:output:02multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
*multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_1	Transpose,multi_head_self_attention/Reshape_1:output:03multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"������������������v
+multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
)multi_head_self_attention/Reshape_2/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_2/shape/1:output:04multi_head_self_attention/Reshape_2/shape/2:output:04multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_2Reshape2multi_head_self_attention/dense_3/BiasAdd:output:02multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
*multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_2	Transpose,multi_head_self_attention/Reshape_2:output:03multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
 multi_head_self_attention/MatMulBatchMatMulV2'multi_head_self_attention/transpose:y:0)multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(b
 multi_head_self_attention/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
multi_head_self_attention/CastCast)multi_head_self_attention/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: k
multi_head_self_attention/SqrtSqrt"multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
!multi_head_self_attention/truedivRealDiv)multi_head_self_attention/MatMul:output:0"multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
!multi_head_self_attention/SoftmaxSoftmax%multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
"multi_head_self_attention/MatMul_1BatchMatMulV2+multi_head_self_attention/Softmax:softmax:0)multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"�������������������
*multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_3	Transpose+multi_head_self_attention/MatMul_1:output:03multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"������������������v
+multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
)multi_head_self_attention/Reshape_3/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_3/shape/1:output:04multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_3Reshape)multi_head_self_attention/transpose_3:y:02multi_head_self_attention/Reshape_3/shape:output:0*
T0*4
_output_shapes"
 :������������������@�
:multi_head_self_attention/dense_4/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
1multi_head_self_attention/dense_4/Tensordot/ShapeShape,multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_4/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_4/Tensordot/Shape:output:09multi_head_self_attention/dense_4/Tensordot/free:output:0Bmulti_head_self_attention/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_4/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_4/Tensordot/Shape:output:09multi_head_self_attention/dense_4/Tensordot/axes:output:0Dmulti_head_self_attention/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_4/Tensordot/ProdProd=multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_4/Tensordot/Prod_1Prod?multi_head_self_attention/dense_4/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_4/Tensordot/concatConcatV29multi_head_self_attention/dense_4/Tensordot/free:output:09multi_head_self_attention/dense_4/Tensordot/axes:output:0@multi_head_self_attention/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_4/Tensordot/stackPack9multi_head_self_attention/dense_4/Tensordot/Prod:output:0;multi_head_self_attention/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_4/Tensordot/transpose	Transpose,multi_head_self_attention/Reshape_3:output:0;multi_head_self_attention/dense_4/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������@�
3multi_head_self_attention/dense_4/Tensordot/ReshapeReshape9multi_head_self_attention/dense_4/Tensordot/transpose:y:0:multi_head_self_attention/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_4/Tensordot/MatMulMatMul<multi_head_self_attention/dense_4/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_4/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_4/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_4/TensordotReshape<multi_head_self_attention/dense_4/Tensordot/MatMul:product:0=multi_head_self_attention/dense_4/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������@�
8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_4/BiasAddBiasAdd4multi_head_self_attention/dense_4/Tensordot:output:0@multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������@�
dropout/IdentityIdentity2multi_head_self_attention/dense_4/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������@e
addAddV2inputsdropout/Identity:output:0*
T0*+
_output_shapes
:���������d@|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@�
+sequential/dense_5/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0k
!sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
"sequential/dense_5/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:l
*sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/GatherV2GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/free:output:03sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_5/Tensordot/GatherV2_1GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/axes:output:05sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_5/Tensordot/ProdProd.sequential/dense_5/Tensordot/GatherV2:output:0+sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_5/Tensordot/Prod_1Prod0sequential/dense_5/Tensordot/GatherV2_1:output:0-sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_5/Tensordot/concatConcatV2*sequential/dense_5/Tensordot/free:output:0*sequential/dense_5/Tensordot/axes:output:01sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_5/Tensordot/stackPack*sequential/dense_5/Tensordot/Prod:output:0,sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_5/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0,sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
$sequential/dense_5/Tensordot/ReshapeReshape*sequential/dense_5/Tensordot/transpose:y:0+sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_5/Tensordot/MatMulMatMul-sequential/dense_5/Tensordot/Reshape:output:03sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
$sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�l
*sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/concat_1ConcatV2.sequential/dense_5/Tensordot/GatherV2:output:0-sequential/dense_5/Tensordot/Const_2:output:03sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_5/TensordotReshape-sequential/dense_5/Tensordot/MatMul:product:0.sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������d��
)sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_5/BiasAddBiasAdd%sequential/dense_5/Tensordot:output:01sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������d�{
sequential/dense_5/ReluRelu#sequential/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:���������d��
+sequential/dense_6/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_6_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0k
!sequential/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
"sequential/dense_6/Tensordot/ShapeShape%sequential/dense_5/Relu:activations:0*
T0*
_output_shapes
:l
*sequential/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_6/Tensordot/GatherV2GatherV2+sequential/dense_6/Tensordot/Shape:output:0*sequential/dense_6/Tensordot/free:output:03sequential/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_6/Tensordot/GatherV2_1GatherV2+sequential/dense_6/Tensordot/Shape:output:0*sequential/dense_6/Tensordot/axes:output:05sequential/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_6/Tensordot/ProdProd.sequential/dense_6/Tensordot/GatherV2:output:0+sequential/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_6/Tensordot/Prod_1Prod0sequential/dense_6/Tensordot/GatherV2_1:output:0-sequential/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_6/Tensordot/concatConcatV2*sequential/dense_6/Tensordot/free:output:0*sequential/dense_6/Tensordot/axes:output:01sequential/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_6/Tensordot/stackPack*sequential/dense_6/Tensordot/Prod:output:0,sequential/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_6/Tensordot/transpose	Transpose%sequential/dense_5/Relu:activations:0,sequential/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:���������d��
$sequential/dense_6/Tensordot/ReshapeReshape*sequential/dense_6/Tensordot/transpose:y:0+sequential/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_6/Tensordot/MatMulMatMul-sequential/dense_6/Tensordot/Reshape:output:03sequential/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@n
$sequential/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@l
*sequential/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_6/Tensordot/concat_1ConcatV2.sequential/dense_6/Tensordot/GatherV2:output:0-sequential/dense_6/Tensordot/Const_2:output:03sequential/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_6/TensordotReshape-sequential/dense_6/Tensordot/MatMul:product:0.sequential/dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
)sequential/dense_6/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/dense_6/BiasAddBiasAdd%sequential/dense_6/Tensordot:output:01sequential/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@y
dropout_1/IdentityIdentity#sequential/dense_6/BiasAdd:output:0*
T0*+
_output_shapes
:���������d@�
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*+
_output_shapes
:���������d@~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@|
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:���������d@�
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_1/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_2/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_3/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_4/Tensordot/ReadVariableOp*^sequential/dense_5/BiasAdd/ReadVariableOp,^sequential/dense_5/Tensordot/ReadVariableOp*^sequential/dense_6/BiasAdd/ReadVariableOp,^sequential/dense_6/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������d@: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_4/Tensordot/ReadVariableOp:multi_head_self_attention/dense_4/Tensordot/ReadVariableOp2V
)sequential/dense_5/BiasAdd/ReadVariableOp)sequential/dense_5/BiasAdd/ReadVariableOp2Z
+sequential/dense_5/Tensordot/ReadVariableOp+sequential/dense_5/Tensordot/ReadVariableOp2V
)sequential/dense_6/BiasAdd/ReadVariableOp)sequential/dense_6/BiasAdd/ReadVariableOp2Z
+sequential/dense_6/Tensordot/ReadVariableOp+sequential/dense_6/Tensordot/ReadVariableOp:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
�
�
2__inference_transformer_block_layer_call_fn_256042

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:	@�

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_transformer_block_layer_call_and_return_conditional_losses_254535s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������d@: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
��
�
M__inference_transformer_block_layer_call_and_return_conditional_losses_254935

inputsU
Cmulti_head_self_attention_dense_1_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_1_biasadd_readvariableop_resource:@U
Cmulti_head_self_attention_dense_2_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_2_biasadd_readvariableop_resource:@U
Cmulti_head_self_attention_dense_3_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_3_biasadd_readvariableop_resource:@U
Cmulti_head_self_attention_dense_4_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_4_biasadd_readvariableop_resource:@G
9layer_normalization_batchnorm_mul_readvariableop_resource:@C
5layer_normalization_batchnorm_readvariableop_resource:@G
4sequential_dense_5_tensordot_readvariableop_resource:	@�A
2sequential_dense_5_biasadd_readvariableop_resource:	�G
4sequential_dense_6_tensordot_readvariableop_resource:	�@@
2sequential_dense_6_biasadd_readvariableop_resource:@I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_1_batchnorm_readvariableop_resource:@
identity��,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_4/Tensordot/ReadVariableOp�)sequential/dense_5/BiasAdd/ReadVariableOp�+sequential/dense_5/Tensordot/ReadVariableOp�)sequential/dense_6/BiasAdd/ReadVariableOp�+sequential/dense_6/Tensordot/ReadVariableOpU
multi_head_self_attention/ShapeShapeinputs*
T0*
_output_shapes
:w
-multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'multi_head_self_attention/strided_sliceStridedSlice(multi_head_self_attention/Shape:output:06multi_head_self_attention/strided_slice/stack:output:08multi_head_self_attention/strided_slice/stack_1:output:08multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_1_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_1/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/free:output:0Bmulti_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0Dmulti_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_1/Tensordot/ProdProd=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_1/Tensordot/Prod_1Prod?multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_1/Tensordot/concatConcatV29multi_head_self_attention/dense_1/Tensordot/free:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0@multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_1/Tensordot/stackPack9multi_head_self_attention/dense_1/Tensordot/Prod:output:0;multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_1/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
3multi_head_self_attention/dense_1/Tensordot/ReshapeReshape9multi_head_self_attention/dense_1/Tensordot/transpose:y:0:multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_1/Tensordot/MatMulMatMul<multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_1/TensordotReshape<multi_head_self_attention/dense_1/Tensordot/MatMul:product:0=multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_1/BiasAddBiasAdd4multi_head_self_attention/dense_1/Tensordot:output:0@multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_2/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/free:output:0Bmulti_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0Dmulti_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_2/Tensordot/ProdProd=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_2/Tensordot/Prod_1Prod?multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_2/Tensordot/concatConcatV29multi_head_self_attention/dense_2/Tensordot/free:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0@multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_2/Tensordot/stackPack9multi_head_self_attention/dense_2/Tensordot/Prod:output:0;multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_2/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
3multi_head_self_attention/dense_2/Tensordot/ReshapeReshape9multi_head_self_attention/dense_2/Tensordot/transpose:y:0:multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_2/Tensordot/MatMulMatMul<multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_2/TensordotReshape<multi_head_self_attention/dense_2/Tensordot/MatMul:product:0=multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_2/BiasAddBiasAdd4multi_head_self_attention/dense_2/Tensordot:output:0@multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_3/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/free:output:0Bmulti_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0Dmulti_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_3/Tensordot/ProdProd=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_3/Tensordot/Prod_1Prod?multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_3/Tensordot/concatConcatV29multi_head_self_attention/dense_3/Tensordot/free:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0@multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_3/Tensordot/stackPack9multi_head_self_attention/dense_3/Tensordot/Prod:output:0;multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_3/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
3multi_head_self_attention/dense_3/Tensordot/ReshapeReshape9multi_head_self_attention/dense_3/Tensordot/transpose:y:0:multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_3/Tensordot/MatMulMatMul<multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_3/TensordotReshape<multi_head_self_attention/dense_3/Tensordot/MatMul:product:0=multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_3/BiasAddBiasAdd4multi_head_self_attention/dense_3/Tensordot:output:0@multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@t
)multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������k
)multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :k
)multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
'multi_head_self_attention/Reshape/shapePack0multi_head_self_attention/strided_slice:output:02multi_head_self_attention/Reshape/shape/1:output:02multi_head_self_attention/Reshape/shape/2:output:02multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
!multi_head_self_attention/ReshapeReshape2multi_head_self_attention/dense_1/BiasAdd:output:00multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
(multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
#multi_head_self_attention/transpose	Transpose*multi_head_self_attention/Reshape:output:01multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"������������������v
+multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
)multi_head_self_attention/Reshape_1/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_1/shape/1:output:04multi_head_self_attention/Reshape_1/shape/2:output:04multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_1Reshape2multi_head_self_attention/dense_2/BiasAdd:output:02multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
*multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_1	Transpose,multi_head_self_attention/Reshape_1:output:03multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"������������������v
+multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
)multi_head_self_attention/Reshape_2/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_2/shape/1:output:04multi_head_self_attention/Reshape_2/shape/2:output:04multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_2Reshape2multi_head_self_attention/dense_3/BiasAdd:output:02multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
*multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_2	Transpose,multi_head_self_attention/Reshape_2:output:03multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
 multi_head_self_attention/MatMulBatchMatMulV2'multi_head_self_attention/transpose:y:0)multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(b
 multi_head_self_attention/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
multi_head_self_attention/CastCast)multi_head_self_attention/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: k
multi_head_self_attention/SqrtSqrt"multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
!multi_head_self_attention/truedivRealDiv)multi_head_self_attention/MatMul:output:0"multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
!multi_head_self_attention/SoftmaxSoftmax%multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
"multi_head_self_attention/MatMul_1BatchMatMulV2+multi_head_self_attention/Softmax:softmax:0)multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"�������������������
*multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_3	Transpose+multi_head_self_attention/MatMul_1:output:03multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"������������������v
+multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
)multi_head_self_attention/Reshape_3/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_3/shape/1:output:04multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_3Reshape)multi_head_self_attention/transpose_3:y:02multi_head_self_attention/Reshape_3/shape:output:0*
T0*4
_output_shapes"
 :������������������@�
:multi_head_self_attention/dense_4/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
1multi_head_self_attention/dense_4/Tensordot/ShapeShape,multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_4/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_4/Tensordot/Shape:output:09multi_head_self_attention/dense_4/Tensordot/free:output:0Bmulti_head_self_attention/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_4/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_4/Tensordot/Shape:output:09multi_head_self_attention/dense_4/Tensordot/axes:output:0Dmulti_head_self_attention/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_4/Tensordot/ProdProd=multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_4/Tensordot/Prod_1Prod?multi_head_self_attention/dense_4/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_4/Tensordot/concatConcatV29multi_head_self_attention/dense_4/Tensordot/free:output:09multi_head_self_attention/dense_4/Tensordot/axes:output:0@multi_head_self_attention/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_4/Tensordot/stackPack9multi_head_self_attention/dense_4/Tensordot/Prod:output:0;multi_head_self_attention/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_4/Tensordot/transpose	Transpose,multi_head_self_attention/Reshape_3:output:0;multi_head_self_attention/dense_4/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������@�
3multi_head_self_attention/dense_4/Tensordot/ReshapeReshape9multi_head_self_attention/dense_4/Tensordot/transpose:y:0:multi_head_self_attention/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_4/Tensordot/MatMulMatMul<multi_head_self_attention/dense_4/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_4/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_4/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_4/TensordotReshape<multi_head_self_attention/dense_4/Tensordot/MatMul:product:0=multi_head_self_attention/dense_4/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������@�
8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_4/BiasAddBiasAdd4multi_head_self_attention/dense_4/Tensordot:output:0@multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������@Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout/dropout/MulMul2multi_head_self_attention/dense_4/BiasAdd:output:0dropout/dropout/Const:output:0*
T0*4
_output_shapes"
 :������������������@w
dropout/dropout/ShapeShape2multi_head_self_attention/dense_4/BiasAdd:output:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*4
_output_shapes"
 :������������������@*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������@�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������@�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*4
_output_shapes"
 :������������������@e
addAddV2inputsdropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:���������d@|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@�
+sequential/dense_5/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0k
!sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
"sequential/dense_5/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:l
*sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/GatherV2GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/free:output:03sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_5/Tensordot/GatherV2_1GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/axes:output:05sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_5/Tensordot/ProdProd.sequential/dense_5/Tensordot/GatherV2:output:0+sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_5/Tensordot/Prod_1Prod0sequential/dense_5/Tensordot/GatherV2_1:output:0-sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_5/Tensordot/concatConcatV2*sequential/dense_5/Tensordot/free:output:0*sequential/dense_5/Tensordot/axes:output:01sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_5/Tensordot/stackPack*sequential/dense_5/Tensordot/Prod:output:0,sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_5/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0,sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
$sequential/dense_5/Tensordot/ReshapeReshape*sequential/dense_5/Tensordot/transpose:y:0+sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_5/Tensordot/MatMulMatMul-sequential/dense_5/Tensordot/Reshape:output:03sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
$sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�l
*sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/concat_1ConcatV2.sequential/dense_5/Tensordot/GatherV2:output:0-sequential/dense_5/Tensordot/Const_2:output:03sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_5/TensordotReshape-sequential/dense_5/Tensordot/MatMul:product:0.sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������d��
)sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_5/BiasAddBiasAdd%sequential/dense_5/Tensordot:output:01sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������d�{
sequential/dense_5/ReluRelu#sequential/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:���������d��
+sequential/dense_6/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_6_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0k
!sequential/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
"sequential/dense_6/Tensordot/ShapeShape%sequential/dense_5/Relu:activations:0*
T0*
_output_shapes
:l
*sequential/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_6/Tensordot/GatherV2GatherV2+sequential/dense_6/Tensordot/Shape:output:0*sequential/dense_6/Tensordot/free:output:03sequential/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_6/Tensordot/GatherV2_1GatherV2+sequential/dense_6/Tensordot/Shape:output:0*sequential/dense_6/Tensordot/axes:output:05sequential/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_6/Tensordot/ProdProd.sequential/dense_6/Tensordot/GatherV2:output:0+sequential/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_6/Tensordot/Prod_1Prod0sequential/dense_6/Tensordot/GatherV2_1:output:0-sequential/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_6/Tensordot/concatConcatV2*sequential/dense_6/Tensordot/free:output:0*sequential/dense_6/Tensordot/axes:output:01sequential/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_6/Tensordot/stackPack*sequential/dense_6/Tensordot/Prod:output:0,sequential/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_6/Tensordot/transpose	Transpose%sequential/dense_5/Relu:activations:0,sequential/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:���������d��
$sequential/dense_6/Tensordot/ReshapeReshape*sequential/dense_6/Tensordot/transpose:y:0+sequential/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_6/Tensordot/MatMulMatMul-sequential/dense_6/Tensordot/Reshape:output:03sequential/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@n
$sequential/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@l
*sequential/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_6/Tensordot/concat_1ConcatV2.sequential/dense_6/Tensordot/GatherV2:output:0-sequential/dense_6/Tensordot/Const_2:output:03sequential/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_6/TensordotReshape-sequential/dense_6/Tensordot/MatMul:product:0.sequential/dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
)sequential/dense_6/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/dense_6/BiasAddBiasAdd%sequential/dense_6/Tensordot:output:01sequential/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout_1/dropout/MulMul#sequential/dense_6/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:���������d@j
dropout_1/dropout/ShapeShape#sequential/dense_6/BiasAdd:output:0*
T0*
_output_shapes
:�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:���������d@*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������d@�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������d@�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:���������d@�
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:���������d@~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@|
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:���������d@�
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_1/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_2/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_3/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_4/Tensordot/ReadVariableOp*^sequential/dense_5/BiasAdd/ReadVariableOp,^sequential/dense_5/Tensordot/ReadVariableOp*^sequential/dense_6/BiasAdd/ReadVariableOp,^sequential/dense_6/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������d@: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_4/Tensordot/ReadVariableOp:multi_head_self_attention/dense_4/Tensordot/ReadVariableOp2V
)sequential/dense_5/BiasAdd/ReadVariableOp)sequential/dense_5/BiasAdd/ReadVariableOp2Z
+sequential/dense_5/Tensordot/ReadVariableOp+sequential/dense_5/Tensordot/ReadVariableOp2V
)sequential/dense_6/BiasAdd/ReadVariableOp)sequential/dense_6/BiasAdd/ReadVariableOp2Z
+sequential/dense_6/Tensordot/ReadVariableOp+sequential/dense_6/Tensordot/ReadVariableOp:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_254187

inputs!
dense_5_254176:	@�
dense_5_254178:	�!
dense_6_254181:	�@
dense_6_254183:@
identity��dense_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�
dense_5/StatefulPartitionedCallStatefulPartitionedCallinputsdense_5_254176dense_5_254178*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������d�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_254084�
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_254181dense_6_254183*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_254120{
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d@�
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d@: : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
�
p
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_256584

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_255355

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:	�@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:
identity��StatefulPartitionedCall�
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
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_255075o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
A__inference_model_layer_call_and_return_conditional_losses_255259
input_1
dense_255214:@
dense_255216:@*
transformer_block_255219:@@&
transformer_block_255221:@*
transformer_block_255223:@@&
transformer_block_255225:@*
transformer_block_255227:@@&
transformer_block_255229:@*
transformer_block_255231:@@&
transformer_block_255233:@&
transformer_block_255235:@&
transformer_block_255237:@+
transformer_block_255239:	@�'
transformer_block_255241:	�+
transformer_block_255243:	�@&
transformer_block_255245:@&
transformer_block_255247:@&
transformer_block_255249:@ 
dense_7_255253:@
dense_7_255255:
identity��dense/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�)transformer_block/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_255214dense_255216*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_254289�
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0transformer_block_255219transformer_block_255221transformer_block_255223transformer_block_255225transformer_block_255227transformer_block_255229transformer_block_255231transformer_block_255233transformer_block_255235transformer_block_255237transformer_block_255239transformer_block_255241transformer_block_255243transformer_block_255245transformer_block_255247transformer_block_255249*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_transformer_block_layer_call_and_return_conditional_losses_254935�
(global_average_pooling1d/PartitionedCallPartitionedCall2transformer_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_254249�
dense_7/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_7_255253dense_7_255255*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_254581w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d: : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall:T P
+
_output_shapes
:���������d
!
_user_specified_name	input_1
��
�
A__inference_model_layer_call_and_return_conditional_losses_255630

inputs9
'dense_tensordot_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:@g
Utransformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource:@@a
Stransformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource:@g
Utransformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource:@@a
Stransformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource:@g
Utransformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource:@@a
Stransformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource:@g
Utransformer_block_multi_head_self_attention_dense_4_tensordot_readvariableop_resource:@@a
Stransformer_block_multi_head_self_attention_dense_4_biasadd_readvariableop_resource:@Y
Ktransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource:@U
Gtransformer_block_layer_normalization_batchnorm_readvariableop_resource:@Y
Ftransformer_block_sequential_dense_5_tensordot_readvariableop_resource:	@�S
Dtransformer_block_sequential_dense_5_biasadd_readvariableop_resource:	�Y
Ftransformer_block_sequential_dense_6_tensordot_readvariableop_resource:	�@R
Dtransformer_block_sequential_dense_6_biasadd_readvariableop_resource:@[
Mtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource:@W
Itransformer_block_layer_normalization_1_batchnorm_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�>transformer_block/layer_normalization/batchnorm/ReadVariableOp�Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp�@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp�Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOp�;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp�=transformer_block/sequential/dense_5/Tensordot/ReadVariableOp�;transformer_block/sequential/dense_6/BiasAdd/ReadVariableOp�=transformer_block/sequential/dense_6/Tensordot/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       K
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d�
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@w
1transformer_block/multi_head_self_attention/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:�
?transformer_block/multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Atransformer_block/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Atransformer_block/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9transformer_block/multi_head_self_attention/strided_sliceStridedSlice:transformer_block/multi_head_self_attention/Shape:output:0Htransformer_block/multi_head_self_attention/strided_slice/stack:output:0Jtransformer_block/multi_head_self_attention/strided_slice/stack_1:output:0Jtransformer_block/multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0�
Btransformer_block/multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_1/Tensordot/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_1/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_1/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_1/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_1/Tensordot/transpose	Transposedense/BiasAdd:output:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
Etransformer_block/multi_head_self_attention/dense_1/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_1/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Etransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_1/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_1/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
Jtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
;transformer_block/multi_head_self_attention/dense_1/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_1/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0�
Btransformer_block/multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_2/Tensordot/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_2/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_2/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_2/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_2/Tensordot/transpose	Transposedense/BiasAdd:output:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
Etransformer_block/multi_head_self_attention/dense_2/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_2/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Etransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_2/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_2/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
Jtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
;transformer_block/multi_head_self_attention/dense_2/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_2/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0�
Btransformer_block/multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_3/Tensordot/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_3/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_3/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_3/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_3/Tensordot/transpose	Transposedense/BiasAdd:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
Etransformer_block/multi_head_self_attention/dense_3/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_3/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Etransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_3/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_3/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
Jtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
;transformer_block/multi_head_self_attention/dense_3/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_3/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
;transformer_block/multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������}
;transformer_block/multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :}
;transformer_block/multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
9transformer_block/multi_head_self_attention/Reshape/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Dtransformer_block/multi_head_self_attention/Reshape/shape/1:output:0Dtransformer_block/multi_head_self_attention/Reshape/shape/2:output:0Dtransformer_block/multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
3transformer_block/multi_head_self_attention/ReshapeReshapeDtransformer_block/multi_head_self_attention/dense_1/BiasAdd:output:0Btransformer_block/multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
:transformer_block/multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
5transformer_block/multi_head_self_attention/transpose	Transpose<transformer_block/multi_head_self_attention/Reshape:output:0Ctransformer_block/multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
=transformer_block/multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
;transformer_block/multi_head_self_attention/Reshape_1/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Ftransformer_block/multi_head_self_attention/Reshape_1/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_1/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_1ReshapeDtransformer_block/multi_head_self_attention/dense_2/BiasAdd:output:0Dtransformer_block/multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
<transformer_block/multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_1	Transpose>transformer_block/multi_head_self_attention/Reshape_1:output:0Etransformer_block/multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
=transformer_block/multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
;transformer_block/multi_head_self_attention/Reshape_2/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Ftransformer_block/multi_head_self_attention/Reshape_2/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_2/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_2ReshapeDtransformer_block/multi_head_self_attention/dense_3/BiasAdd:output:0Dtransformer_block/multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
<transformer_block/multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_2	Transpose>transformer_block/multi_head_self_attention/Reshape_2:output:0Etransformer_block/multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
2transformer_block/multi_head_self_attention/MatMulBatchMatMulV29transformer_block/multi_head_self_attention/transpose:y:0;transformer_block/multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(t
2transformer_block/multi_head_self_attention/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
0transformer_block/multi_head_self_attention/CastCast;transformer_block/multi_head_self_attention/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0transformer_block/multi_head_self_attention/SqrtSqrt4transformer_block/multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
3transformer_block/multi_head_self_attention/truedivRealDiv;transformer_block/multi_head_self_attention/MatMul:output:04transformer_block/multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
3transformer_block/multi_head_self_attention/SoftmaxSoftmax7transformer_block/multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
4transformer_block/multi_head_self_attention/MatMul_1BatchMatMulV2=transformer_block/multi_head_self_attention/Softmax:softmax:0;transformer_block/multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"�������������������
<transformer_block/multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_3	Transpose=transformer_block/multi_head_self_attention/MatMul_1:output:0Etransformer_block/multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
=transformer_block/multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
;transformer_block/multi_head_self_attention/Reshape_3/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Ftransformer_block/multi_head_self_attention/Reshape_3/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_3Reshape;transformer_block/multi_head_self_attention/transpose_3:y:0Dtransformer_block/multi_head_self_attention/Reshape_3/shape:output:0*
T0*4
_output_shapes"
 :������������������@�
Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0�
Btransformer_block/multi_head_self_attention/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_4/Tensordot/ShapeShape>transformer_block/multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_4/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_4/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_4/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_4/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_4/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_4/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_4/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_4/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_4/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_4/Tensordot/transpose	Transpose>transformer_block/multi_head_self_attention/Reshape_3:output:0Mtransformer_block/multi_head_self_attention/dense_4/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������@�
Etransformer_block/multi_head_self_attention/dense_4/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_4/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_4/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_4/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Etransformer_block/multi_head_self_attention/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Ktransformer_block/multi_head_self_attention/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_4/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_4/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_4/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_4/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_4/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������@�
Jtransformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
;transformer_block/multi_head_self_attention/dense_4/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_4/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������@�
"transformer_block/dropout/IdentityIdentityDtransformer_block/multi_head_self_attention/dense_4/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������@�
transformer_block/addAddV2dense/BiasAdd:output:0+transformer_block/dropout/Identity:output:0*
T0*+
_output_shapes
:���������d@�
Dtransformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
2transformer_block/layer_normalization/moments/meanMeantransformer_block/add:z:0Mtransformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
:transformer_block/layer_normalization/moments/StopGradientStopGradient;transformer_block/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
?transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_block/add:z:0Ctransformer_block/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
Htransformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
6transformer_block/layer_normalization/moments/varianceMeanCtransformer_block/layer_normalization/moments/SquaredDifference:z:0Qtransformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(z
5transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
3transformer_block/layer_normalization/batchnorm/addAddV2?transformer_block/layer_normalization/moments/variance:output:0>transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
5transformer_block/layer_normalization/batchnorm/RsqrtRsqrt7transformer_block/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
3transformer_block/layer_normalization/batchnorm/mulMul9transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Jtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
5transformer_block/layer_normalization/batchnorm/mul_1Multransformer_block/add:z:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
5transformer_block/layer_normalization/batchnorm/mul_2Mul;transformer_block/layer_normalization/moments/mean:output:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
>transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
3transformer_block/layer_normalization/batchnorm/subSubFtransformer_block/layer_normalization/batchnorm/ReadVariableOp:value:09transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
5transformer_block/layer_normalization/batchnorm/add_1AddV29transformer_block/layer_normalization/batchnorm/mul_1:z:07transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@�
=transformer_block/sequential/dense_5/Tensordot/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0}
3transformer_block/sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
3transformer_block/sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
4transformer_block/sequential/dense_5/Tensordot/ShapeShape9transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:~
<transformer_block/sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_5/Tensordot/GatherV2GatherV2=transformer_block/sequential/dense_5/Tensordot/Shape:output:0<transformer_block/sequential/dense_5/Tensordot/free:output:0Etransformer_block/sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
>transformer_block/sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_5/Tensordot/GatherV2_1GatherV2=transformer_block/sequential/dense_5/Tensordot/Shape:output:0<transformer_block/sequential/dense_5/Tensordot/axes:output:0Gtransformer_block/sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4transformer_block/sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
3transformer_block/sequential/dense_5/Tensordot/ProdProd@transformer_block/sequential/dense_5/Tensordot/GatherV2:output:0=transformer_block/sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: �
6transformer_block/sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
5transformer_block/sequential/dense_5/Tensordot/Prod_1ProdBtransformer_block/sequential/dense_5/Tensordot/GatherV2_1:output:0?transformer_block/sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:transformer_block/sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
5transformer_block/sequential/dense_5/Tensordot/concatConcatV2<transformer_block/sequential/dense_5/Tensordot/free:output:0<transformer_block/sequential/dense_5/Tensordot/axes:output:0Ctransformer_block/sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
4transformer_block/sequential/dense_5/Tensordot/stackPack<transformer_block/sequential/dense_5/Tensordot/Prod:output:0>transformer_block/sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
8transformer_block/sequential/dense_5/Tensordot/transpose	Transpose9transformer_block/layer_normalization/batchnorm/add_1:z:0>transformer_block/sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
6transformer_block/sequential/dense_5/Tensordot/ReshapeReshape<transformer_block/sequential/dense_5/Tensordot/transpose:y:0=transformer_block/sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
5transformer_block/sequential/dense_5/Tensordot/MatMulMatMul?transformer_block/sequential/dense_5/Tensordot/Reshape:output:0Etransformer_block/sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6transformer_block/sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�~
<transformer_block/sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_5/Tensordot/concat_1ConcatV2@transformer_block/sequential/dense_5/Tensordot/GatherV2:output:0?transformer_block/sequential/dense_5/Tensordot/Const_2:output:0Etransformer_block/sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
.transformer_block/sequential/dense_5/TensordotReshape?transformer_block/sequential/dense_5/Tensordot/MatMul:product:0@transformer_block/sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������d��
;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,transformer_block/sequential/dense_5/BiasAddBiasAdd7transformer_block/sequential/dense_5/Tensordot:output:0Ctransformer_block/sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������d��
)transformer_block/sequential/dense_5/ReluRelu5transformer_block/sequential/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:���������d��
=transformer_block/sequential/dense_6/Tensordot/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_6_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0}
3transformer_block/sequential/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
3transformer_block/sequential/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
4transformer_block/sequential/dense_6/Tensordot/ShapeShape7transformer_block/sequential/dense_5/Relu:activations:0*
T0*
_output_shapes
:~
<transformer_block/sequential/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_6/Tensordot/GatherV2GatherV2=transformer_block/sequential/dense_6/Tensordot/Shape:output:0<transformer_block/sequential/dense_6/Tensordot/free:output:0Etransformer_block/sequential/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
>transformer_block/sequential/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_6/Tensordot/GatherV2_1GatherV2=transformer_block/sequential/dense_6/Tensordot/Shape:output:0<transformer_block/sequential/dense_6/Tensordot/axes:output:0Gtransformer_block/sequential/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4transformer_block/sequential/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
3transformer_block/sequential/dense_6/Tensordot/ProdProd@transformer_block/sequential/dense_6/Tensordot/GatherV2:output:0=transformer_block/sequential/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: �
6transformer_block/sequential/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
5transformer_block/sequential/dense_6/Tensordot/Prod_1ProdBtransformer_block/sequential/dense_6/Tensordot/GatherV2_1:output:0?transformer_block/sequential/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:transformer_block/sequential/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
5transformer_block/sequential/dense_6/Tensordot/concatConcatV2<transformer_block/sequential/dense_6/Tensordot/free:output:0<transformer_block/sequential/dense_6/Tensordot/axes:output:0Ctransformer_block/sequential/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
4transformer_block/sequential/dense_6/Tensordot/stackPack<transformer_block/sequential/dense_6/Tensordot/Prod:output:0>transformer_block/sequential/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
8transformer_block/sequential/dense_6/Tensordot/transpose	Transpose7transformer_block/sequential/dense_5/Relu:activations:0>transformer_block/sequential/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:���������d��
6transformer_block/sequential/dense_6/Tensordot/ReshapeReshape<transformer_block/sequential/dense_6/Tensordot/transpose:y:0=transformer_block/sequential/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
5transformer_block/sequential/dense_6/Tensordot/MatMulMatMul?transformer_block/sequential/dense_6/Tensordot/Reshape:output:0Etransformer_block/sequential/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
6transformer_block/sequential/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@~
<transformer_block/sequential/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_6/Tensordot/concat_1ConcatV2@transformer_block/sequential/dense_6/Tensordot/GatherV2:output:0?transformer_block/sequential/dense_6/Tensordot/Const_2:output:0Etransformer_block/sequential/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
.transformer_block/sequential/dense_6/TensordotReshape?transformer_block/sequential/dense_6/Tensordot/MatMul:product:0@transformer_block/sequential/dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
;transformer_block/sequential/dense_6/BiasAdd/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
,transformer_block/sequential/dense_6/BiasAddBiasAdd7transformer_block/sequential/dense_6/Tensordot:output:0Ctransformer_block/sequential/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
$transformer_block/dropout_1/IdentityIdentity5transformer_block/sequential/dense_6/BiasAdd:output:0*
T0*+
_output_shapes
:���������d@�
transformer_block/add_1AddV29transformer_block/layer_normalization/batchnorm/add_1:z:0-transformer_block/dropout_1/Identity:output:0*
T0*+
_output_shapes
:���������d@�
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
4transformer_block/layer_normalization_1/moments/meanMeantransformer_block/add_1:z:0Otransformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
<transformer_block/layer_normalization_1/moments/StopGradientStopGradient=transformer_block/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
Atransformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_block/add_1:z:0Etransformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer_block/layer_normalization_1/moments/varianceMeanEtransformer_block/layer_normalization_1/moments/SquaredDifference:z:0Stransformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(|
7transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
5transformer_block/layer_normalization_1/batchnorm/addAddV2Atransformer_block/layer_normalization_1/moments/variance:output:0@transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
7transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt9transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
5transformer_block/layer_normalization_1/batchnorm/mulMul;transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Ltransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
7transformer_block/layer_normalization_1/batchnorm/mul_1Multransformer_block/add_1:z:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
7transformer_block/layer_normalization_1/batchnorm/mul_2Mul=transformer_block/layer_normalization_1/moments/mean:output:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
5transformer_block/layer_normalization_1/batchnorm/subSubHtransformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0;transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
7transformer_block/layer_normalization_1/batchnorm/add_1AddV2;transformer_block/layer_normalization_1/batchnorm/mul_1:z:09transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d/MeanMean;transformer_block/layer_normalization_1/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������@�
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_7/MatMulMatMul&global_average_pooling1d/Mean:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp?^transformer_block/layer_normalization/batchnorm/ReadVariableOpC^transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpA^transformer_block/layer_normalization_1/batchnorm/ReadVariableOpE^transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOp<^transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp>^transformer_block/sequential/dense_5/Tensordot/ReadVariableOp<^transformer_block/sequential/dense_6/BiasAdd/ReadVariableOp>^transformer_block/sequential/dense_6/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d: : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2�
>transformer_block/layer_normalization/batchnorm/ReadVariableOp>transformer_block/layer_normalization/batchnorm/ReadVariableOp2�
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpBtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2�
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2�
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpDtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOp2z
;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp2~
=transformer_block/sequential/dense_5/Tensordot/ReadVariableOp=transformer_block/sequential/dense_5/Tensordot/ReadVariableOp2z
;transformer_block/sequential/dense_6/BiasAdd/ReadVariableOp;transformer_block/sequential/dense_6/BiasAdd/ReadVariableOp2~
=transformer_block/sequential/dense_6/Tensordot/ReadVariableOp=transformer_block/sequential/dense_6/Tensordot/ReadVariableOp:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
C__inference_dense_5_layer_call_and_return_conditional_losses_254084

inputs4
!tensordot_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������d�s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������d�U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:���������d�f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:���������d�z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_254225
dense_5_input!
dense_5_254214:	@�
dense_5_254216:	�!
dense_6_254219:	�@
dense_6_254221:@
identity��dense_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�
dense_5/StatefulPartitionedCallStatefulPartitionedCalldense_5_inputdense_5_254214dense_5_254216*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������d�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_254084�
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_254219dense_6_254221*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_254120{
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d@�
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d@: : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:Z V
+
_output_shapes
:���������d@
'
_user_specified_namedense_5_input
�
�
A__inference_dense_layer_call_and_return_conditional_losses_256005

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������d�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������d@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
C__inference_dense_5_layer_call_and_return_conditional_losses_256784

inputs4
!tensordot_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������d�s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������d�U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:���������d�f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:���������d�z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
�

�
C__inference_dense_7_layer_call_and_return_conditional_losses_254581

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_254631
input_1
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:	�@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:
identity��StatefulPartitionedCall�
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
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_254588o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������d
!
_user_specified_name	input_1
�
�
2__inference_transformer_block_layer_call_fn_256079

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:	@�

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_transformer_block_layer_call_and_return_conditional_losses_254935s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������d@: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
�>
�
F__inference_sequential_layer_call_and_return_conditional_losses_256687

inputs<
)dense_5_tensordot_readvariableop_resource:	@�6
'dense_5_biasadd_readvariableop_resource:	�<
)dense_6_tensordot_readvariableop_resource:	�@5
'dense_6_biasadd_readvariableop_resource:@
identity��dense_5/BiasAdd/ReadVariableOp� dense_5/Tensordot/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp� dense_6/Tensordot/ReadVariableOp�
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_5/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/transpose	Transposeinputs!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������d��
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������d�e
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*,
_output_shapes
:���������d��
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_6/Tensordot/ShapeShapedense_5/Relu:activations:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_6/Tensordot/transpose	Transposedense_5/Relu:activations:0!dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:���������d��
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@c
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@a
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@k
IdentityIdentitydense_6/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������d@�
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d@: : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
�
�
&__inference_dense_layer_call_fn_255975

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_254289s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
A__inference_model_layer_call_and_return_conditional_losses_255075

inputs
dense_255030:@
dense_255032:@*
transformer_block_255035:@@&
transformer_block_255037:@*
transformer_block_255039:@@&
transformer_block_255041:@*
transformer_block_255043:@@&
transformer_block_255045:@*
transformer_block_255047:@@&
transformer_block_255049:@&
transformer_block_255051:@&
transformer_block_255053:@+
transformer_block_255055:	@�'
transformer_block_255057:	�+
transformer_block_255059:	�@&
transformer_block_255061:@&
transformer_block_255063:@&
transformer_block_255065:@ 
dense_7_255069:@
dense_7_255071:
identity��dense/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�)transformer_block/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_255030dense_255032*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_254289�
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0transformer_block_255035transformer_block_255037transformer_block_255039transformer_block_255041transformer_block_255043transformer_block_255045transformer_block_255047transformer_block_255049transformer_block_255051transformer_block_255053transformer_block_255055transformer_block_255057transformer_block_255059transformer_block_255061transformer_block_255063transformer_block_255065*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_transformer_block_layer_call_and_return_conditional_losses_254935�
(global_average_pooling1d/PartitionedCallPartitionedCall2transformer_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_254249�
dense_7/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_7_255069dense_7_255071*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_254581w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d: : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
(__inference_dense_7_layer_call_fn_256593

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_254581o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�&
__inference__traced_save_257053
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopY
Usavev2_transformer_block_multi_head_self_attention_dense_1_kernel_read_readvariableopW
Ssavev2_transformer_block_multi_head_self_attention_dense_1_bias_read_readvariableopY
Usavev2_transformer_block_multi_head_self_attention_dense_2_kernel_read_readvariableopW
Ssavev2_transformer_block_multi_head_self_attention_dense_2_bias_read_readvariableopY
Usavev2_transformer_block_multi_head_self_attention_dense_3_kernel_read_readvariableopW
Ssavev2_transformer_block_multi_head_self_attention_dense_3_bias_read_readvariableopY
Usavev2_transformer_block_multi_head_self_attention_dense_4_kernel_read_readvariableopW
Ssavev2_transformer_block_multi_head_self_attention_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableopJ
Fsavev2_transformer_block_layer_normalization_gamma_read_readvariableopI
Esavev2_transformer_block_layer_normalization_beta_read_readvariableopL
Hsavev2_transformer_block_layer_normalization_1_gamma_read_readvariableopK
Gsavev2_transformer_block_layer_normalization_1_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_1_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_1_bias_m_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_2_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_2_bias_m_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_3_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_3_bias_m_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_4_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableopQ
Msavev2_adam_transformer_block_layer_normalization_gamma_m_read_readvariableopP
Lsavev2_adam_transformer_block_layer_normalization_beta_m_read_readvariableopS
Osavev2_adam_transformer_block_layer_normalization_1_gamma_m_read_readvariableopR
Nsavev2_adam_transformer_block_layer_normalization_1_beta_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_1_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_1_bias_v_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_2_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_2_bias_v_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_3_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_3_bias_v_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_4_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableopQ
Msavev2_adam_transformer_block_layer_normalization_gamma_v_read_readvariableopP
Lsavev2_adam_transformer_block_layer_normalization_beta_v_read_readvariableopS
Osavev2_adam_transformer_block_layer_normalization_1_gamma_v_read_readvariableopR
Nsavev2_adam_transformer_block_layer_normalization_1_beta_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*� 
value� B� FB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*�
value�B�FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �%
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopUsavev2_transformer_block_multi_head_self_attention_dense_1_kernel_read_readvariableopSsavev2_transformer_block_multi_head_self_attention_dense_1_bias_read_readvariableopUsavev2_transformer_block_multi_head_self_attention_dense_2_kernel_read_readvariableopSsavev2_transformer_block_multi_head_self_attention_dense_2_bias_read_readvariableopUsavev2_transformer_block_multi_head_self_attention_dense_3_kernel_read_readvariableopSsavev2_transformer_block_multi_head_self_attention_dense_3_bias_read_readvariableopUsavev2_transformer_block_multi_head_self_attention_dense_4_kernel_read_readvariableopSsavev2_transformer_block_multi_head_self_attention_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableopFsavev2_transformer_block_layer_normalization_gamma_read_readvariableopEsavev2_transformer_block_layer_normalization_beta_read_readvariableopHsavev2_transformer_block_layer_normalization_1_gamma_read_readvariableopGsavev2_transformer_block_layer_normalization_1_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_1_kernel_m_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_1_bias_m_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_2_kernel_m_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_2_bias_m_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_3_kernel_m_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_3_bias_m_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_4_kernel_m_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableopMsavev2_adam_transformer_block_layer_normalization_gamma_m_read_readvariableopLsavev2_adam_transformer_block_layer_normalization_beta_m_read_readvariableopOsavev2_adam_transformer_block_layer_normalization_1_gamma_m_read_readvariableopNsavev2_adam_transformer_block_layer_normalization_1_beta_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_1_kernel_v_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_1_bias_v_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_2_kernel_v_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_2_bias_v_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_3_kernel_v_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_3_bias_v_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_4_kernel_v_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableopMsavev2_adam_transformer_block_layer_normalization_gamma_v_read_readvariableopLsavev2_adam_transformer_block_layer_normalization_beta_v_read_readvariableopOsavev2_adam_transformer_block_layer_normalization_1_gamma_v_read_readvariableopNsavev2_adam_transformer_block_layer_normalization_1_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *T
dtypesJ
H2F	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :@:@:@:: : : : : :@@:@:@@:@:@@:@:@@:@:	@�:�:	�@:@:@:@:@:@: : : : :@:@:@::@@:@:@@:@:@@:@:@@:@:	@�:�:	�@:@:@:@:@:@:@:@:@::@@:@:@@:@:@@:@:@@:@:	@�:�:	�@:@:@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :$
 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:%!

_output_shapes
:	@�:!

_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
:@:$  

_output_shapes

:@: !

_output_shapes
::$" 

_output_shapes

:@@: #

_output_shapes
:@:$$ 

_output_shapes

:@@: %

_output_shapes
:@:$& 

_output_shapes

:@@: '

_output_shapes
:@:$( 

_output_shapes

:@@: )

_output_shapes
:@:%*!

_output_shapes
:	@�:!+

_output_shapes	
:�:%,!

_output_shapes
:	�@: -

_output_shapes
:@: .

_output_shapes
:@: /

_output_shapes
:@: 0

_output_shapes
:@: 1

_output_shapes
:@:$2 

_output_shapes

:@: 3

_output_shapes
:@:$4 

_output_shapes

:@: 5

_output_shapes
::$6 

_output_shapes

:@@: 7

_output_shapes
:@:$8 

_output_shapes

:@@: 9

_output_shapes
:@:$: 

_output_shapes

:@@: ;

_output_shapes
:@:$< 

_output_shapes

:@@: =

_output_shapes
:@:%>!

_output_shapes
:	@�:!?

_output_shapes	
:�:%@!

_output_shapes
:	�@: A

_output_shapes
:@: B

_output_shapes
:@: C

_output_shapes
:@: D

_output_shapes
:@: E

_output_shapes
:@:F

_output_shapes
: 
�
�
+__inference_sequential_layer_call_fn_256617

inputs
unknown:	@�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_254127s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
�
�
A__inference_model_layer_call_and_return_conditional_losses_255211
input_1
dense_255166:@
dense_255168:@*
transformer_block_255171:@@&
transformer_block_255173:@*
transformer_block_255175:@@&
transformer_block_255177:@*
transformer_block_255179:@@&
transformer_block_255181:@*
transformer_block_255183:@@&
transformer_block_255185:@&
transformer_block_255187:@&
transformer_block_255189:@+
transformer_block_255191:	@�'
transformer_block_255193:	�+
transformer_block_255195:	�@&
transformer_block_255197:@&
transformer_block_255199:@&
transformer_block_255201:@ 
dense_7_255205:@
dense_7_255207:
identity��dense/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�)transformer_block/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_255166dense_255168*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_254289�
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0transformer_block_255171transformer_block_255173transformer_block_255175transformer_block_255177transformer_block_255179transformer_block_255181transformer_block_255183transformer_block_255185transformer_block_255187transformer_block_255189transformer_block_255191transformer_block_255193transformer_block_255195transformer_block_255197transformer_block_255199transformer_block_255201*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_transformer_block_layer_call_and_return_conditional_losses_254535�
(global_average_pooling1d/PartitionedCallPartitionedCall2transformer_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_254249�
dense_7/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_7_255205dense_7_255207*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_254581w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d: : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall:T P
+
_output_shapes
:���������d
!
_user_specified_name	input_1
��
�
A__inference_model_layer_call_and_return_conditional_losses_255919

inputs9
'dense_tensordot_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:@g
Utransformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource:@@a
Stransformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource:@g
Utransformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource:@@a
Stransformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource:@g
Utransformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource:@@a
Stransformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource:@g
Utransformer_block_multi_head_self_attention_dense_4_tensordot_readvariableop_resource:@@a
Stransformer_block_multi_head_self_attention_dense_4_biasadd_readvariableop_resource:@Y
Ktransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource:@U
Gtransformer_block_layer_normalization_batchnorm_readvariableop_resource:@Y
Ftransformer_block_sequential_dense_5_tensordot_readvariableop_resource:	@�S
Dtransformer_block_sequential_dense_5_biasadd_readvariableop_resource:	�Y
Ftransformer_block_sequential_dense_6_tensordot_readvariableop_resource:	�@R
Dtransformer_block_sequential_dense_6_biasadd_readvariableop_resource:@[
Mtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource:@W
Itransformer_block_layer_normalization_1_batchnorm_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�>transformer_block/layer_normalization/batchnorm/ReadVariableOp�Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp�@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp�Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOp�;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp�=transformer_block/sequential/dense_5/Tensordot/ReadVariableOp�;transformer_block/sequential/dense_6/BiasAdd/ReadVariableOp�=transformer_block/sequential/dense_6/Tensordot/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       K
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d�
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@w
1transformer_block/multi_head_self_attention/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:�
?transformer_block/multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Atransformer_block/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Atransformer_block/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9transformer_block/multi_head_self_attention/strided_sliceStridedSlice:transformer_block/multi_head_self_attention/Shape:output:0Htransformer_block/multi_head_self_attention/strided_slice/stack:output:0Jtransformer_block/multi_head_self_attention/strided_slice/stack_1:output:0Jtransformer_block/multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0�
Btransformer_block/multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_1/Tensordot/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_1/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_1/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_1/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_1/Tensordot/transpose	Transposedense/BiasAdd:output:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
Etransformer_block/multi_head_self_attention/dense_1/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_1/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Etransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_1/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_1/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
Jtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
;transformer_block/multi_head_self_attention/dense_1/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_1/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0�
Btransformer_block/multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_2/Tensordot/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_2/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_2/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_2/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_2/Tensordot/transpose	Transposedense/BiasAdd:output:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
Etransformer_block/multi_head_self_attention/dense_2/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_2/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Etransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_2/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_2/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
Jtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
;transformer_block/multi_head_self_attention/dense_2/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_2/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0�
Btransformer_block/multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_3/Tensordot/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_3/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_3/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_3/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_3/Tensordot/transpose	Transposedense/BiasAdd:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
Etransformer_block/multi_head_self_attention/dense_3/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_3/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Etransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_3/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_3/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
Jtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
;transformer_block/multi_head_self_attention/dense_3/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_3/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
;transformer_block/multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������}
;transformer_block/multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :}
;transformer_block/multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
9transformer_block/multi_head_self_attention/Reshape/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Dtransformer_block/multi_head_self_attention/Reshape/shape/1:output:0Dtransformer_block/multi_head_self_attention/Reshape/shape/2:output:0Dtransformer_block/multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
3transformer_block/multi_head_self_attention/ReshapeReshapeDtransformer_block/multi_head_self_attention/dense_1/BiasAdd:output:0Btransformer_block/multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
:transformer_block/multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
5transformer_block/multi_head_self_attention/transpose	Transpose<transformer_block/multi_head_self_attention/Reshape:output:0Ctransformer_block/multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
=transformer_block/multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
;transformer_block/multi_head_self_attention/Reshape_1/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Ftransformer_block/multi_head_self_attention/Reshape_1/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_1/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_1ReshapeDtransformer_block/multi_head_self_attention/dense_2/BiasAdd:output:0Dtransformer_block/multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
<transformer_block/multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_1	Transpose>transformer_block/multi_head_self_attention/Reshape_1:output:0Etransformer_block/multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
=transformer_block/multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
;transformer_block/multi_head_self_attention/Reshape_2/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Ftransformer_block/multi_head_self_attention/Reshape_2/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_2/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_2ReshapeDtransformer_block/multi_head_self_attention/dense_3/BiasAdd:output:0Dtransformer_block/multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
<transformer_block/multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_2	Transpose>transformer_block/multi_head_self_attention/Reshape_2:output:0Etransformer_block/multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
2transformer_block/multi_head_self_attention/MatMulBatchMatMulV29transformer_block/multi_head_self_attention/transpose:y:0;transformer_block/multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(t
2transformer_block/multi_head_self_attention/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
0transformer_block/multi_head_self_attention/CastCast;transformer_block/multi_head_self_attention/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0transformer_block/multi_head_self_attention/SqrtSqrt4transformer_block/multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
3transformer_block/multi_head_self_attention/truedivRealDiv;transformer_block/multi_head_self_attention/MatMul:output:04transformer_block/multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
3transformer_block/multi_head_self_attention/SoftmaxSoftmax7transformer_block/multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
4transformer_block/multi_head_self_attention/MatMul_1BatchMatMulV2=transformer_block/multi_head_self_attention/Softmax:softmax:0;transformer_block/multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"�������������������
<transformer_block/multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_3	Transpose=transformer_block/multi_head_self_attention/MatMul_1:output:0Etransformer_block/multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
=transformer_block/multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
;transformer_block/multi_head_self_attention/Reshape_3/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Ftransformer_block/multi_head_self_attention/Reshape_3/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_3Reshape;transformer_block/multi_head_self_attention/transpose_3:y:0Dtransformer_block/multi_head_self_attention/Reshape_3/shape:output:0*
T0*4
_output_shapes"
 :������������������@�
Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0�
Btransformer_block/multi_head_self_attention/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_4/Tensordot/ShapeShape>transformer_block/multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_4/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_4/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_4/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_4/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_4/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_4/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_4/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_4/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_4/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_4/Tensordot/transpose	Transpose>transformer_block/multi_head_self_attention/Reshape_3:output:0Mtransformer_block/multi_head_self_attention/dense_4/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������@�
Etransformer_block/multi_head_self_attention/dense_4/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_4/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_4/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_4/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Etransformer_block/multi_head_self_attention/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Ktransformer_block/multi_head_self_attention/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_4/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_4/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_4/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_4/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_4/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������@�
Jtransformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
;transformer_block/multi_head_self_attention/dense_4/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_4/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������@l
'transformer_block/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
%transformer_block/dropout/dropout/MulMulDtransformer_block/multi_head_self_attention/dense_4/BiasAdd:output:00transformer_block/dropout/dropout/Const:output:0*
T0*4
_output_shapes"
 :������������������@�
'transformer_block/dropout/dropout/ShapeShapeDtransformer_block/multi_head_self_attention/dense_4/BiasAdd:output:0*
T0*
_output_shapes
:�
>transformer_block/dropout/dropout/random_uniform/RandomUniformRandomUniform0transformer_block/dropout/dropout/Shape:output:0*
T0*4
_output_shapes"
 :������������������@*
dtype0u
0transformer_block/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
.transformer_block/dropout/dropout/GreaterEqualGreaterEqualGtransformer_block/dropout/dropout/random_uniform/RandomUniform:output:09transformer_block/dropout/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������@�
&transformer_block/dropout/dropout/CastCast2transformer_block/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������@�
'transformer_block/dropout/dropout/Mul_1Mul)transformer_block/dropout/dropout/Mul:z:0*transformer_block/dropout/dropout/Cast:y:0*
T0*4
_output_shapes"
 :������������������@�
transformer_block/addAddV2dense/BiasAdd:output:0+transformer_block/dropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:���������d@�
Dtransformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
2transformer_block/layer_normalization/moments/meanMeantransformer_block/add:z:0Mtransformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
:transformer_block/layer_normalization/moments/StopGradientStopGradient;transformer_block/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
?transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_block/add:z:0Ctransformer_block/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
Htransformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
6transformer_block/layer_normalization/moments/varianceMeanCtransformer_block/layer_normalization/moments/SquaredDifference:z:0Qtransformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(z
5transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
3transformer_block/layer_normalization/batchnorm/addAddV2?transformer_block/layer_normalization/moments/variance:output:0>transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
5transformer_block/layer_normalization/batchnorm/RsqrtRsqrt7transformer_block/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
3transformer_block/layer_normalization/batchnorm/mulMul9transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Jtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
5transformer_block/layer_normalization/batchnorm/mul_1Multransformer_block/add:z:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
5transformer_block/layer_normalization/batchnorm/mul_2Mul;transformer_block/layer_normalization/moments/mean:output:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
>transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
3transformer_block/layer_normalization/batchnorm/subSubFtransformer_block/layer_normalization/batchnorm/ReadVariableOp:value:09transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
5transformer_block/layer_normalization/batchnorm/add_1AddV29transformer_block/layer_normalization/batchnorm/mul_1:z:07transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@�
=transformer_block/sequential/dense_5/Tensordot/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0}
3transformer_block/sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
3transformer_block/sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
4transformer_block/sequential/dense_5/Tensordot/ShapeShape9transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:~
<transformer_block/sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_5/Tensordot/GatherV2GatherV2=transformer_block/sequential/dense_5/Tensordot/Shape:output:0<transformer_block/sequential/dense_5/Tensordot/free:output:0Etransformer_block/sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
>transformer_block/sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_5/Tensordot/GatherV2_1GatherV2=transformer_block/sequential/dense_5/Tensordot/Shape:output:0<transformer_block/sequential/dense_5/Tensordot/axes:output:0Gtransformer_block/sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4transformer_block/sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
3transformer_block/sequential/dense_5/Tensordot/ProdProd@transformer_block/sequential/dense_5/Tensordot/GatherV2:output:0=transformer_block/sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: �
6transformer_block/sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
5transformer_block/sequential/dense_5/Tensordot/Prod_1ProdBtransformer_block/sequential/dense_5/Tensordot/GatherV2_1:output:0?transformer_block/sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:transformer_block/sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
5transformer_block/sequential/dense_5/Tensordot/concatConcatV2<transformer_block/sequential/dense_5/Tensordot/free:output:0<transformer_block/sequential/dense_5/Tensordot/axes:output:0Ctransformer_block/sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
4transformer_block/sequential/dense_5/Tensordot/stackPack<transformer_block/sequential/dense_5/Tensordot/Prod:output:0>transformer_block/sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
8transformer_block/sequential/dense_5/Tensordot/transpose	Transpose9transformer_block/layer_normalization/batchnorm/add_1:z:0>transformer_block/sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
6transformer_block/sequential/dense_5/Tensordot/ReshapeReshape<transformer_block/sequential/dense_5/Tensordot/transpose:y:0=transformer_block/sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
5transformer_block/sequential/dense_5/Tensordot/MatMulMatMul?transformer_block/sequential/dense_5/Tensordot/Reshape:output:0Etransformer_block/sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6transformer_block/sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�~
<transformer_block/sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_5/Tensordot/concat_1ConcatV2@transformer_block/sequential/dense_5/Tensordot/GatherV2:output:0?transformer_block/sequential/dense_5/Tensordot/Const_2:output:0Etransformer_block/sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
.transformer_block/sequential/dense_5/TensordotReshape?transformer_block/sequential/dense_5/Tensordot/MatMul:product:0@transformer_block/sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������d��
;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,transformer_block/sequential/dense_5/BiasAddBiasAdd7transformer_block/sequential/dense_5/Tensordot:output:0Ctransformer_block/sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������d��
)transformer_block/sequential/dense_5/ReluRelu5transformer_block/sequential/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:���������d��
=transformer_block/sequential/dense_6/Tensordot/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_6_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0}
3transformer_block/sequential/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
3transformer_block/sequential/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
4transformer_block/sequential/dense_6/Tensordot/ShapeShape7transformer_block/sequential/dense_5/Relu:activations:0*
T0*
_output_shapes
:~
<transformer_block/sequential/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_6/Tensordot/GatherV2GatherV2=transformer_block/sequential/dense_6/Tensordot/Shape:output:0<transformer_block/sequential/dense_6/Tensordot/free:output:0Etransformer_block/sequential/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
>transformer_block/sequential/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_6/Tensordot/GatherV2_1GatherV2=transformer_block/sequential/dense_6/Tensordot/Shape:output:0<transformer_block/sequential/dense_6/Tensordot/axes:output:0Gtransformer_block/sequential/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4transformer_block/sequential/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
3transformer_block/sequential/dense_6/Tensordot/ProdProd@transformer_block/sequential/dense_6/Tensordot/GatherV2:output:0=transformer_block/sequential/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: �
6transformer_block/sequential/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
5transformer_block/sequential/dense_6/Tensordot/Prod_1ProdBtransformer_block/sequential/dense_6/Tensordot/GatherV2_1:output:0?transformer_block/sequential/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:transformer_block/sequential/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
5transformer_block/sequential/dense_6/Tensordot/concatConcatV2<transformer_block/sequential/dense_6/Tensordot/free:output:0<transformer_block/sequential/dense_6/Tensordot/axes:output:0Ctransformer_block/sequential/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
4transformer_block/sequential/dense_6/Tensordot/stackPack<transformer_block/sequential/dense_6/Tensordot/Prod:output:0>transformer_block/sequential/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
8transformer_block/sequential/dense_6/Tensordot/transpose	Transpose7transformer_block/sequential/dense_5/Relu:activations:0>transformer_block/sequential/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:���������d��
6transformer_block/sequential/dense_6/Tensordot/ReshapeReshape<transformer_block/sequential/dense_6/Tensordot/transpose:y:0=transformer_block/sequential/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
5transformer_block/sequential/dense_6/Tensordot/MatMulMatMul?transformer_block/sequential/dense_6/Tensordot/Reshape:output:0Etransformer_block/sequential/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
6transformer_block/sequential/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@~
<transformer_block/sequential/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_6/Tensordot/concat_1ConcatV2@transformer_block/sequential/dense_6/Tensordot/GatherV2:output:0?transformer_block/sequential/dense_6/Tensordot/Const_2:output:0Etransformer_block/sequential/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
.transformer_block/sequential/dense_6/TensordotReshape?transformer_block/sequential/dense_6/Tensordot/MatMul:product:0@transformer_block/sequential/dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
;transformer_block/sequential/dense_6/BiasAdd/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
,transformer_block/sequential/dense_6/BiasAddBiasAdd7transformer_block/sequential/dense_6/Tensordot:output:0Ctransformer_block/sequential/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@n
)transformer_block/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
'transformer_block/dropout_1/dropout/MulMul5transformer_block/sequential/dense_6/BiasAdd:output:02transformer_block/dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:���������d@�
)transformer_block/dropout_1/dropout/ShapeShape5transformer_block/sequential/dense_6/BiasAdd:output:0*
T0*
_output_shapes
:�
@transformer_block/dropout_1/dropout/random_uniform/RandomUniformRandomUniform2transformer_block/dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:���������d@*
dtype0w
2transformer_block/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
0transformer_block/dropout_1/dropout/GreaterEqualGreaterEqualItransformer_block/dropout_1/dropout/random_uniform/RandomUniform:output:0;transformer_block/dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������d@�
(transformer_block/dropout_1/dropout/CastCast4transformer_block/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������d@�
)transformer_block/dropout_1/dropout/Mul_1Mul+transformer_block/dropout_1/dropout/Mul:z:0,transformer_block/dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:���������d@�
transformer_block/add_1AddV29transformer_block/layer_normalization/batchnorm/add_1:z:0-transformer_block/dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:���������d@�
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
4transformer_block/layer_normalization_1/moments/meanMeantransformer_block/add_1:z:0Otransformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
<transformer_block/layer_normalization_1/moments/StopGradientStopGradient=transformer_block/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
Atransformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_block/add_1:z:0Etransformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer_block/layer_normalization_1/moments/varianceMeanEtransformer_block/layer_normalization_1/moments/SquaredDifference:z:0Stransformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(|
7transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
5transformer_block/layer_normalization_1/batchnorm/addAddV2Atransformer_block/layer_normalization_1/moments/variance:output:0@transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
7transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt9transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
5transformer_block/layer_normalization_1/batchnorm/mulMul;transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Ltransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
7transformer_block/layer_normalization_1/batchnorm/mul_1Multransformer_block/add_1:z:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
7transformer_block/layer_normalization_1/batchnorm/mul_2Mul=transformer_block/layer_normalization_1/moments/mean:output:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
5transformer_block/layer_normalization_1/batchnorm/subSubHtransformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0;transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
7transformer_block/layer_normalization_1/batchnorm/add_1AddV2;transformer_block/layer_normalization_1/batchnorm/mul_1:z:09transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d/MeanMean;transformer_block/layer_normalization_1/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������@�
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_7/MatMulMatMul&global_average_pooling1d/Mean:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp?^transformer_block/layer_normalization/batchnorm/ReadVariableOpC^transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpA^transformer_block/layer_normalization_1/batchnorm/ReadVariableOpE^transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOp<^transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp>^transformer_block/sequential/dense_5/Tensordot/ReadVariableOp<^transformer_block/sequential/dense_6/BiasAdd/ReadVariableOp>^transformer_block/sequential/dense_6/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d: : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2�
>transformer_block/layer_normalization/batchnorm/ReadVariableOp>transformer_block/layer_normalization/batchnorm/ReadVariableOp2�
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpBtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2�
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2�
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpDtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOp2z
;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp2~
=transformer_block/sequential/dense_5/Tensordot/ReadVariableOp=transformer_block/sequential/dense_5/Tensordot/ReadVariableOp2z
;transformer_block/sequential/dense_6/BiasAdd/ReadVariableOp;transformer_block/sequential/dense_6/BiasAdd/ReadVariableOp2~
=transformer_block/sequential/dense_6/Tensordot/ReadVariableOp=transformer_block/sequential/dense_6/Tensordot/ReadVariableOp:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
C__inference_dense_6_layer_call_and_return_conditional_losses_254120

inputs4
!tensordot_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:���������d��
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������d@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������d�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:���������d�
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_254239
dense_5_input!
dense_5_254228:	@�
dense_5_254230:	�!
dense_6_254233:	�@
dense_6_254235:@
identity��dense_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�
dense_5/StatefulPartitionedCallStatefulPartitionedCalldense_5_inputdense_5_254228dense_5_254230*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������d�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_254084�
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_254233dense_6_254235*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_254120{
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d@�
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d@: : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:Z V
+
_output_shapes
:���������d@
'
_user_specified_namedense_5_input
�
�
+__inference_sequential_layer_call_fn_254138
dense_5_input
unknown:	@�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_254127s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������d@
'
_user_specified_namedense_5_input
��
�
!__inference__wrapped_model_254046
input_1?
-model_dense_tensordot_readvariableop_resource:@9
+model_dense_biasadd_readvariableop_resource:@m
[model_transformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource:@@g
Ymodel_transformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource:@m
[model_transformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource:@@g
Ymodel_transformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource:@m
[model_transformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource:@@g
Ymodel_transformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource:@m
[model_transformer_block_multi_head_self_attention_dense_4_tensordot_readvariableop_resource:@@g
Ymodel_transformer_block_multi_head_self_attention_dense_4_biasadd_readvariableop_resource:@_
Qmodel_transformer_block_layer_normalization_batchnorm_mul_readvariableop_resource:@[
Mmodel_transformer_block_layer_normalization_batchnorm_readvariableop_resource:@_
Lmodel_transformer_block_sequential_dense_5_tensordot_readvariableop_resource:	@�Y
Jmodel_transformer_block_sequential_dense_5_biasadd_readvariableop_resource:	�_
Lmodel_transformer_block_sequential_dense_6_tensordot_readvariableop_resource:	�@X
Jmodel_transformer_block_sequential_dense_6_biasadd_readvariableop_resource:@a
Smodel_transformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource:@]
Omodel_transformer_block_layer_normalization_1_batchnorm_readvariableop_resource:@>
,model_dense_7_matmul_readvariableop_resource:@;
-model_dense_7_biasadd_readvariableop_resource:
identity��"model/dense/BiasAdd/ReadVariableOp�$model/dense/Tensordot/ReadVariableOp�$model/dense_7/BiasAdd/ReadVariableOp�#model/dense_7/MatMul/ReadVariableOp�Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp�Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp�Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp�Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp�Pmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�Pmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�Pmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�Pmodel/transformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp�Rmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOp�Amodel/transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp�Cmodel/transformer_block/sequential/dense_5/Tensordot/ReadVariableOp�Amodel/transformer_block/sequential/dense_6/BiasAdd/ReadVariableOp�Cmodel/transformer_block/sequential/dense_6/Tensordot/ReadVariableOp�
$model/dense/Tensordot/ReadVariableOpReadVariableOp-model_dense_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0d
model/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
model/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       R
model/dense/Tensordot/ShapeShapeinput_1*
T0*
_output_shapes
:e
#model/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
model/dense/Tensordot/GatherV2GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/free:output:0,model/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
%model/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 model/dense/Tensordot/GatherV2_1GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/axes:output:0.model/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
model/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
model/dense/Tensordot/ProdProd'model/dense/Tensordot/GatherV2:output:0$model/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: g
model/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
model/dense/Tensordot/Prod_1Prod)model/dense/Tensordot/GatherV2_1:output:0&model/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: c
!model/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
model/dense/Tensordot/concatConcatV2#model/dense/Tensordot/free:output:0#model/dense/Tensordot/axes:output:0*model/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
model/dense/Tensordot/stackPack#model/dense/Tensordot/Prod:output:0%model/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
model/dense/Tensordot/transpose	Transposeinput_1%model/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d�
model/dense/Tensordot/ReshapeReshape#model/dense/Tensordot/transpose:y:0$model/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
model/dense/Tensordot/MatMulMatMul&model/dense/Tensordot/Reshape:output:0,model/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@g
model/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@e
#model/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
model/dense/Tensordot/concat_1ConcatV2'model/dense/Tensordot/GatherV2:output:0&model/dense/Tensordot/Const_2:output:0,model/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
model/dense/TensordotReshape&model/dense/Tensordot/MatMul:product:0'model/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/Tensordot:output:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
7model/transformer_block/multi_head_self_attention/ShapeShapemodel/dense/BiasAdd:output:0*
T0*
_output_shapes
:�
Emodel/transformer_block/multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Gmodel/transformer_block/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Gmodel/transformer_block/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?model/transformer_block/multi_head_self_attention/strided_sliceStridedSlice@model/transformer_block/multi_head_self_attention/Shape:output:0Nmodel/transformer_block/multi_head_self_attention/strided_slice/stack:output:0Pmodel/transformer_block/multi_head_self_attention/strided_slice/stack_1:output:0Pmodel/transformer_block/multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOp[model_transformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0�
Hmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Hmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Imodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ShapeShapemodel/dense/BiasAdd:output:0*
T0*
_output_shapes
:�
Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/free:output:0Zmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Smodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/axes:output:0\model/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Hmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ProdProdUmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Kmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Jmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Prod_1ProdWmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0Tmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Omodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concatConcatV2Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/free:output:0Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/axes:output:0Xmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/stackPackQmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Prod:output:0Smodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Mmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/transpose	Transposemodel/dense/BiasAdd:output:0Smodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
Kmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReshapeReshapeQmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/transpose:y:0Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Jmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/MatMulMatMulTmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Zmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Kmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2Umodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0Tmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Zmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Cmodel/transformer_block/multi_head_self_attention/dense_1/TensordotReshapeTmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/MatMul:product:0Umodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
Pmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
Amodel/transformer_block/multi_head_self_attention/dense_1/BiasAddBiasAddLmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot:output:0Xmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOp[model_transformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0�
Hmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Hmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Imodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ShapeShapemodel/dense/BiasAdd:output:0*
T0*
_output_shapes
:�
Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/free:output:0Zmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Smodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/axes:output:0\model/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Hmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ProdProdUmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Kmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Jmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Prod_1ProdWmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0Tmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Omodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concatConcatV2Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/free:output:0Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/axes:output:0Xmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/stackPackQmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Prod:output:0Smodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Mmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/transpose	Transposemodel/dense/BiasAdd:output:0Smodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
Kmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReshapeReshapeQmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/transpose:y:0Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Jmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/MatMulMatMulTmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Zmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Kmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2Umodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0Tmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Zmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Cmodel/transformer_block/multi_head_self_attention/dense_2/TensordotReshapeTmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/MatMul:product:0Umodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
Pmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
Amodel/transformer_block/multi_head_self_attention/dense_2/BiasAddBiasAddLmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot:output:0Xmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOp[model_transformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0�
Hmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Hmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Imodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ShapeShapemodel/dense/BiasAdd:output:0*
T0*
_output_shapes
:�
Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/free:output:0Zmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Smodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/axes:output:0\model/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Hmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ProdProdUmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Kmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Jmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Prod_1ProdWmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0Tmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Omodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concatConcatV2Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/free:output:0Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/axes:output:0Xmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/stackPackQmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Prod:output:0Smodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Mmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/transpose	Transposemodel/dense/BiasAdd:output:0Smodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
Kmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReshapeReshapeQmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/transpose:y:0Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Jmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/MatMulMatMulTmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Zmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Kmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2Umodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0Tmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Zmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Cmodel/transformer_block/multi_head_self_attention/dense_3/TensordotReshapeTmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/MatMul:product:0Umodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
Pmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
Amodel/transformer_block/multi_head_self_attention/dense_3/BiasAddBiasAddLmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot:output:0Xmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
Amodel/transformer_block/multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Amodel/transformer_block/multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Amodel/transformer_block/multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
?model/transformer_block/multi_head_self_attention/Reshape/shapePackHmodel/transformer_block/multi_head_self_attention/strided_slice:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape/shape/1:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape/shape/2:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
9model/transformer_block/multi_head_self_attention/ReshapeReshapeJmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd:output:0Hmodel/transformer_block/multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
@model/transformer_block/multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
;model/transformer_block/multi_head_self_attention/transpose	TransposeBmodel/transformer_block/multi_head_self_attention/Reshape:output:0Imodel/transformer_block/multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
Cmodel/transformer_block/multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Cmodel/transformer_block/multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Cmodel/transformer_block/multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Amodel/transformer_block/multi_head_self_attention/Reshape_1/shapePackHmodel/transformer_block/multi_head_self_attention/strided_slice:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_1/shape/1:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_1/shape/2:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
;model/transformer_block/multi_head_self_attention/Reshape_1ReshapeJmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
Bmodel/transformer_block/multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=model/transformer_block/multi_head_self_attention/transpose_1	TransposeDmodel/transformer_block/multi_head_self_attention/Reshape_1:output:0Kmodel/transformer_block/multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
Cmodel/transformer_block/multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Cmodel/transformer_block/multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Cmodel/transformer_block/multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Amodel/transformer_block/multi_head_self_attention/Reshape_2/shapePackHmodel/transformer_block/multi_head_self_attention/strided_slice:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_2/shape/1:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_2/shape/2:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
;model/transformer_block/multi_head_self_attention/Reshape_2ReshapeJmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
Bmodel/transformer_block/multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=model/transformer_block/multi_head_self_attention/transpose_2	TransposeDmodel/transformer_block/multi_head_self_attention/Reshape_2:output:0Kmodel/transformer_block/multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
8model/transformer_block/multi_head_self_attention/MatMulBatchMatMulV2?model/transformer_block/multi_head_self_attention/transpose:y:0Amodel/transformer_block/multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(z
8model/transformer_block/multi_head_self_attention/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
6model/transformer_block/multi_head_self_attention/CastCastAmodel/transformer_block/multi_head_self_attention/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
6model/transformer_block/multi_head_self_attention/SqrtSqrt:model/transformer_block/multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
9model/transformer_block/multi_head_self_attention/truedivRealDivAmodel/transformer_block/multi_head_self_attention/MatMul:output:0:model/transformer_block/multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
9model/transformer_block/multi_head_self_attention/SoftmaxSoftmax=model/transformer_block/multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
:model/transformer_block/multi_head_self_attention/MatMul_1BatchMatMulV2Cmodel/transformer_block/multi_head_self_attention/Softmax:softmax:0Amodel/transformer_block/multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"�������������������
Bmodel/transformer_block/multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=model/transformer_block/multi_head_self_attention/transpose_3	TransposeCmodel/transformer_block/multi_head_self_attention/MatMul_1:output:0Kmodel/transformer_block/multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
Cmodel/transformer_block/multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Cmodel/transformer_block/multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
Amodel/transformer_block/multi_head_self_attention/Reshape_3/shapePackHmodel/transformer_block/multi_head_self_attention/strided_slice:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_3/shape/1:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
;model/transformer_block/multi_head_self_attention/Reshape_3ReshapeAmodel/transformer_block/multi_head_self_attention/transpose_3:y:0Jmodel/transformer_block/multi_head_self_attention/Reshape_3/shape:output:0*
T0*4
_output_shapes"
 :������������������@�
Rmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOpReadVariableOp[model_transformer_block_multi_head_self_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0�
Hmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Hmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Imodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/ShapeShapeDmodel/transformer_block/multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:�
Qmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/free:output:0Zmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Smodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2_1GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/axes:output:0\model/transformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Hmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/ProdProdUmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0Rmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Kmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Jmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/Prod_1ProdWmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2_1:output:0Tmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Omodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/concatConcatV2Qmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/free:output:0Qmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/axes:output:0Xmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/stackPackQmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/Prod:output:0Smodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Mmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/transpose	TransposeDmodel/transformer_block/multi_head_self_attention/Reshape_3:output:0Smodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������@�
Kmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/ReshapeReshapeQmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/transpose:y:0Rmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Jmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/MatMulMatMulTmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/Reshape:output:0Zmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Kmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Qmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/concat_1ConcatV2Umodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0Tmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/Const_2:output:0Zmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Cmodel/transformer_block/multi_head_self_attention/dense_4/TensordotReshapeTmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/MatMul:product:0Umodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������@�
Pmodel/transformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_self_attention_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
Amodel/transformer_block/multi_head_self_attention/dense_4/BiasAddBiasAddLmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot:output:0Xmodel/transformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������@�
(model/transformer_block/dropout/IdentityIdentityJmodel/transformer_block/multi_head_self_attention/dense_4/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������@�
model/transformer_block/addAddV2model/dense/BiasAdd:output:01model/transformer_block/dropout/Identity:output:0*
T0*+
_output_shapes
:���������d@�
Jmodel/transformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8model/transformer_block/layer_normalization/moments/meanMeanmodel/transformer_block/add:z:0Smodel/transformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
@model/transformer_block/layer_normalization/moments/StopGradientStopGradientAmodel/transformer_block/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
Emodel/transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencemodel/transformer_block/add:z:0Imodel/transformer_block/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
Nmodel/transformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
<model/transformer_block/layer_normalization/moments/varianceMeanImodel/transformer_block/layer_normalization/moments/SquaredDifference:z:0Wmodel/transformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
;model/transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
9model/transformer_block/layer_normalization/batchnorm/addAddV2Emodel/transformer_block/layer_normalization/moments/variance:output:0Dmodel/transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
;model/transformer_block/layer_normalization/batchnorm/RsqrtRsqrt=model/transformer_block/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpQmodel_transformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
9model/transformer_block/layer_normalization/batchnorm/mulMul?model/transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Pmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
;model/transformer_block/layer_normalization/batchnorm/mul_1Mulmodel/transformer_block/add:z:0=model/transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
;model/transformer_block/layer_normalization/batchnorm/mul_2MulAmodel/transformer_block/layer_normalization/moments/mean:output:0=model/transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpMmodel_transformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
9model/transformer_block/layer_normalization/batchnorm/subSubLmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp:value:0?model/transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
;model/transformer_block/layer_normalization/batchnorm/add_1AddV2?model/transformer_block/layer_normalization/batchnorm/mul_1:z:0=model/transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@�
Cmodel/transformer_block/sequential/dense_5/Tensordot/ReadVariableOpReadVariableOpLmodel_transformer_block_sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
9model/transformer_block/sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
9model/transformer_block/sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
:model/transformer_block/sequential/dense_5/Tensordot/ShapeShape?model/transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Bmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
=model/transformer_block/sequential/dense_5/Tensordot/GatherV2GatherV2Cmodel/transformer_block/sequential/dense_5/Tensordot/Shape:output:0Bmodel/transformer_block/sequential/dense_5/Tensordot/free:output:0Kmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Dmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
?model/transformer_block/sequential/dense_5/Tensordot/GatherV2_1GatherV2Cmodel/transformer_block/sequential/dense_5/Tensordot/Shape:output:0Bmodel/transformer_block/sequential/dense_5/Tensordot/axes:output:0Mmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
:model/transformer_block/sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
9model/transformer_block/sequential/dense_5/Tensordot/ProdProdFmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2:output:0Cmodel/transformer_block/sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: �
<model/transformer_block/sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
;model/transformer_block/sequential/dense_5/Tensordot/Prod_1ProdHmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2_1:output:0Emodel/transformer_block/sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
@model/transformer_block/sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
;model/transformer_block/sequential/dense_5/Tensordot/concatConcatV2Bmodel/transformer_block/sequential/dense_5/Tensordot/free:output:0Bmodel/transformer_block/sequential/dense_5/Tensordot/axes:output:0Imodel/transformer_block/sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
:model/transformer_block/sequential/dense_5/Tensordot/stackPackBmodel/transformer_block/sequential/dense_5/Tensordot/Prod:output:0Dmodel/transformer_block/sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
>model/transformer_block/sequential/dense_5/Tensordot/transpose	Transpose?model/transformer_block/layer_normalization/batchnorm/add_1:z:0Dmodel/transformer_block/sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
<model/transformer_block/sequential/dense_5/Tensordot/ReshapeReshapeBmodel/transformer_block/sequential/dense_5/Tensordot/transpose:y:0Cmodel/transformer_block/sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
;model/transformer_block/sequential/dense_5/Tensordot/MatMulMatMulEmodel/transformer_block/sequential/dense_5/Tensordot/Reshape:output:0Kmodel/transformer_block/sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
<model/transformer_block/sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Bmodel/transformer_block/sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
=model/transformer_block/sequential/dense_5/Tensordot/concat_1ConcatV2Fmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2:output:0Emodel/transformer_block/sequential/dense_5/Tensordot/Const_2:output:0Kmodel/transformer_block/sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
4model/transformer_block/sequential/dense_5/TensordotReshapeEmodel/transformer_block/sequential/dense_5/Tensordot/MatMul:product:0Fmodel/transformer_block/sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������d��
Amodel/transformer_block/sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOpJmodel_transformer_block_sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2model/transformer_block/sequential/dense_5/BiasAddBiasAdd=model/transformer_block/sequential/dense_5/Tensordot:output:0Imodel/transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������d��
/model/transformer_block/sequential/dense_5/ReluRelu;model/transformer_block/sequential/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:���������d��
Cmodel/transformer_block/sequential/dense_6/Tensordot/ReadVariableOpReadVariableOpLmodel_transformer_block_sequential_dense_6_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
9model/transformer_block/sequential/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
9model/transformer_block/sequential/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
:model/transformer_block/sequential/dense_6/Tensordot/ShapeShape=model/transformer_block/sequential/dense_5/Relu:activations:0*
T0*
_output_shapes
:�
Bmodel/transformer_block/sequential/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
=model/transformer_block/sequential/dense_6/Tensordot/GatherV2GatherV2Cmodel/transformer_block/sequential/dense_6/Tensordot/Shape:output:0Bmodel/transformer_block/sequential/dense_6/Tensordot/free:output:0Kmodel/transformer_block/sequential/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Dmodel/transformer_block/sequential/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
?model/transformer_block/sequential/dense_6/Tensordot/GatherV2_1GatherV2Cmodel/transformer_block/sequential/dense_6/Tensordot/Shape:output:0Bmodel/transformer_block/sequential/dense_6/Tensordot/axes:output:0Mmodel/transformer_block/sequential/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
:model/transformer_block/sequential/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
9model/transformer_block/sequential/dense_6/Tensordot/ProdProdFmodel/transformer_block/sequential/dense_6/Tensordot/GatherV2:output:0Cmodel/transformer_block/sequential/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: �
<model/transformer_block/sequential/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
;model/transformer_block/sequential/dense_6/Tensordot/Prod_1ProdHmodel/transformer_block/sequential/dense_6/Tensordot/GatherV2_1:output:0Emodel/transformer_block/sequential/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
@model/transformer_block/sequential/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
;model/transformer_block/sequential/dense_6/Tensordot/concatConcatV2Bmodel/transformer_block/sequential/dense_6/Tensordot/free:output:0Bmodel/transformer_block/sequential/dense_6/Tensordot/axes:output:0Imodel/transformer_block/sequential/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
:model/transformer_block/sequential/dense_6/Tensordot/stackPackBmodel/transformer_block/sequential/dense_6/Tensordot/Prod:output:0Dmodel/transformer_block/sequential/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
>model/transformer_block/sequential/dense_6/Tensordot/transpose	Transpose=model/transformer_block/sequential/dense_5/Relu:activations:0Dmodel/transformer_block/sequential/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:���������d��
<model/transformer_block/sequential/dense_6/Tensordot/ReshapeReshapeBmodel/transformer_block/sequential/dense_6/Tensordot/transpose:y:0Cmodel/transformer_block/sequential/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
;model/transformer_block/sequential/dense_6/Tensordot/MatMulMatMulEmodel/transformer_block/sequential/dense_6/Tensordot/Reshape:output:0Kmodel/transformer_block/sequential/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
<model/transformer_block/sequential/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Bmodel/transformer_block/sequential/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
=model/transformer_block/sequential/dense_6/Tensordot/concat_1ConcatV2Fmodel/transformer_block/sequential/dense_6/Tensordot/GatherV2:output:0Emodel/transformer_block/sequential/dense_6/Tensordot/Const_2:output:0Kmodel/transformer_block/sequential/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
4model/transformer_block/sequential/dense_6/TensordotReshapeEmodel/transformer_block/sequential/dense_6/Tensordot/MatMul:product:0Fmodel/transformer_block/sequential/dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
Amodel/transformer_block/sequential/dense_6/BiasAdd/ReadVariableOpReadVariableOpJmodel_transformer_block_sequential_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
2model/transformer_block/sequential/dense_6/BiasAddBiasAdd=model/transformer_block/sequential/dense_6/Tensordot:output:0Imodel/transformer_block/sequential/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
*model/transformer_block/dropout_1/IdentityIdentity;model/transformer_block/sequential/dense_6/BiasAdd:output:0*
T0*+
_output_shapes
:���������d@�
model/transformer_block/add_1AddV2?model/transformer_block/layer_normalization/batchnorm/add_1:z:03model/transformer_block/dropout_1/Identity:output:0*
T0*+
_output_shapes
:���������d@�
Lmodel/transformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
:model/transformer_block/layer_normalization_1/moments/meanMean!model/transformer_block/add_1:z:0Umodel/transformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
Bmodel/transformer_block/layer_normalization_1/moments/StopGradientStopGradientCmodel/transformer_block/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
Gmodel/transformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifference!model/transformer_block/add_1:z:0Kmodel/transformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
Pmodel/transformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
>model/transformer_block/layer_normalization_1/moments/varianceMeanKmodel/transformer_block/layer_normalization_1/moments/SquaredDifference:z:0Ymodel/transformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
=model/transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
;model/transformer_block/layer_normalization_1/batchnorm/addAddV2Gmodel/transformer_block/layer_normalization_1/moments/variance:output:0Fmodel/transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
=model/transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt?model/transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpSmodel_transformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
;model/transformer_block/layer_normalization_1/batchnorm/mulMulAmodel/transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Rmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
=model/transformer_block/layer_normalization_1/batchnorm/mul_1Mul!model/transformer_block/add_1:z:0?model/transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
=model/transformer_block/layer_normalization_1/batchnorm/mul_2MulCmodel/transformer_block/layer_normalization_1/moments/mean:output:0?model/transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpOmodel_transformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
;model/transformer_block/layer_normalization_1/batchnorm/subSubNmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0Amodel/transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
=model/transformer_block/layer_normalization_1/batchnorm/add_1AddV2Amodel/transformer_block/layer_normalization_1/batchnorm/mul_1:z:0?model/transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@w
5model/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
#model/global_average_pooling1d/MeanMeanAmodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:0>model/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������@�
#model/dense_7/MatMul/ReadVariableOpReadVariableOp,model_dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model/dense_7/MatMulMatMul,model/global_average_pooling1d/Mean:output:0+model/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_7/BiasAdd/ReadVariableOpReadVariableOp-model_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_7/BiasAddBiasAddmodel/dense_7/MatMul:product:0,model/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model/dense_7/SoftmaxSoftmaxmodel/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������n
IdentityIdentitymodel/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/Tensordot/ReadVariableOp%^model/dense_7/BiasAdd/ReadVariableOp$^model/dense_7/MatMul/ReadVariableOpE^model/transformer_block/layer_normalization/batchnorm/ReadVariableOpI^model/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpG^model/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpK^model/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpQ^model/transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpS^model/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpQ^model/transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpS^model/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpQ^model/transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpS^model/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpQ^model/transformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpS^model/transformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOpB^model/transformer_block/sequential/dense_5/BiasAdd/ReadVariableOpD^model/transformer_block/sequential/dense_5/Tensordot/ReadVariableOpB^model/transformer_block/sequential/dense_6/BiasAdd/ReadVariableOpD^model/transformer_block/sequential/dense_6/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������d: : : : : : : : : : : : : : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/Tensordot/ReadVariableOp$model/dense/Tensordot/ReadVariableOp2L
$model/dense_7/BiasAdd/ReadVariableOp$model/dense_7/BiasAdd/ReadVariableOp2J
#model/dense_7/MatMul/ReadVariableOp#model/dense_7/MatMul/ReadVariableOp2�
Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOpDmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp2�
Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpHmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2�
Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpFmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2�
Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpJmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
Pmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpPmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2�
Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpRmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2�
Pmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpPmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2�
Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpRmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2�
Pmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpPmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2�
Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpRmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2�
Pmodel/transformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpPmodel/transformer_block/multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp2�
Rmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOpRmodel/transformer_block/multi_head_self_attention/dense_4/Tensordot/ReadVariableOp2�
Amodel/transformer_block/sequential/dense_5/BiasAdd/ReadVariableOpAmodel/transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp2�
Cmodel/transformer_block/sequential/dense_5/Tensordot/ReadVariableOpCmodel/transformer_block/sequential/dense_5/Tensordot/ReadVariableOp2�
Amodel/transformer_block/sequential/dense_6/BiasAdd/ReadVariableOpAmodel/transformer_block/sequential/dense_6/BiasAdd/ReadVariableOp2�
Cmodel/transformer_block/sequential/dense_6/Tensordot/ReadVariableOpCmodel/transformer_block/sequential/dense_6/Tensordot/ReadVariableOp:T P
+
_output_shapes
:���������d
!
_user_specified_name	input_1
��
�
M__inference_transformer_block_layer_call_and_return_conditional_losses_256573

inputsU
Cmulti_head_self_attention_dense_1_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_1_biasadd_readvariableop_resource:@U
Cmulti_head_self_attention_dense_2_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_2_biasadd_readvariableop_resource:@U
Cmulti_head_self_attention_dense_3_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_3_biasadd_readvariableop_resource:@U
Cmulti_head_self_attention_dense_4_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_4_biasadd_readvariableop_resource:@G
9layer_normalization_batchnorm_mul_readvariableop_resource:@C
5layer_normalization_batchnorm_readvariableop_resource:@G
4sequential_dense_5_tensordot_readvariableop_resource:	@�A
2sequential_dense_5_biasadd_readvariableop_resource:	�G
4sequential_dense_6_tensordot_readvariableop_resource:	�@@
2sequential_dense_6_biasadd_readvariableop_resource:@I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_1_batchnorm_readvariableop_resource:@
identity��,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_4/Tensordot/ReadVariableOp�)sequential/dense_5/BiasAdd/ReadVariableOp�+sequential/dense_5/Tensordot/ReadVariableOp�)sequential/dense_6/BiasAdd/ReadVariableOp�+sequential/dense_6/Tensordot/ReadVariableOpU
multi_head_self_attention/ShapeShapeinputs*
T0*
_output_shapes
:w
-multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'multi_head_self_attention/strided_sliceStridedSlice(multi_head_self_attention/Shape:output:06multi_head_self_attention/strided_slice/stack:output:08multi_head_self_attention/strided_slice/stack_1:output:08multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_1_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_1/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/free:output:0Bmulti_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0Dmulti_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_1/Tensordot/ProdProd=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_1/Tensordot/Prod_1Prod?multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_1/Tensordot/concatConcatV29multi_head_self_attention/dense_1/Tensordot/free:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0@multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_1/Tensordot/stackPack9multi_head_self_attention/dense_1/Tensordot/Prod:output:0;multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_1/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
3multi_head_self_attention/dense_1/Tensordot/ReshapeReshape9multi_head_self_attention/dense_1/Tensordot/transpose:y:0:multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_1/Tensordot/MatMulMatMul<multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_1/TensordotReshape<multi_head_self_attention/dense_1/Tensordot/MatMul:product:0=multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_1/BiasAddBiasAdd4multi_head_self_attention/dense_1/Tensordot:output:0@multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_2/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/free:output:0Bmulti_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0Dmulti_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_2/Tensordot/ProdProd=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_2/Tensordot/Prod_1Prod?multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_2/Tensordot/concatConcatV29multi_head_self_attention/dense_2/Tensordot/free:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0@multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_2/Tensordot/stackPack9multi_head_self_attention/dense_2/Tensordot/Prod:output:0;multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_2/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
3multi_head_self_attention/dense_2/Tensordot/ReshapeReshape9multi_head_self_attention/dense_2/Tensordot/transpose:y:0:multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_2/Tensordot/MatMulMatMul<multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_2/TensordotReshape<multi_head_self_attention/dense_2/Tensordot/MatMul:product:0=multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_2/BiasAddBiasAdd4multi_head_self_attention/dense_2/Tensordot:output:0@multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_3/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/free:output:0Bmulti_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0Dmulti_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_3/Tensordot/ProdProd=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_3/Tensordot/Prod_1Prod?multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_3/Tensordot/concatConcatV29multi_head_self_attention/dense_3/Tensordot/free:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0@multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_3/Tensordot/stackPack9multi_head_self_attention/dense_3/Tensordot/Prod:output:0;multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_3/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
3multi_head_self_attention/dense_3/Tensordot/ReshapeReshape9multi_head_self_attention/dense_3/Tensordot/transpose:y:0:multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_3/Tensordot/MatMulMatMul<multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_3/TensordotReshape<multi_head_self_attention/dense_3/Tensordot/MatMul:product:0=multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_3/BiasAddBiasAdd4multi_head_self_attention/dense_3/Tensordot:output:0@multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@t
)multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������k
)multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :k
)multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
'multi_head_self_attention/Reshape/shapePack0multi_head_self_attention/strided_slice:output:02multi_head_self_attention/Reshape/shape/1:output:02multi_head_self_attention/Reshape/shape/2:output:02multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
!multi_head_self_attention/ReshapeReshape2multi_head_self_attention/dense_1/BiasAdd:output:00multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
(multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
#multi_head_self_attention/transpose	Transpose*multi_head_self_attention/Reshape:output:01multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"������������������v
+multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
)multi_head_self_attention/Reshape_1/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_1/shape/1:output:04multi_head_self_attention/Reshape_1/shape/2:output:04multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_1Reshape2multi_head_self_attention/dense_2/BiasAdd:output:02multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
*multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_1	Transpose,multi_head_self_attention/Reshape_1:output:03multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"������������������v
+multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
)multi_head_self_attention/Reshape_2/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_2/shape/1:output:04multi_head_self_attention/Reshape_2/shape/2:output:04multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_2Reshape2multi_head_self_attention/dense_3/BiasAdd:output:02multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
*multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_2	Transpose,multi_head_self_attention/Reshape_2:output:03multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
 multi_head_self_attention/MatMulBatchMatMulV2'multi_head_self_attention/transpose:y:0)multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(b
 multi_head_self_attention/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
multi_head_self_attention/CastCast)multi_head_self_attention/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: k
multi_head_self_attention/SqrtSqrt"multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
!multi_head_self_attention/truedivRealDiv)multi_head_self_attention/MatMul:output:0"multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
!multi_head_self_attention/SoftmaxSoftmax%multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
"multi_head_self_attention/MatMul_1BatchMatMulV2+multi_head_self_attention/Softmax:softmax:0)multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"�������������������
*multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_3	Transpose+multi_head_self_attention/MatMul_1:output:03multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"������������������v
+multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
)multi_head_self_attention/Reshape_3/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_3/shape/1:output:04multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_3Reshape)multi_head_self_attention/transpose_3:y:02multi_head_self_attention/Reshape_3/shape:output:0*
T0*4
_output_shapes"
 :������������������@�
:multi_head_self_attention/dense_4/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
1multi_head_self_attention/dense_4/Tensordot/ShapeShape,multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_4/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_4/Tensordot/Shape:output:09multi_head_self_attention/dense_4/Tensordot/free:output:0Bmulti_head_self_attention/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_4/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_4/Tensordot/Shape:output:09multi_head_self_attention/dense_4/Tensordot/axes:output:0Dmulti_head_self_attention/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_4/Tensordot/ProdProd=multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_4/Tensordot/Prod_1Prod?multi_head_self_attention/dense_4/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_4/Tensordot/concatConcatV29multi_head_self_attention/dense_4/Tensordot/free:output:09multi_head_self_attention/dense_4/Tensordot/axes:output:0@multi_head_self_attention/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_4/Tensordot/stackPack9multi_head_self_attention/dense_4/Tensordot/Prod:output:0;multi_head_self_attention/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_4/Tensordot/transpose	Transpose,multi_head_self_attention/Reshape_3:output:0;multi_head_self_attention/dense_4/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������@�
3multi_head_self_attention/dense_4/Tensordot/ReshapeReshape9multi_head_self_attention/dense_4/Tensordot/transpose:y:0:multi_head_self_attention/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_4/Tensordot/MatMulMatMul<multi_head_self_attention/dense_4/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_4/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_4/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_4/TensordotReshape<multi_head_self_attention/dense_4/Tensordot/MatMul:product:0=multi_head_self_attention/dense_4/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������@�
8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_4/BiasAddBiasAdd4multi_head_self_attention/dense_4/Tensordot:output:0@multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������@Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout/dropout/MulMul2multi_head_self_attention/dense_4/BiasAdd:output:0dropout/dropout/Const:output:0*
T0*4
_output_shapes"
 :������������������@w
dropout/dropout/ShapeShape2multi_head_self_attention/dense_4/BiasAdd:output:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*4
_output_shapes"
 :������������������@*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������@�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������@�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*4
_output_shapes"
 :������������������@e
addAddV2inputsdropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:���������d@|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@�
+sequential/dense_5/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0k
!sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
"sequential/dense_5/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:l
*sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/GatherV2GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/free:output:03sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_5/Tensordot/GatherV2_1GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/axes:output:05sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_5/Tensordot/ProdProd.sequential/dense_5/Tensordot/GatherV2:output:0+sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_5/Tensordot/Prod_1Prod0sequential/dense_5/Tensordot/GatherV2_1:output:0-sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_5/Tensordot/concatConcatV2*sequential/dense_5/Tensordot/free:output:0*sequential/dense_5/Tensordot/axes:output:01sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_5/Tensordot/stackPack*sequential/dense_5/Tensordot/Prod:output:0,sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_5/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0,sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
$sequential/dense_5/Tensordot/ReshapeReshape*sequential/dense_5/Tensordot/transpose:y:0+sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_5/Tensordot/MatMulMatMul-sequential/dense_5/Tensordot/Reshape:output:03sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
$sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�l
*sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/concat_1ConcatV2.sequential/dense_5/Tensordot/GatherV2:output:0-sequential/dense_5/Tensordot/Const_2:output:03sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_5/TensordotReshape-sequential/dense_5/Tensordot/MatMul:product:0.sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������d��
)sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_5/BiasAddBiasAdd%sequential/dense_5/Tensordot:output:01sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������d�{
sequential/dense_5/ReluRelu#sequential/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:���������d��
+sequential/dense_6/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_6_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0k
!sequential/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
"sequential/dense_6/Tensordot/ShapeShape%sequential/dense_5/Relu:activations:0*
T0*
_output_shapes
:l
*sequential/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_6/Tensordot/GatherV2GatherV2+sequential/dense_6/Tensordot/Shape:output:0*sequential/dense_6/Tensordot/free:output:03sequential/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_6/Tensordot/GatherV2_1GatherV2+sequential/dense_6/Tensordot/Shape:output:0*sequential/dense_6/Tensordot/axes:output:05sequential/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_6/Tensordot/ProdProd.sequential/dense_6/Tensordot/GatherV2:output:0+sequential/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_6/Tensordot/Prod_1Prod0sequential/dense_6/Tensordot/GatherV2_1:output:0-sequential/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_6/Tensordot/concatConcatV2*sequential/dense_6/Tensordot/free:output:0*sequential/dense_6/Tensordot/axes:output:01sequential/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_6/Tensordot/stackPack*sequential/dense_6/Tensordot/Prod:output:0,sequential/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_6/Tensordot/transpose	Transpose%sequential/dense_5/Relu:activations:0,sequential/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:���������d��
$sequential/dense_6/Tensordot/ReshapeReshape*sequential/dense_6/Tensordot/transpose:y:0+sequential/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_6/Tensordot/MatMulMatMul-sequential/dense_6/Tensordot/Reshape:output:03sequential/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@n
$sequential/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@l
*sequential/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_6/Tensordot/concat_1ConcatV2.sequential/dense_6/Tensordot/GatherV2:output:0-sequential/dense_6/Tensordot/Const_2:output:03sequential/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_6/TensordotReshape-sequential/dense_6/Tensordot/MatMul:product:0.sequential/dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
)sequential/dense_6/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/dense_6/BiasAddBiasAdd%sequential/dense_6/Tensordot:output:01sequential/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout_1/dropout/MulMul#sequential/dense_6/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:���������d@j
dropout_1/dropout/ShapeShape#sequential/dense_6/BiasAdd:output:0*
T0*
_output_shapes
:�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:���������d@*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������d@�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������d@�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:���������d@�
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:���������d@~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@|
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:���������d@�
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_1/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_2/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_3/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_4/Tensordot/ReadVariableOp*^sequential/dense_5/BiasAdd/ReadVariableOp,^sequential/dense_5/Tensordot/ReadVariableOp*^sequential/dense_6/BiasAdd/ReadVariableOp,^sequential/dense_6/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������d@: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_4/Tensordot/ReadVariableOp:multi_head_self_attention/dense_4/Tensordot/ReadVariableOp2V
)sequential/dense_5/BiasAdd/ReadVariableOp)sequential/dense_5/BiasAdd/ReadVariableOp2Z
+sequential/dense_5/Tensordot/ReadVariableOp+sequential/dense_5/Tensordot/ReadVariableOp2V
)sequential/dense_6/BiasAdd/ReadVariableOp)sequential/dense_6/BiasAdd/ReadVariableOp2Z
+sequential/dense_6/Tensordot/ReadVariableOp+sequential/dense_6/Tensordot/ReadVariableOp:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
�
�
A__inference_dense_layer_call_and_return_conditional_losses_254289

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������d�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������d@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
+__inference_sequential_layer_call_fn_256630

inputs
unknown:	@�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_254187s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs
Ƞ
�4
"__inference__traced_restore_257270
file_prefix/
assignvariableop_dense_kernel:@+
assignvariableop_1_dense_bias:@3
!assignvariableop_2_dense_7_kernel:@-
assignvariableop_3_dense_7_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: _
Massignvariableop_9_transformer_block_multi_head_self_attention_dense_1_kernel:@@Z
Lassignvariableop_10_transformer_block_multi_head_self_attention_dense_1_bias:@`
Nassignvariableop_11_transformer_block_multi_head_self_attention_dense_2_kernel:@@Z
Lassignvariableop_12_transformer_block_multi_head_self_attention_dense_2_bias:@`
Nassignvariableop_13_transformer_block_multi_head_self_attention_dense_3_kernel:@@Z
Lassignvariableop_14_transformer_block_multi_head_self_attention_dense_3_bias:@`
Nassignvariableop_15_transformer_block_multi_head_self_attention_dense_4_kernel:@@Z
Lassignvariableop_16_transformer_block_multi_head_self_attention_dense_4_bias:@5
"assignvariableop_17_dense_5_kernel:	@�/
 assignvariableop_18_dense_5_bias:	�5
"assignvariableop_19_dense_6_kernel:	�@.
 assignvariableop_20_dense_6_bias:@M
?assignvariableop_21_transformer_block_layer_normalization_gamma:@L
>assignvariableop_22_transformer_block_layer_normalization_beta:@O
Aassignvariableop_23_transformer_block_layer_normalization_1_gamma:@N
@assignvariableop_24_transformer_block_layer_normalization_1_beta:@#
assignvariableop_25_total: #
assignvariableop_26_count: %
assignvariableop_27_total_1: %
assignvariableop_28_count_1: 9
'assignvariableop_29_adam_dense_kernel_m:@3
%assignvariableop_30_adam_dense_bias_m:@;
)assignvariableop_31_adam_dense_7_kernel_m:@5
'assignvariableop_32_adam_dense_7_bias_m:g
Uassignvariableop_33_adam_transformer_block_multi_head_self_attention_dense_1_kernel_m:@@a
Sassignvariableop_34_adam_transformer_block_multi_head_self_attention_dense_1_bias_m:@g
Uassignvariableop_35_adam_transformer_block_multi_head_self_attention_dense_2_kernel_m:@@a
Sassignvariableop_36_adam_transformer_block_multi_head_self_attention_dense_2_bias_m:@g
Uassignvariableop_37_adam_transformer_block_multi_head_self_attention_dense_3_kernel_m:@@a
Sassignvariableop_38_adam_transformer_block_multi_head_self_attention_dense_3_bias_m:@g
Uassignvariableop_39_adam_transformer_block_multi_head_self_attention_dense_4_kernel_m:@@a
Sassignvariableop_40_adam_transformer_block_multi_head_self_attention_dense_4_bias_m:@<
)assignvariableop_41_adam_dense_5_kernel_m:	@�6
'assignvariableop_42_adam_dense_5_bias_m:	�<
)assignvariableop_43_adam_dense_6_kernel_m:	�@5
'assignvariableop_44_adam_dense_6_bias_m:@T
Fassignvariableop_45_adam_transformer_block_layer_normalization_gamma_m:@S
Eassignvariableop_46_adam_transformer_block_layer_normalization_beta_m:@V
Hassignvariableop_47_adam_transformer_block_layer_normalization_1_gamma_m:@U
Gassignvariableop_48_adam_transformer_block_layer_normalization_1_beta_m:@9
'assignvariableop_49_adam_dense_kernel_v:@3
%assignvariableop_50_adam_dense_bias_v:@;
)assignvariableop_51_adam_dense_7_kernel_v:@5
'assignvariableop_52_adam_dense_7_bias_v:g
Uassignvariableop_53_adam_transformer_block_multi_head_self_attention_dense_1_kernel_v:@@a
Sassignvariableop_54_adam_transformer_block_multi_head_self_attention_dense_1_bias_v:@g
Uassignvariableop_55_adam_transformer_block_multi_head_self_attention_dense_2_kernel_v:@@a
Sassignvariableop_56_adam_transformer_block_multi_head_self_attention_dense_2_bias_v:@g
Uassignvariableop_57_adam_transformer_block_multi_head_self_attention_dense_3_kernel_v:@@a
Sassignvariableop_58_adam_transformer_block_multi_head_self_attention_dense_3_bias_v:@g
Uassignvariableop_59_adam_transformer_block_multi_head_self_attention_dense_4_kernel_v:@@a
Sassignvariableop_60_adam_transformer_block_multi_head_self_attention_dense_4_bias_v:@<
)assignvariableop_61_adam_dense_5_kernel_v:	@�6
'assignvariableop_62_adam_dense_5_bias_v:	�<
)assignvariableop_63_adam_dense_6_kernel_v:	�@5
'assignvariableop_64_adam_dense_6_bias_v:@T
Fassignvariableop_65_adam_transformer_block_layer_normalization_gamma_v:@S
Eassignvariableop_66_adam_transformer_block_layer_normalization_beta_v:@V
Hassignvariableop_67_adam_transformer_block_layer_normalization_1_gamma_v:@U
Gassignvariableop_68_adam_transformer_block_layer_normalization_1_beta_v:@
identity_70��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*� 
value� B� FB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*�
value�B�FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*T
dtypesJ
H2F	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpMassignvariableop_9_transformer_block_multi_head_self_attention_dense_1_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpLassignvariableop_10_transformer_block_multi_head_self_attention_dense_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpNassignvariableop_11_transformer_block_multi_head_self_attention_dense_2_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpLassignvariableop_12_transformer_block_multi_head_self_attention_dense_2_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpNassignvariableop_13_transformer_block_multi_head_self_attention_dense_3_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpLassignvariableop_14_transformer_block_multi_head_self_attention_dense_3_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpNassignvariableop_15_transformer_block_multi_head_self_attention_dense_4_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpLassignvariableop_16_transformer_block_multi_head_self_attention_dense_4_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp"assignvariableop_17_dense_5_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp assignvariableop_18_dense_5_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_6_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp assignvariableop_20_dense_6_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp?assignvariableop_21_transformer_block_layer_normalization_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp>assignvariableop_22_transformer_block_layer_normalization_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpAassignvariableop_23_transformer_block_layer_normalization_1_gammaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp@assignvariableop_24_transformer_block_layer_normalization_1_betaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp%assignvariableop_30_adam_dense_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_7_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_7_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpUassignvariableop_33_adam_transformer_block_multi_head_self_attention_dense_1_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpSassignvariableop_34_adam_transformer_block_multi_head_self_attention_dense_1_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpUassignvariableop_35_adam_transformer_block_multi_head_self_attention_dense_2_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpSassignvariableop_36_adam_transformer_block_multi_head_self_attention_dense_2_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpUassignvariableop_37_adam_transformer_block_multi_head_self_attention_dense_3_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpSassignvariableop_38_adam_transformer_block_multi_head_self_attention_dense_3_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpUassignvariableop_39_adam_transformer_block_multi_head_self_attention_dense_4_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpSassignvariableop_40_adam_transformer_block_multi_head_self_attention_dense_4_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_5_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_5_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_6_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_6_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpFassignvariableop_45_adam_transformer_block_layer_normalization_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpEassignvariableop_46_adam_transformer_block_layer_normalization_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpHassignvariableop_47_adam_transformer_block_layer_normalization_1_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpGassignvariableop_48_adam_transformer_block_layer_normalization_1_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_dense_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp%assignvariableop_50_adam_dense_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_7_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_7_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpUassignvariableop_53_adam_transformer_block_multi_head_self_attention_dense_1_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpSassignvariableop_54_adam_transformer_block_multi_head_self_attention_dense_1_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpUassignvariableop_55_adam_transformer_block_multi_head_self_attention_dense_2_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOpSassignvariableop_56_adam_transformer_block_multi_head_self_attention_dense_2_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpUassignvariableop_57_adam_transformer_block_multi_head_self_attention_dense_3_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOpSassignvariableop_58_adam_transformer_block_multi_head_self_attention_dense_3_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOpUassignvariableop_59_adam_transformer_block_multi_head_self_attention_dense_4_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOpSassignvariableop_60_adam_transformer_block_multi_head_self_attention_dense_4_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_dense_5_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_dense_5_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp)assignvariableop_63_adam_dense_6_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp'assignvariableop_64_adam_dense_6_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOpFassignvariableop_65_adam_transformer_block_layer_normalization_gamma_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOpEassignvariableop_66_adam_transformer_block_layer_normalization_beta_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOpHassignvariableop_67_adam_transformer_block_layer_normalization_1_gamma_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOpGassignvariableop_68_adam_transformer_block_layer_normalization_1_beta_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_69Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_70IdentityIdentity_69:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_70Identity_70:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
p
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_254249

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
��
�
M__inference_transformer_block_layer_call_and_return_conditional_losses_256319

inputsU
Cmulti_head_self_attention_dense_1_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_1_biasadd_readvariableop_resource:@U
Cmulti_head_self_attention_dense_2_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_2_biasadd_readvariableop_resource:@U
Cmulti_head_self_attention_dense_3_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_3_biasadd_readvariableop_resource:@U
Cmulti_head_self_attention_dense_4_tensordot_readvariableop_resource:@@O
Amulti_head_self_attention_dense_4_biasadd_readvariableop_resource:@G
9layer_normalization_batchnorm_mul_readvariableop_resource:@C
5layer_normalization_batchnorm_readvariableop_resource:@G
4sequential_dense_5_tensordot_readvariableop_resource:	@�A
2sequential_dense_5_biasadd_readvariableop_resource:	�G
4sequential_dense_6_tensordot_readvariableop_resource:	�@@
2sequential_dense_6_biasadd_readvariableop_resource:@I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_1_batchnorm_readvariableop_resource:@
identity��,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_4/Tensordot/ReadVariableOp�)sequential/dense_5/BiasAdd/ReadVariableOp�+sequential/dense_5/Tensordot/ReadVariableOp�)sequential/dense_6/BiasAdd/ReadVariableOp�+sequential/dense_6/Tensordot/ReadVariableOpU
multi_head_self_attention/ShapeShapeinputs*
T0*
_output_shapes
:w
-multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'multi_head_self_attention/strided_sliceStridedSlice(multi_head_self_attention/Shape:output:06multi_head_self_attention/strided_slice/stack:output:08multi_head_self_attention/strided_slice/stack_1:output:08multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_1_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_1/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/free:output:0Bmulti_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0Dmulti_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_1/Tensordot/ProdProd=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_1/Tensordot/Prod_1Prod?multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_1/Tensordot/concatConcatV29multi_head_self_attention/dense_1/Tensordot/free:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0@multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_1/Tensordot/stackPack9multi_head_self_attention/dense_1/Tensordot/Prod:output:0;multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_1/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
3multi_head_self_attention/dense_1/Tensordot/ReshapeReshape9multi_head_self_attention/dense_1/Tensordot/transpose:y:0:multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_1/Tensordot/MatMulMatMul<multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_1/TensordotReshape<multi_head_self_attention/dense_1/Tensordot/MatMul:product:0=multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_1/BiasAddBiasAdd4multi_head_self_attention/dense_1/Tensordot:output:0@multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_2/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/free:output:0Bmulti_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0Dmulti_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_2/Tensordot/ProdProd=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_2/Tensordot/Prod_1Prod?multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_2/Tensordot/concatConcatV29multi_head_self_attention/dense_2/Tensordot/free:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0@multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_2/Tensordot/stackPack9multi_head_self_attention/dense_2/Tensordot/Prod:output:0;multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_2/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
3multi_head_self_attention/dense_2/Tensordot/ReshapeReshape9multi_head_self_attention/dense_2/Tensordot/transpose:y:0:multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_2/Tensordot/MatMulMatMul<multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_2/TensordotReshape<multi_head_self_attention/dense_2/Tensordot/MatMul:product:0=multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_2/BiasAddBiasAdd4multi_head_self_attention/dense_2/Tensordot:output:0@multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_3/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/free:output:0Bmulti_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0Dmulti_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_3/Tensordot/ProdProd=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_3/Tensordot/Prod_1Prod?multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_3/Tensordot/concatConcatV29multi_head_self_attention/dense_3/Tensordot/free:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0@multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_3/Tensordot/stackPack9multi_head_self_attention/dense_3/Tensordot/Prod:output:0;multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_3/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
3multi_head_self_attention/dense_3/Tensordot/ReshapeReshape9multi_head_self_attention/dense_3/Tensordot/transpose:y:0:multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_3/Tensordot/MatMulMatMul<multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_3/TensordotReshape<multi_head_self_attention/dense_3/Tensordot/MatMul:product:0=multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_3/BiasAddBiasAdd4multi_head_self_attention/dense_3/Tensordot:output:0@multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@t
)multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������k
)multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :k
)multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
'multi_head_self_attention/Reshape/shapePack0multi_head_self_attention/strided_slice:output:02multi_head_self_attention/Reshape/shape/1:output:02multi_head_self_attention/Reshape/shape/2:output:02multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
!multi_head_self_attention/ReshapeReshape2multi_head_self_attention/dense_1/BiasAdd:output:00multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
(multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
#multi_head_self_attention/transpose	Transpose*multi_head_self_attention/Reshape:output:01multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"������������������v
+multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
)multi_head_self_attention/Reshape_1/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_1/shape/1:output:04multi_head_self_attention/Reshape_1/shape/2:output:04multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_1Reshape2multi_head_self_attention/dense_2/BiasAdd:output:02multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
*multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_1	Transpose,multi_head_self_attention/Reshape_1:output:03multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"������������������v
+multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
)multi_head_self_attention/Reshape_2/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_2/shape/1:output:04multi_head_self_attention/Reshape_2/shape/2:output:04multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_2Reshape2multi_head_self_attention/dense_3/BiasAdd:output:02multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
*multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_2	Transpose,multi_head_self_attention/Reshape_2:output:03multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"�������������������
 multi_head_self_attention/MatMulBatchMatMulV2'multi_head_self_attention/transpose:y:0)multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(b
 multi_head_self_attention/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
multi_head_self_attention/CastCast)multi_head_self_attention/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: k
multi_head_self_attention/SqrtSqrt"multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
!multi_head_self_attention/truedivRealDiv)multi_head_self_attention/MatMul:output:0"multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
!multi_head_self_attention/SoftmaxSoftmax%multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
"multi_head_self_attention/MatMul_1BatchMatMulV2+multi_head_self_attention/Softmax:softmax:0)multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"�������������������
*multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_3	Transpose+multi_head_self_attention/MatMul_1:output:03multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"������������������v
+multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
)multi_head_self_attention/Reshape_3/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_3/shape/1:output:04multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_3Reshape)multi_head_self_attention/transpose_3:y:02multi_head_self_attention/Reshape_3/shape:output:0*
T0*4
_output_shapes"
 :������������������@�
:multi_head_self_attention/dense_4/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0z
0multi_head_self_attention/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
1multi_head_self_attention/dense_4/Tensordot/ShapeShape,multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_4/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_4/Tensordot/Shape:output:09multi_head_self_attention/dense_4/Tensordot/free:output:0Bmulti_head_self_attention/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_4/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_4/Tensordot/Shape:output:09multi_head_self_attention/dense_4/Tensordot/axes:output:0Dmulti_head_self_attention/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_4/Tensordot/ProdProd=multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_4/Tensordot/Prod_1Prod?multi_head_self_attention/dense_4/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_4/Tensordot/concatConcatV29multi_head_self_attention/dense_4/Tensordot/free:output:09multi_head_self_attention/dense_4/Tensordot/axes:output:0@multi_head_self_attention/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_4/Tensordot/stackPack9multi_head_self_attention/dense_4/Tensordot/Prod:output:0;multi_head_self_attention/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_4/Tensordot/transpose	Transpose,multi_head_self_attention/Reshape_3:output:0;multi_head_self_attention/dense_4/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������@�
3multi_head_self_attention/dense_4/Tensordot/ReshapeReshape9multi_head_self_attention/dense_4/Tensordot/transpose:y:0:multi_head_self_attention/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_4/Tensordot/MatMulMatMul<multi_head_self_attention/dense_4/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
3multi_head_self_attention/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@{
9multi_head_self_attention/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_4/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_4/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_4/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_4/TensordotReshape<multi_head_self_attention/dense_4/Tensordot/MatMul:product:0=multi_head_self_attention/dense_4/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������@�
8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
)multi_head_self_attention/dense_4/BiasAddBiasAdd4multi_head_self_attention/dense_4/Tensordot:output:0@multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������@�
dropout/IdentityIdentity2multi_head_self_attention/dense_4/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������@e
addAddV2inputsdropout/Identity:output:0*
T0*+
_output_shapes
:���������d@|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@�
+sequential/dense_5/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0k
!sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
"sequential/dense_5/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:l
*sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/GatherV2GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/free:output:03sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_5/Tensordot/GatherV2_1GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/axes:output:05sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_5/Tensordot/ProdProd.sequential/dense_5/Tensordot/GatherV2:output:0+sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_5/Tensordot/Prod_1Prod0sequential/dense_5/Tensordot/GatherV2_1:output:0-sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_5/Tensordot/concatConcatV2*sequential/dense_5/Tensordot/free:output:0*sequential/dense_5/Tensordot/axes:output:01sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_5/Tensordot/stackPack*sequential/dense_5/Tensordot/Prod:output:0,sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_5/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0,sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d@�
$sequential/dense_5/Tensordot/ReshapeReshape*sequential/dense_5/Tensordot/transpose:y:0+sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_5/Tensordot/MatMulMatMul-sequential/dense_5/Tensordot/Reshape:output:03sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
$sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�l
*sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/concat_1ConcatV2.sequential/dense_5/Tensordot/GatherV2:output:0-sequential/dense_5/Tensordot/Const_2:output:03sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_5/TensordotReshape-sequential/dense_5/Tensordot/MatMul:product:0.sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������d��
)sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_5/BiasAddBiasAdd%sequential/dense_5/Tensordot:output:01sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������d�{
sequential/dense_5/ReluRelu#sequential/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:���������d��
+sequential/dense_6/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_6_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0k
!sequential/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
"sequential/dense_6/Tensordot/ShapeShape%sequential/dense_5/Relu:activations:0*
T0*
_output_shapes
:l
*sequential/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_6/Tensordot/GatherV2GatherV2+sequential/dense_6/Tensordot/Shape:output:0*sequential/dense_6/Tensordot/free:output:03sequential/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_6/Tensordot/GatherV2_1GatherV2+sequential/dense_6/Tensordot/Shape:output:0*sequential/dense_6/Tensordot/axes:output:05sequential/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_6/Tensordot/ProdProd.sequential/dense_6/Tensordot/GatherV2:output:0+sequential/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_6/Tensordot/Prod_1Prod0sequential/dense_6/Tensordot/GatherV2_1:output:0-sequential/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_6/Tensordot/concatConcatV2*sequential/dense_6/Tensordot/free:output:0*sequential/dense_6/Tensordot/axes:output:01sequential/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_6/Tensordot/stackPack*sequential/dense_6/Tensordot/Prod:output:0,sequential/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_6/Tensordot/transpose	Transpose%sequential/dense_5/Relu:activations:0,sequential/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:���������d��
$sequential/dense_6/Tensordot/ReshapeReshape*sequential/dense_6/Tensordot/transpose:y:0+sequential/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_6/Tensordot/MatMulMatMul-sequential/dense_6/Tensordot/Reshape:output:03sequential/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@n
$sequential/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@l
*sequential/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_6/Tensordot/concat_1ConcatV2.sequential/dense_6/Tensordot/GatherV2:output:0-sequential/dense_6/Tensordot/Const_2:output:03sequential/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_6/TensordotReshape-sequential/dense_6/Tensordot/MatMul:product:0.sequential/dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d@�
)sequential/dense_6/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/dense_6/BiasAddBiasAdd%sequential/dense_6/Tensordot:output:01sequential/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@y
dropout_1/IdentityIdentity#sequential/dense_6/BiasAdd:output:0*
T0*+
_output_shapes
:���������d@�
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*+
_output_shapes
:���������d@~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:���������d�
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������d@�
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������d*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������d�
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:���������d�
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d@�
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������d@�
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:���������d@�
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������d@|
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:���������d@�
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_1/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_2/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_3/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_4/Tensordot/ReadVariableOp*^sequential/dense_5/BiasAdd/ReadVariableOp,^sequential/dense_5/Tensordot/ReadVariableOp*^sequential/dense_6/BiasAdd/ReadVariableOp,^sequential/dense_6/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������d@: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_4/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_4/Tensordot/ReadVariableOp:multi_head_self_attention/dense_4/Tensordot/ReadVariableOp2V
)sequential/dense_5/BiasAdd/ReadVariableOp)sequential/dense_5/BiasAdd/ReadVariableOp2Z
+sequential/dense_5/Tensordot/ReadVariableOp+sequential/dense_5/Tensordot/ReadVariableOp2V
)sequential/dense_6/BiasAdd/ReadVariableOp)sequential/dense_6/BiasAdd/ReadVariableOp2Z
+sequential/dense_6/Tensordot/ReadVariableOp+sequential/dense_6/Tensordot/ReadVariableOp:S O
+
_output_shapes
:���������d@
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
?
input_14
serving_default_input_1:0���������d;
dense_70
StatefulPartitionedCall:0���������tensorflow/serving/predict:�
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	attention
ffn

layernorm1

layernorm2
dropout1
dropout2
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
�

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
�
1iter

2beta_1

3beta_2
	4decay
5learning_ratem�m�)m�*m�6m�7m�8m�9m�:m�;m�<m�=m�>m�?m�@m�Am�Bm�Cm�Dm�Em�v�v�)v�*v�6v�7v�8v�9v�:v�;v�<v�=v�>v�?v�@v�Av�Bv�Cv�Dv�Ev�"
	optimizer
�
0
1
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
)18
*19"
trackable_list_wrapper
�
0
1
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
)18
*19"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
&__inference_model_layer_call_fn_254631
&__inference_model_layer_call_fn_255310
&__inference_model_layer_call_fn_255355
&__inference_model_layer_call_fn_255163�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
A__inference_model_layer_call_and_return_conditional_losses_255630
A__inference_model_layer_call_and_return_conditional_losses_255919
A__inference_model_layer_call_and_return_conditional_losses_255211
A__inference_model_layer_call_and_return_conditional_losses_255259�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
!__inference__wrapped_model_254046input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
Kserving_default"
signature_map
:@2dense/kernel
:@2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
&__inference_dense_layer_call_fn_255975�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_layer_call_and_return_conditional_losses_256005�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
Qwq
Rwk
Swv
Tcombine_heads
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
�
[layer_with_weights-0
[layer-0
\layer_with_weights-1
\layer-1
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
caxis
	Bgamma
Cbeta
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
�
jaxis
	Dgamma
Ebeta
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
�
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u_random_generator
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_layer
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|_random_generator
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
�
60
71
82
93
:4
;5
<6
=7
>8
?9
@10
A11
B12
C13
D14
E15"
trackable_list_wrapper
�
60
71
82
93
:4
;5
<6
=7
>8
?9
@10
A11
B12
C13
D14
E15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�2�
2__inference_transformer_block_layer_call_fn_256042
2__inference_transformer_block_layer_call_fn_256079�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
M__inference_transformer_block_layer_call_and_return_conditional_losses_256319
M__inference_transformer_block_layer_call_and_return_conditional_losses_256573�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�2�
9__inference_global_average_pooling1d_layer_call_fn_256578�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_256584�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 :@2dense_7/kernel
:2dense_7/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_dense_7_layer_call_fn_256593�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_7_layer_call_and_return_conditional_losses_256604�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
L:J@@2:transformer_block/multi_head_self_attention/dense_1/kernel
F:D@28transformer_block/multi_head_self_attention/dense_1/bias
L:J@@2:transformer_block/multi_head_self_attention/dense_2/kernel
F:D@28transformer_block/multi_head_self_attention/dense_2/bias
L:J@@2:transformer_block/multi_head_self_attention/dense_3/kernel
F:D@28transformer_block/multi_head_self_attention/dense_3/bias
L:J@@2:transformer_block/multi_head_self_attention/dense_4/kernel
F:D@28transformer_block/multi_head_self_attention/dense_4/bias
!:	@�2dense_5/kernel
:�2dense_5/bias
!:	�@2dense_6/kernel
:@2dense_6/bias
9:7@2+transformer_block/layer_normalization/gamma
8:6@2*transformer_block/layer_normalization/beta
;:9@2-transformer_block/layer_normalization_1/gamma
::8@2,transformer_block/layer_normalization_1/beta
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_signature_wrapper_255966input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�

6kernel
7bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

8kernel
9bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

:kernel
;bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

<kernel
=bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
X
60
71
82
93
:4
;5
<6
=7"
trackable_list_wrapper
X
60
71
82
93
:4
;5
<6
=7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec8
args0�-
jself
jvalues
jkeys
	jqueries
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec8
args0�-
jself
jvalues
jkeys
	jqueries
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�

>kernel
?bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

@kernel
Abias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
<
>0
?1
@2
A3"
trackable_list_wrapper
<
>0
?1
@2
A3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
�2�
+__inference_sequential_layer_call_fn_254138
+__inference_sequential_layer_call_fn_256617
+__inference_sequential_layer_call_fn_256630
+__inference_sequential_layer_call_fn_254211�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_sequential_layer_call_and_return_conditional_losses_256687
F__inference_sequential_layer_call_and_return_conditional_losses_256744
F__inference_sequential_layer_call_and_return_conditional_losses_254225
F__inference_sequential_layer_call_and_return_conditional_losses_254239�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
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
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
<
Q0
R1
S2
T3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_dense_5_layer_call_fn_256753�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_5_layer_call_and_return_conditional_losses_256784�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_dense_6_layer_call_fn_256793�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_6_layer_call_and_return_conditional_losses_256823�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
.
[0
\1"
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
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
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
#:!@2Adam/dense/kernel/m
:@2Adam/dense/bias/m
%:#@2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
Q:O@@2AAdam/transformer_block/multi_head_self_attention/dense_1/kernel/m
K:I@2?Adam/transformer_block/multi_head_self_attention/dense_1/bias/m
Q:O@@2AAdam/transformer_block/multi_head_self_attention/dense_2/kernel/m
K:I@2?Adam/transformer_block/multi_head_self_attention/dense_2/bias/m
Q:O@@2AAdam/transformer_block/multi_head_self_attention/dense_3/kernel/m
K:I@2?Adam/transformer_block/multi_head_self_attention/dense_3/bias/m
Q:O@@2AAdam/transformer_block/multi_head_self_attention/dense_4/kernel/m
K:I@2?Adam/transformer_block/multi_head_self_attention/dense_4/bias/m
&:$	@�2Adam/dense_5/kernel/m
 :�2Adam/dense_5/bias/m
&:$	�@2Adam/dense_6/kernel/m
:@2Adam/dense_6/bias/m
>:<@22Adam/transformer_block/layer_normalization/gamma/m
=:;@21Adam/transformer_block/layer_normalization/beta/m
@:>@24Adam/transformer_block/layer_normalization_1/gamma/m
?:=@23Adam/transformer_block/layer_normalization_1/beta/m
#:!@2Adam/dense/kernel/v
:@2Adam/dense/bias/v
%:#@2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
Q:O@@2AAdam/transformer_block/multi_head_self_attention/dense_1/kernel/v
K:I@2?Adam/transformer_block/multi_head_self_attention/dense_1/bias/v
Q:O@@2AAdam/transformer_block/multi_head_self_attention/dense_2/kernel/v
K:I@2?Adam/transformer_block/multi_head_self_attention/dense_2/bias/v
Q:O@@2AAdam/transformer_block/multi_head_self_attention/dense_3/kernel/v
K:I@2?Adam/transformer_block/multi_head_self_attention/dense_3/bias/v
Q:O@@2AAdam/transformer_block/multi_head_self_attention/dense_4/kernel/v
K:I@2?Adam/transformer_block/multi_head_self_attention/dense_4/bias/v
&:$	@�2Adam/dense_5/kernel/v
 :�2Adam/dense_5/bias/v
&:$	�@2Adam/dense_6/kernel/v
:@2Adam/dense_6/bias/v
>:<@22Adam/transformer_block/layer_normalization/gamma/v
=:;@21Adam/transformer_block/layer_normalization/beta/v
@:>@24Adam/transformer_block/layer_normalization_1/gamma/v
?:=@23Adam/transformer_block/layer_normalization_1/beta/v�
!__inference__wrapped_model_2540466789:;<=BC>?@ADE)*4�1
*�'
%�"
input_1���������d
� "1�.
,
dense_7!�
dense_7����������
C__inference_dense_5_layer_call_and_return_conditional_losses_256784e>?3�0
)�&
$�!
inputs���������d@
� "*�'
 �
0���������d�
� �
(__inference_dense_5_layer_call_fn_256753X>?3�0
)�&
$�!
inputs���������d@
� "����������d��
C__inference_dense_6_layer_call_and_return_conditional_losses_256823e@A4�1
*�'
%�"
inputs���������d�
� ")�&
�
0���������d@
� �
(__inference_dense_6_layer_call_fn_256793X@A4�1
*�'
%�"
inputs���������d�
� "����������d@�
C__inference_dense_7_layer_call_and_return_conditional_losses_256604\)*/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� {
(__inference_dense_7_layer_call_fn_256593O)*/�,
%�"
 �
inputs���������@
� "�����������
A__inference_dense_layer_call_and_return_conditional_losses_256005d3�0
)�&
$�!
inputs���������d
� ")�&
�
0���������d@
� �
&__inference_dense_layer_call_fn_255975W3�0
)�&
$�!
inputs���������d
� "����������d@�
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_256584{I�F
?�<
6�3
inputs'���������������������������

 
� ".�+
$�!
0������������������
� �
9__inference_global_average_pooling1d_layer_call_fn_256578nI�F
?�<
6�3
inputs'���������������������������

 
� "!��������������������
A__inference_model_layer_call_and_return_conditional_losses_255211{6789:;<=BC>?@ADE)*<�9
2�/
%�"
input_1���������d
p 

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_255259{6789:;<=BC>?@ADE)*<�9
2�/
%�"
input_1���������d
p

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_255630z6789:;<=BC>?@ADE)*;�8
1�.
$�!
inputs���������d
p 

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_255919z6789:;<=BC>?@ADE)*;�8
1�.
$�!
inputs���������d
p

 
� "%�"
�
0���������
� �
&__inference_model_layer_call_fn_254631n6789:;<=BC>?@ADE)*<�9
2�/
%�"
input_1���������d
p 

 
� "�����������
&__inference_model_layer_call_fn_255163n6789:;<=BC>?@ADE)*<�9
2�/
%�"
input_1���������d
p

 
� "�����������
&__inference_model_layer_call_fn_255310m6789:;<=BC>?@ADE)*;�8
1�.
$�!
inputs���������d
p 

 
� "�����������
&__inference_model_layer_call_fn_255355m6789:;<=BC>?@ADE)*;�8
1�.
$�!
inputs���������d
p

 
� "�����������
F__inference_sequential_layer_call_and_return_conditional_losses_254225u>?@AB�?
8�5
+�(
dense_5_input���������d@
p 

 
� ")�&
�
0���������d@
� �
F__inference_sequential_layer_call_and_return_conditional_losses_254239u>?@AB�?
8�5
+�(
dense_5_input���������d@
p

 
� ")�&
�
0���������d@
� �
F__inference_sequential_layer_call_and_return_conditional_losses_256687n>?@A;�8
1�.
$�!
inputs���������d@
p 

 
� ")�&
�
0���������d@
� �
F__inference_sequential_layer_call_and_return_conditional_losses_256744n>?@A;�8
1�.
$�!
inputs���������d@
p

 
� ")�&
�
0���������d@
� �
+__inference_sequential_layer_call_fn_254138h>?@AB�?
8�5
+�(
dense_5_input���������d@
p 

 
� "����������d@�
+__inference_sequential_layer_call_fn_254211h>?@AB�?
8�5
+�(
dense_5_input���������d@
p

 
� "����������d@�
+__inference_sequential_layer_call_fn_256617a>?@A;�8
1�.
$�!
inputs���������d@
p 

 
� "����������d@�
+__inference_sequential_layer_call_fn_256630a>?@A;�8
1�.
$�!
inputs���������d@
p

 
� "����������d@�
$__inference_signature_wrapper_255966�6789:;<=BC>?@ADE)*?�<
� 
5�2
0
input_1%�"
input_1���������d"1�.
,
dense_7!�
dense_7����������
M__inference_transformer_block_layer_call_and_return_conditional_losses_256319v6789:;<=BC>?@ADE7�4
-�*
$�!
inputs���������d@
p 
� ")�&
�
0���������d@
� �
M__inference_transformer_block_layer_call_and_return_conditional_losses_256573v6789:;<=BC>?@ADE7�4
-�*
$�!
inputs���������d@
p
� ")�&
�
0���������d@
� �
2__inference_transformer_block_layer_call_fn_256042i6789:;<=BC>?@ADE7�4
-�*
$�!
inputs���������d@
p 
� "����������d@�
2__inference_transformer_block_layer_call_fn_256079i6789:;<=BC>?@ADE7�4
-�*
$�!
inputs���������d@
p
� "����������d@