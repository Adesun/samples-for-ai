Óú
Ó.ś.
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
°
ApplyMomentum
var"T
accum"T
lr"T	
grad"T
momentum"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
ë
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
6
Pow
x"T
y"T
z"T"
Ttype:

2	
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
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

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
ö
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.5.02
b'unknown'śľ

initNoOp
~
image_inputPlaceholder*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*$
shape:˙˙˙˙˙˙˙˙˙
f
PlaceholderPlaceholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0	*
shape:˙˙˙˙˙˙˙˙˙

Placeholder_1Placeholder*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*$
shape:˙˙˙˙˙˙˙˙˙
o
truncated_normal/shapeConst*%
valueB"             *
_output_shapes
:*
dtype0
Z
truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
\
truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
_output_shapes
: *
dtype0
§
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*
T0*&
_output_shapes
: *
dtype0*
seed2Ž*
seedą˙ĺ)

truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*
T0*&
_output_shapes
: 
u
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0*&
_output_shapes
: 

Variable
VariableV2*&
_output_shapes
: *
dtype0*
shared_name *
	container *
shape: 
Ź
Variable/AssignAssignVariabletruncated_normal*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
q
Variable/readIdentityVariable*
T0*&
_output_shapes
: *
_class
loc:@Variable
R
zerosConst*
valueB *    *
_output_shapes
: *
dtype0
v

Variable_1
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
	container *
shape: 

Variable_1/AssignAssign
Variable_1zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable_1
k
Variable_1/readIdentity
Variable_1*
T0*
_output_shapes
: *
_class
loc:@Variable_1
q
truncated_normal_1/shapeConst*%
valueB"          @   *
_output_shapes
:*
dtype0
\
truncated_normal_1/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
^
truncated_normal_1/stddevConst*
valueB
 *ÍĚĚ=*
_output_shapes
: *
dtype0
Ť
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*
T0*&
_output_shapes
: @*
dtype0*
seed2Ž*
seedą˙ĺ)

truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0*&
_output_shapes
: @
{
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0*&
_output_shapes
: @


Variable_2
VariableV2*&
_output_shapes
: @*
dtype0*
shared_name *
	container *
shape: @
´
Variable_2/AssignAssign
Variable_2truncated_normal_1*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
w
Variable_2/readIdentity
Variable_2*
T0*&
_output_shapes
: @*
_class
loc:@Variable_2
R
ConstConst*
valueB@*ÍĚĚ=*
_output_shapes
:@*
dtype0
v

Variable_3
VariableV2*
_output_shapes
:@*
dtype0*
shared_name *
	container *
shape:@

Variable_3/AssignAssign
Variable_3Const*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
k
Variable_3/readIdentity
Variable_3*
T0*
_output_shapes
:@*
_class
loc:@Variable_3
i
truncated_normal_2/shapeConst*
valueB"@     *
_output_shapes
:*
dtype0
\
truncated_normal_2/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
^
truncated_normal_2/stddevConst*
valueB
 *ÍĚĚ=*
_output_shapes
: *
dtype0
Ľ
"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*
T0* 
_output_shapes
:
Ŕ*
dtype0*
seed2Ž*
seedą˙ĺ)

truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*
T0* 
_output_shapes
:
Ŕ
u
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*
T0* 
_output_shapes
:
Ŕ


Variable_4
VariableV2* 
_output_shapes
:
Ŕ*
dtype0*
shared_name *
	container *
shape:
Ŕ
Ž
Variable_4/AssignAssign
Variable_4truncated_normal_2*
T0* 
_output_shapes
:
Ŕ*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
q
Variable_4/readIdentity
Variable_4*
T0* 
_output_shapes
:
Ŕ*
_class
loc:@Variable_4
V
Const_1Const*
valueB*ÍĚĚ=*
_output_shapes	
:*
dtype0
x

Variable_5
VariableV2*
_output_shapes	
:*
dtype0*
shared_name *
	container *
shape:

Variable_5/AssignAssign
Variable_5Const_1*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
l
Variable_5/readIdentity
Variable_5*
T0*
_output_shapes	
:*
_class
loc:@Variable_5
i
truncated_normal_3/shapeConst*
valueB"   
   *
_output_shapes
:*
dtype0
\
truncated_normal_3/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
^
truncated_normal_3/stddevConst*
valueB
 *ÍĚĚ=*
_output_shapes
: *
dtype0
¤
"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
T0*
_output_shapes
:	
*
dtype0*
seed2Ž*
seedą˙ĺ)

truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
T0*
_output_shapes
:	

t
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
T0*
_output_shapes
:	



Variable_6
VariableV2*
_output_shapes
:	
*
dtype0*
shared_name *
	container *
shape:	

­
Variable_6/AssignAssign
Variable_6truncated_normal_3*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
p
Variable_6/readIdentity
Variable_6*
T0*
_output_shapes
:	
*
_class
loc:@Variable_6
T
Const_2Const*
valueB
*ÍĚĚ=*
_output_shapes
:
*
dtype0
v

Variable_7
VariableV2*
_output_shapes
:
*
dtype0*
shared_name *
	container *
shape:


Variable_7/AssignAssign
Variable_7Const_2*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
k
Variable_7/readIdentity
Variable_7*
T0*
_output_shapes
:
*
_class
loc:@Variable_7
Ô
Conv2DConv2Dimage_inputVariable/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
use_cudnn_on_gpu(
|
BiasAddBiasAddConv2DVariable_1/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
O
ReluReluBiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
¤
MaxPoolMaxPoolRelu*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ô
Conv2D_1Conv2DMaxPoolVariable_2/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
use_cudnn_on_gpu(

	BiasAdd_1BiasAddConv2D_1Variable_3/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
S
Relu_1Relu	BiasAdd_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
¨
	MaxPool_1MaxPoolRelu_1*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
N
ShapeShape	MaxPool_1*
out_type0*
T0*
_output_shapes
:
]
strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
_
strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
_
strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ů
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 
R
Reshape/shape/1Const*
value
B :Ŕ*
_output_shapes
: *
dtype0
o
Reshape/shapePackstrided_sliceReshape/shape/1*

axis *
T0*
N*
_output_shapes
:
m
ReshapeReshape	MaxPool_1Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ

MatMulMatMulReshapeVariable_4/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
addAddMatMulVariable_5/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
F
Relu_2Reluadd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
dropout/keep_probConst*
valueB
 *   ?*
_output_shapes
: *
dtype0
S
dropout/ShapeShapeRelu_2*
out_type0*
T0*
_output_shapes
:
_
dropout/random_uniform/minConst*
valueB
 *    *
_output_shapes
: *
dtype0
_
dropout/random_uniform/maxConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
˘
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
seed2Ž*
seedą˙ĺ)
z
dropout/random_uniform/subSubdropout/random_uniform/maxdropout/random_uniform/min*
T0*
_output_shapes
: 

dropout/random_uniform/mulMul$dropout/random_uniform/RandomUniformdropout/random_uniform/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dropout/random_uniformAdddropout/random_uniform/muldropout/random_uniform/min*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
dropout/addAdddropout/keep_probdropout/random_uniform*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
dropout/FloorFloordropout/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
dropout/divRealDivRelu_2dropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
dropout/mulMuldropout/divdropout/Floor*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

MatMul_1MatMuldropout/mulVariable_6/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Y
add_1AddMatMul_1Variable_7/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

t
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapePlaceholder*
out_type0*
T0	*
_output_shapes
:
Ň
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_1Placeholder*
T0*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
*
Tlabels0	
Q
Const_3Const*
valueB: *
_output_shapes
:*
dtype0

MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst_3*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
V
predict_op/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
~

predict_opArgMaxadd_1predict_op/dimension*
output_type0	*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
B
L2LossL2LossVariable_4/read*
T0*
_output_shapes
: 
D
L2Loss_1L2LossVariable_5/read*
T0*
_output_shapes
: 
?
add_2AddL2LossL2Loss_1*
T0*
_output_shapes
: 
D
L2Loss_2L2LossVariable_6/read*
T0*
_output_shapes
: 
>
add_3Addadd_2L2Loss_2*
T0*
_output_shapes
: 
D
L2Loss_3L2LossVariable_7/read*
T0*
_output_shapes
: 
>
add_4Addadd_3L2Loss_3*
T0*
_output_shapes
: 
J
mul/xConst*
valueB
 *o:*
_output_shapes
: *
dtype0
9
mulMulmul/xadd_4*
T0*
_output_shapes
: 
8
add_5AddMeanmul*
T0*
_output_shapes
: 
]
Variable_8/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
n

Variable_8
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
	container *
shape: 
Ş
Variable_8/AssignAssign
Variable_8Variable_8/initial_value*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable_8
g
Variable_8/readIdentity
Variable_8*
T0*
_output_shapes
: *
_class
loc:@Variable_8
L
mul_1/yConst*
valueB
 *  B*
_output_shapes
: *
dtype0
G
mul_1MulVariable_8/readmul_1/y*
T0*
_output_shapes
: 
c
ExponentialDecay/learning_rateConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0
]
ExponentialDecay/Cast_1/xConst*
valueB	 :Ř­*
_output_shapes
: *
dtype0
j
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*

DstT0*
_output_shapes
: *

SrcT0
^
ExponentialDecay/Cast_2/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
d
ExponentialDecay/truedivRealDivmul_1ExponentialDecay/Cast_1*
T0*
_output_shapes
: 
Z
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0*
_output_shapes
: 
o
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor*
T0*
_output_shapes
: 
n
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
X
gradients/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0
]
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: 
>
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/Fill
ľ
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/add_5_grad/tuple/group_deps*
T0*
_output_shapes
: *!
_class
loc:@gradients/Fill
ˇ
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/Fill&^gradients/add_5_grad/tuple/group_deps*
T0*
_output_shapes
: *!
_class
loc:@gradients/Fill
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
Ť
gradients/Mean_grad/ReshapeReshape-gradients/add_5_grad/tuple/control_dependency!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
 
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
T0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
˘
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
T0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
c
gradients/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
e
gradients/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
gradients/mul_grad/MulMul/gradients/add_5_grad/tuple/control_dependency_1add_4*
T0*
_output_shapes
: 
x
gradients/mul_grad/Mul_1Mul/gradients/add_5_grad/tuple/control_dependency_1mul/x*
T0*
_output_shapes
: 
_
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Mul^gradients/mul_grad/Mul_1
Á
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Mul$^gradients/mul_grad/tuple/group_deps*
T0*
_output_shapes
: *)
_class
loc:@gradients/mul_grad/Mul
Ç
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Mul_1$^gradients/mul_grad/tuple/group_deps*
T0*
_output_shapes
: *+
_class!
loc:@gradients/mul_grad/Mul_1

gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

­
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

°
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: *
dtype0
ą
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

]
%gradients/add_4_grad/tuple/group_depsNoOp.^gradients/mul_grad/tuple/control_dependency_1
Ţ
-gradients/add_4_grad/tuple/control_dependencyIdentity-gradients/mul_grad/tuple/control_dependency_1&^gradients/add_4_grad/tuple/group_deps*
T0*
_output_shapes
: *+
_class!
loc:@gradients/mul_grad/Mul_1
ŕ
/gradients/add_4_grad/tuple/control_dependency_1Identity-gradients/mul_grad/tuple/control_dependency_1&^gradients/add_4_grad/tuple/group_deps*
T0*
_output_shapes
: *+
_class!
loc:@gradients/mul_grad/Mul_1
b
gradients/add_1_grad/ShapeShapeMatMul_1*
out_type0*
T0*
_output_shapes
:
f
gradients/add_1_grad/Shape_1Const*
valueB:
*
_output_shapes
:*
dtype0
ş
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ç
gradients/add_1_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ë
gradients/add_1_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
â
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*/
_class%
#!loc:@gradients/add_1_grad/Reshape
Ű
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*
_output_shapes
:
*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
]
%gradients/add_3_grad/tuple/group_depsNoOp.^gradients/add_4_grad/tuple/control_dependency
Ţ
-gradients/add_3_grad/tuple/control_dependencyIdentity-gradients/add_4_grad/tuple/control_dependency&^gradients/add_3_grad/tuple/group_deps*
T0*
_output_shapes
: *+
_class!
loc:@gradients/mul_grad/Mul_1
ŕ
/gradients/add_3_grad/tuple/control_dependency_1Identity-gradients/add_4_grad/tuple/control_dependency&^gradients/add_3_grad/tuple/group_deps*
T0*
_output_shapes
: *+
_class!
loc:@gradients/mul_grad/Mul_1

gradients/L2Loss_3_grad/mulMulVariable_7/read/gradients/add_4_grad/tuple/control_dependency_1*
T0*
_output_shapes
:

Á
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyVariable_6/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
 gradients/MatMul_1_grad/MatMul_1MatMuldropout/mul-gradients/add_1_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(*
_output_shapes
:	

t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
í
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
ę
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*
_output_shapes
:	
*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
]
%gradients/add_2_grad/tuple/group_depsNoOp.^gradients/add_3_grad/tuple/control_dependency
Ţ
-gradients/add_2_grad/tuple/control_dependencyIdentity-gradients/add_3_grad/tuple/control_dependency&^gradients/add_2_grad/tuple/group_deps*
T0*
_output_shapes
: *+
_class!
loc:@gradients/mul_grad/Mul_1
ŕ
/gradients/add_2_grad/tuple/control_dependency_1Identity-gradients/add_3_grad/tuple/control_dependency&^gradients/add_2_grad/tuple/group_deps*
T0*
_output_shapes
: *+
_class!
loc:@gradients/mul_grad/Mul_1

gradients/L2Loss_2_grad/mulMulVariable_6/read/gradients/add_3_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	

Ĺ
gradients/AddNAddN/gradients/add_1_grad/tuple/control_dependency_1gradients/L2Loss_3_grad/mul*
T0*
N*
_output_shapes
:
*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
k
 gradients/dropout/mul_grad/ShapeShapedropout/div*
out_type0*
T0*
_output_shapes
:
o
"gradients/dropout/mul_grad/Shape_1Shapedropout/Floor*
out_type0*
T0*
_output_shapes
:
Ě
0gradients/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/mul_grad/Shape"gradients/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/dropout/mul_grad/mulMul0gradients/MatMul_1_grad/tuple/control_dependencydropout/Floor*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
gradients/dropout/mul_grad/SumSumgradients/dropout/mul_grad/mul0gradients/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
°
"gradients/dropout/mul_grad/ReshapeReshapegradients/dropout/mul_grad/Sum gradients/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

 gradients/dropout/mul_grad/mul_1Muldropout/div0gradients/MatMul_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
 gradients/dropout/mul_grad/Sum_1Sum gradients/dropout/mul_grad/mul_12gradients/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ś
$gradients/dropout/mul_grad/Reshape_1Reshape gradients/dropout/mul_grad/Sum_1"gradients/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

+gradients/dropout/mul_grad/tuple/group_depsNoOp#^gradients/dropout/mul_grad/Reshape%^gradients/dropout/mul_grad/Reshape_1
ű
3gradients/dropout/mul_grad/tuple/control_dependencyIdentity"gradients/dropout/mul_grad/Reshape,^gradients/dropout/mul_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*5
_class+
)'loc:@gradients/dropout/mul_grad/Reshape

5gradients/dropout/mul_grad/tuple/control_dependency_1Identity$gradients/dropout/mul_grad/Reshape_1,^gradients/dropout/mul_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*7
_class-
+)loc:@gradients/dropout/mul_grad/Reshape_1

gradients/L2Loss_grad/mulMulVariable_4/read-gradients/add_2_grad/tuple/control_dependency*
T0* 
_output_shapes
:
Ŕ

gradients/L2Loss_1_grad/mulMulVariable_5/read/gradients/add_2_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:
Ń
gradients/AddN_1AddN2gradients/MatMul_1_grad/tuple/control_dependency_1gradients/L2Loss_2_grad/mul*
T0*
N*
_output_shapes
:	
*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
f
 gradients/dropout/div_grad/ShapeShapeRelu_2*
out_type0*
T0*
_output_shapes
:
e
"gradients/dropout/div_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ě
0gradients/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/div_grad/Shape"gradients/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¨
"gradients/dropout/div_grad/RealDivRealDiv3gradients/dropout/mul_grad/tuple/control_dependencydropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
gradients/dropout/div_grad/SumSum"gradients/dropout/div_grad/RealDiv0gradients/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
°
"gradients/dropout/div_grad/ReshapeReshapegradients/dropout/div_grad/Sum gradients/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
gradients/dropout/div_grad/NegNegRelu_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

$gradients/dropout/div_grad/RealDiv_1RealDivgradients/dropout/div_grad/Negdropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

$gradients/dropout/div_grad/RealDiv_2RealDiv$gradients/dropout/div_grad/RealDiv_1dropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ł
gradients/dropout/div_grad/mulMul3gradients/dropout/mul_grad/tuple/control_dependency$gradients/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
 gradients/dropout/div_grad/Sum_1Sumgradients/dropout/div_grad/mul2gradients/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
¤
$gradients/dropout/div_grad/Reshape_1Reshape gradients/dropout/div_grad/Sum_1"gradients/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

+gradients/dropout/div_grad/tuple/group_depsNoOp#^gradients/dropout/div_grad/Reshape%^gradients/dropout/div_grad/Reshape_1
ű
3gradients/dropout/div_grad/tuple/control_dependencyIdentity"gradients/dropout/div_grad/Reshape,^gradients/dropout/div_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*5
_class+
)'loc:@gradients/dropout/div_grad/Reshape
ď
5gradients/dropout/div_grad/tuple/control_dependency_1Identity$gradients/dropout/div_grad/Reshape_1,^gradients/dropout/div_grad/tuple/group_deps*
T0*
_output_shapes
: *7
_class-
+)loc:@gradients/dropout/div_grad/Reshape_1

gradients/Relu_2_grad/ReluGradReluGrad3gradients/dropout/div_grad/tuple/control_dependencyRelu_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
gradients/add_grad/ShapeShapeMatMul*
out_type0*
T0*
_output_shapes
:
e
gradients/add_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
§
gradients/add_grad/SumSumgradients/Relu_2_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_grad/Sum_1Sumgradients/Relu_2_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ű
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_class#
!loc:@gradients/add_grad/Reshape
Ô
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes	
:*/
_class%
#!loc:@gradients/add_grad/Reshape_1
˝
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyVariable_4/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
Ż
gradients/MatMul_grad/MatMul_1MatMulReshape+gradients/add_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:
Ŕ
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ĺ
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
ă
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0* 
_output_shapes
:
Ŕ*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
Ă
gradients/AddN_2AddNgradients/L2Loss_1_grad/mul-gradients/add_grad/tuple/control_dependency_1*
T0*
N*
_output_shapes	
:*.
_class$
" loc:@gradients/L2Loss_1_grad/mul
e
gradients/Reshape_grad/ShapeShape	MaxPool_1*
out_type0*
T0*
_output_shapes
:
ż
gradients/Reshape_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependencygradients/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ç
gradients/AddN_3AddNgradients/L2Loss_grad/mul0gradients/MatMul_grad/tuple/control_dependency_1*
T0*
N* 
_output_shapes
:
Ŕ*,
_class"
 loc:@gradients/L2Loss_grad/mul
ň
$gradients/MaxPool_1_grad/MaxPoolGradMaxPoolGradRelu_1	MaxPool_1gradients/Reshape_grad/Reshape*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

gradients/Relu_1_grad/ReluGradReluGrad$gradients/MaxPool_1_grad/MaxPoolGradRelu_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

$gradients/BiasAdd_1_grad/BiasAddGradBiasAddGradgradients/Relu_1_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
y
)gradients/BiasAdd_1_grad/tuple/group_depsNoOp^gradients/Relu_1_grad/ReluGrad%^gradients/BiasAdd_1_grad/BiasAddGrad
ö
1gradients/BiasAdd_1_grad/tuple/control_dependencyIdentitygradients/Relu_1_grad/ReluGrad*^gradients/BiasAdd_1_grad/tuple/group_deps*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*1
_class'
%#loc:@gradients/Relu_1_grad/ReluGrad
ď
3gradients/BiasAdd_1_grad/tuple/control_dependency_1Identity$gradients/BiasAdd_1_grad/BiasAddGrad*^gradients/BiasAdd_1_grad/tuple/group_deps*
T0*
_output_shapes
:@*7
_class-
+)loc:@gradients/BiasAdd_1_grad/BiasAddGrad

gradients/Conv2D_1_grad/ShapeNShapeNMaxPoolVariable_2/read*
out_type0*
T0*
N* 
_output_shapes
::
v
gradients/Conv2D_1_grad/ConstConst*%
valueB"          @   *
_output_shapes
:*
dtype0
é
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeNVariable_2/read1gradients/BiasAdd_1_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
use_cudnn_on_gpu(
ž
,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPoolgradients/Conv2D_1_grad/Const1gradients/BiasAdd_1_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*&
_output_shapes
: @*
use_cudnn_on_gpu(

(gradients/Conv2D_1_grad/tuple/group_depsNoOp,^gradients/Conv2D_1_grad/Conv2DBackpropInput-^gradients/Conv2D_1_grad/Conv2DBackpropFilter

0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput

2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*&
_output_shapes
: @*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter
ţ
"gradients/MaxPool_grad/MaxPoolGradMaxPoolGradReluMaxPool0gradients/Conv2D_1_grad/tuple/control_dependency*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

gradients/Relu_grad/ReluGradReluGrad"gradients/MaxPool_grad/MaxPoolGradRelu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
s
'gradients/BiasAdd_grad/tuple/group_depsNoOp^gradients/Relu_grad/ReluGrad#^gradients/BiasAdd_grad/BiasAddGrad
î
/gradients/BiasAdd_grad/tuple/control_dependencyIdentitygradients/Relu_grad/ReluGrad(^gradients/BiasAdd_grad/tuple/group_deps*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ */
_class%
#!loc:@gradients/Relu_grad/ReluGrad
ç
1gradients/BiasAdd_grad/tuple/control_dependency_1Identity"gradients/BiasAdd_grad/BiasAddGrad(^gradients/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
: *5
_class+
)'loc:@gradients/BiasAdd_grad/BiasAddGrad

gradients/Conv2D_grad/ShapeNShapeNimage_inputVariable/read*
out_type0*
T0*
N* 
_output_shapes
::
t
gradients/Conv2D_grad/ConstConst*%
valueB"             *
_output_shapes
:*
dtype0
á
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNVariable/read/gradients/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
use_cudnn_on_gpu(
ź
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterimage_inputgradients/Conv2D_grad/Const/gradients/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*&
_output_shapes
: *
use_cudnn_on_gpu(

&gradients/Conv2D_grad/tuple/group_depsNoOp*^gradients/Conv2D_grad/Conv2DBackpropInput+^gradients/Conv2D_grad/Conv2DBackpropFilter

.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput

0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*
T0*&
_output_shapes
: *=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter
Ľ
#Variable/Momentum/Initializer/zerosConst*%
valueB *    *&
_output_shapes
: *
dtype0*
_class
loc:@Variable
˛
Variable/Momentum
VariableV2*
shared_name *
_class
loc:@Variable*&
_output_shapes
: *
dtype0*
	container *
shape: 
Ń
Variable/Momentum/AssignAssignVariable/Momentum#Variable/Momentum/Initializer/zeros*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable

Variable/Momentum/readIdentityVariable/Momentum*
T0*&
_output_shapes
: *
_class
loc:@Variable

%Variable_1/Momentum/Initializer/zerosConst*
valueB *    *
_output_shapes
: *
dtype0*
_class
loc:@Variable_1

Variable_1/Momentum
VariableV2*
shared_name *
_class
loc:@Variable_1*
_output_shapes
: *
dtype0*
	container *
shape: 
Í
Variable_1/Momentum/AssignAssignVariable_1/Momentum%Variable_1/Momentum/Initializer/zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable_1
}
Variable_1/Momentum/readIdentityVariable_1/Momentum*
T0*
_output_shapes
: *
_class
loc:@Variable_1
Š
%Variable_2/Momentum/Initializer/zerosConst*%
valueB @*    *&
_output_shapes
: @*
dtype0*
_class
loc:@Variable_2
ś
Variable_2/Momentum
VariableV2*
shared_name *
_class
loc:@Variable_2*&
_output_shapes
: @*
dtype0*
	container *
shape: @
Ů
Variable_2/Momentum/AssignAssignVariable_2/Momentum%Variable_2/Momentum/Initializer/zeros*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*
_class
loc:@Variable_2

Variable_2/Momentum/readIdentityVariable_2/Momentum*
T0*&
_output_shapes
: @*
_class
loc:@Variable_2

%Variable_3/Momentum/Initializer/zerosConst*
valueB@*    *
_output_shapes
:@*
dtype0*
_class
loc:@Variable_3

Variable_3/Momentum
VariableV2*
shared_name *
_class
loc:@Variable_3*
_output_shapes
:@*
dtype0*
	container *
shape:@
Í
Variable_3/Momentum/AssignAssignVariable_3/Momentum%Variable_3/Momentum/Initializer/zeros*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
}
Variable_3/Momentum/readIdentityVariable_3/Momentum*
T0*
_output_shapes
:@*
_class
loc:@Variable_3

%Variable_4/Momentum/Initializer/zerosConst*
valueB
Ŕ*    * 
_output_shapes
:
Ŕ*
dtype0*
_class
loc:@Variable_4
Ş
Variable_4/Momentum
VariableV2*
shared_name *
_class
loc:@Variable_4* 
_output_shapes
:
Ŕ*
dtype0*
	container *
shape:
Ŕ
Ó
Variable_4/Momentum/AssignAssignVariable_4/Momentum%Variable_4/Momentum/Initializer/zeros*
T0* 
_output_shapes
:
Ŕ*
use_locking(*
validate_shape(*
_class
loc:@Variable_4

Variable_4/Momentum/readIdentityVariable_4/Momentum*
T0* 
_output_shapes
:
Ŕ*
_class
loc:@Variable_4

%Variable_5/Momentum/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*
_class
loc:@Variable_5
 
Variable_5/Momentum
VariableV2*
shared_name *
_class
loc:@Variable_5*
_output_shapes	
:*
dtype0*
	container *
shape:
Î
Variable_5/Momentum/AssignAssignVariable_5/Momentum%Variable_5/Momentum/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
~
Variable_5/Momentum/readIdentityVariable_5/Momentum*
T0*
_output_shapes	
:*
_class
loc:@Variable_5

%Variable_6/Momentum/Initializer/zerosConst*
valueB	
*    *
_output_shapes
:	
*
dtype0*
_class
loc:@Variable_6
¨
Variable_6/Momentum
VariableV2*
shared_name *
_class
loc:@Variable_6*
_output_shapes
:	
*
dtype0*
	container *
shape:	

Ň
Variable_6/Momentum/AssignAssignVariable_6/Momentum%Variable_6/Momentum/Initializer/zeros*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*
_class
loc:@Variable_6

Variable_6/Momentum/readIdentityVariable_6/Momentum*
T0*
_output_shapes
:	
*
_class
loc:@Variable_6

%Variable_7/Momentum/Initializer/zerosConst*
valueB
*    *
_output_shapes
:
*
dtype0*
_class
loc:@Variable_7

Variable_7/Momentum
VariableV2*
shared_name *
_class
loc:@Variable_7*
_output_shapes
:
*
dtype0*
	container *
shape:

Í
Variable_7/Momentum/AssignAssignVariable_7/Momentum%Variable_7/Momentum/Initializer/zeros*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
}
Variable_7/Momentum/readIdentityVariable_7/Momentum*
T0*
_output_shapes
:
*
_class
loc:@Variable_7
V
Momentum/momentumConst*
valueB
 *fff?*
_output_shapes
: *
dtype0
 
&Momentum/update_Variable/ApplyMomentumApplyMomentumVariableVariable/MomentumExponentialDecay0gradients/Conv2D_grad/tuple/control_dependency_1Momentum/momentum*
T0*&
_output_shapes
: *
use_locking( *
use_nesterov( *
_class
loc:@Variable

(Momentum/update_Variable_1/ApplyMomentumApplyMomentum
Variable_1Variable_1/MomentumExponentialDecay1gradients/BiasAdd_grad/tuple/control_dependency_1Momentum/momentum*
T0*
_output_shapes
: *
use_locking( *
use_nesterov( *
_class
loc:@Variable_1
Ş
(Momentum/update_Variable_2/ApplyMomentumApplyMomentum
Variable_2Variable_2/MomentumExponentialDecay2gradients/Conv2D_1_grad/tuple/control_dependency_1Momentum/momentum*
T0*&
_output_shapes
: @*
use_locking( *
use_nesterov( *
_class
loc:@Variable_2

(Momentum/update_Variable_3/ApplyMomentumApplyMomentum
Variable_3Variable_3/MomentumExponentialDecay3gradients/BiasAdd_1_grad/tuple/control_dependency_1Momentum/momentum*
T0*
_output_shapes
:@*
use_locking( *
use_nesterov( *
_class
loc:@Variable_3

(Momentum/update_Variable_4/ApplyMomentumApplyMomentum
Variable_4Variable_4/MomentumExponentialDecaygradients/AddN_3Momentum/momentum*
T0* 
_output_shapes
:
Ŕ*
use_locking( *
use_nesterov( *
_class
loc:@Variable_4
ý
(Momentum/update_Variable_5/ApplyMomentumApplyMomentum
Variable_5Variable_5/MomentumExponentialDecaygradients/AddN_2Momentum/momentum*
T0*
_output_shapes	
:*
use_locking( *
use_nesterov( *
_class
loc:@Variable_5

(Momentum/update_Variable_6/ApplyMomentumApplyMomentum
Variable_6Variable_6/MomentumExponentialDecaygradients/AddN_1Momentum/momentum*
T0*
_output_shapes
:	
*
use_locking( *
use_nesterov( *
_class
loc:@Variable_6
ú
(Momentum/update_Variable_7/ApplyMomentumApplyMomentum
Variable_7Variable_7/MomentumExponentialDecaygradients/AddNMomentum/momentum*
T0*
_output_shapes
:
*
use_locking( *
use_nesterov( *
_class
loc:@Variable_7
í
Momentum/updateNoOp'^Momentum/update_Variable/ApplyMomentum)^Momentum/update_Variable_1/ApplyMomentum)^Momentum/update_Variable_2/ApplyMomentum)^Momentum/update_Variable_3/ApplyMomentum)^Momentum/update_Variable_4/ApplyMomentum)^Momentum/update_Variable_5/ApplyMomentum)^Momentum/update_Variable_6/ApplyMomentum)^Momentum/update_Variable_7/ApplyMomentum

Momentum/valueConst^Momentum/update*
valueB
 *  ?*
_output_shapes
: *
dtype0*
_class
loc:@Variable_8

Momentum	AssignAdd
Variable_8Momentum/value*
T0*
_output_shapes
: *
use_locking( *
_class
loc:@Variable_8
K
SoftmaxSoftmaxadd_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ř
Conv2D_2Conv2DPlaceholder_1Variable/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
use_cudnn_on_gpu(

	BiasAdd_2BiasAddConv2D_2Variable_1/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
Relu_3Relu	BiasAdd_2*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
¨
	MaxPool_2MaxPoolRelu_3*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ö
Conv2D_3Conv2D	MaxPool_2Variable_2/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
use_cudnn_on_gpu(

	BiasAdd_3BiasAddConv2D_3Variable_3/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
S
Relu_4Relu	BiasAdd_3*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
¨
	MaxPool_3MaxPoolRelu_4*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
P
Shape_1Shape	MaxPool_3*
out_type0*
T0*
_output_shapes
:
_
strided_slice_1/stackConst*
valueB: *
_output_shapes
:*
dtype0
a
strided_slice_1/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
a
strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0

strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 
T
Reshape_1/shape/1Const*
value
B :Ŕ*
_output_shapes
: *
dtype0
u
Reshape_1/shapePackstrided_slice_1Reshape_1/shape/1*

axis *
T0*
N*
_output_shapes
:
q
	Reshape_1Reshape	MaxPool_3Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ

MatMul_2MatMul	Reshape_1Variable_4/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
add_6AddMatMul_2Variable_5/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
H
Relu_5Reluadd_6*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

MatMul_3MatMulRelu_5Variable_6/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Y
add_7AddMatMul_3Variable_7/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

M
	Softmax_1Softmaxadd_7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
ň
save/SaveV2/tensor_namesConst*Ľ
valueBBVariableBVariable/MomentumB
Variable_1BVariable_1/MomentumB
Variable_2BVariable_2/MomentumB
Variable_3BVariable_3/MomentumB
Variable_4BVariable_4/MomentumB
Variable_5BVariable_5/MomentumB
Variable_6BVariable_6/MomentumB
Variable_7BVariable_7/MomentumB
Variable_8*
_output_shapes
:*
dtype0

save/SaveV2/shape_and_slicesConst*5
value,B*B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/Momentum
Variable_1Variable_1/Momentum
Variable_2Variable_2/Momentum
Variable_3Variable_3/Momentum
Variable_4Variable_4/Momentum
Variable_5Variable_5/Momentum
Variable_6Variable_6/Momentum
Variable_7Variable_7/Momentum
Variable_8*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save/Const
l
save/RestoreV2/tensor_namesConst*
valueBBVariable*
_output_shapes
:*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ś
save/AssignAssignVariablesave/RestoreV2*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
w
save/RestoreV2_1/tensor_namesConst*&
valueBBVariable/Momentum*
_output_shapes
:*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
ł
save/Assign_1AssignVariable/Momentumsave/RestoreV2_1*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
p
save/RestoreV2_2/tensor_namesConst*
valueBB
Variable_1*
_output_shapes
:*
dtype0
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
˘
save/Assign_2Assign
Variable_1save/RestoreV2_2*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable_1
y
save/RestoreV2_3/tensor_namesConst*(
valueBBVariable_1/Momentum*
_output_shapes
:*
dtype0
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ť
save/Assign_3AssignVariable_1/Momentumsave/RestoreV2_3*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable_1
p
save/RestoreV2_4/tensor_namesConst*
valueBB
Variable_2*
_output_shapes
:*
dtype0
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Ž
save/Assign_4Assign
Variable_2save/RestoreV2_4*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
y
save/RestoreV2_5/tensor_namesConst*(
valueBBVariable_2/Momentum*
_output_shapes
:*
dtype0
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
ˇ
save/Assign_5AssignVariable_2/Momentumsave/RestoreV2_5*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
p
save/RestoreV2_6/tensor_namesConst*
valueBB
Variable_3*
_output_shapes
:*
dtype0
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
˘
save/Assign_6Assign
Variable_3save/RestoreV2_6*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
y
save/RestoreV2_7/tensor_namesConst*(
valueBBVariable_3/Momentum*
_output_shapes
:*
dtype0
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
Ť
save/Assign_7AssignVariable_3/Momentumsave/RestoreV2_7*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
p
save/RestoreV2_8/tensor_namesConst*
valueBB
Variable_4*
_output_shapes
:*
dtype0
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
¨
save/Assign_8Assign
Variable_4save/RestoreV2_8*
T0* 
_output_shapes
:
Ŕ*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
y
save/RestoreV2_9/tensor_namesConst*(
valueBBVariable_4/Momentum*
_output_shapes
:*
dtype0
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
ą
save/Assign_9AssignVariable_4/Momentumsave/RestoreV2_9*
T0* 
_output_shapes
:
Ŕ*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
q
save/RestoreV2_10/tensor_namesConst*
valueBB
Variable_5*
_output_shapes
:*
dtype0
k
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
Ľ
save/Assign_10Assign
Variable_5save/RestoreV2_10*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
z
save/RestoreV2_11/tensor_namesConst*(
valueBBVariable_5/Momentum*
_output_shapes
:*
dtype0
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
Ž
save/Assign_11AssignVariable_5/Momentumsave/RestoreV2_11*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
q
save/RestoreV2_12/tensor_namesConst*
valueBB
Variable_6*
_output_shapes
:*
dtype0
k
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
Š
save/Assign_12Assign
Variable_6save/RestoreV2_12*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
z
save/RestoreV2_13/tensor_namesConst*(
valueBBVariable_6/Momentum*
_output_shapes
:*
dtype0
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
˛
save/Assign_13AssignVariable_6/Momentumsave/RestoreV2_13*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
q
save/RestoreV2_14/tensor_namesConst*
valueBB
Variable_7*
_output_shapes
:*
dtype0
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
¤
save/Assign_14Assign
Variable_7save/RestoreV2_14*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
z
save/RestoreV2_15/tensor_namesConst*(
valueBBVariable_7/Momentum*
_output_shapes
:*
dtype0
k
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
­
save/Assign_15AssignVariable_7/Momentumsave/RestoreV2_15*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
q
save/RestoreV2_16/tensor_namesConst*
valueBB
Variable_8*
_output_shapes
:*
dtype0
k
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
 
save/Assign_16Assign
Variable_8save/RestoreV2_16*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable_8
­
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16
Ś
init_1NoOp^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign^Variable_8/Assign^Variable/Momentum/Assign^Variable_1/Momentum/Assign^Variable_2/Momentum/Assign^Variable_3/Momentum/Assign^Variable_4/Momentum/Assign^Variable_5/Momentum/Assign^Variable_6/Momentum/Assign^Variable_7/Momentum/Assign
N
	loss/tagsConst*
valueB
 Bloss*
_output_shapes
: *
dtype0
H
lossScalarSummary	loss/tagsadd_5*
T0*
_output_shapes
: 
I
Merge/MergeSummaryMergeSummaryloss*
N*
_output_shapes
: 

init_all_tablesNoOp
R
save/Const_1Const*
valueB Bmodel*
_output_shapes
: *
dtype0

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_d99113b7b0a542a5b2c22388ca05db27/part*
_output_shapes
: *
dtype0
w
save/StringJoin
StringJoinsave/Const_1save/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2_1/tensor_namesConst"/device:CPU:0*Ľ
valueBBVariableBVariable/MomentumB
Variable_1BVariable_1/MomentumB
Variable_2BVariable_2/MomentumB
Variable_3BVariable_3/MomentumB
Variable_4BVariable_4/MomentumB
Variable_5BVariable_5/MomentumB
Variable_6BVariable_6/MomentumB
Variable_7BVariable_7/MomentumB
Variable_8*
_output_shapes
:*
dtype0

save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*5
value,B*B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0
Š
save/SaveV2_1SaveV2save/ShardedFilenamesave/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicesVariableVariable/Momentum
Variable_1Variable_1/Momentum
Variable_2Variable_2/Momentum
Variable_3Variable_3/Momentum
Variable_4Variable_4/Momentum
Variable_5Variable_5/Momentum
Variable_6Variable_6/Momentum
Variable_7Variable_7/Momentum
Variable_8"/device:CPU:0*
dtypes
2
¤
save/control_dependency_1Identitysave/ShardedFilename^save/SaveV2_1"/device:CPU:0*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
Ž
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency_1"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixessave/Const_1"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentitysave/Const_1^save/control_dependency_1^save/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
o
save/RestoreV2_17/tensor_namesConst*
valueBBVariable*
_output_shapes
:*
dtype0
k
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_17	RestoreV2save/Const_1save/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
Ź
save/Assign_17AssignVariablesave/RestoreV2_17*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
x
save/RestoreV2_18/tensor_namesConst*&
valueBBVariable/Momentum*
_output_shapes
:*
dtype0
k
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_18	RestoreV2save/Const_1save/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
ľ
save/Assign_18AssignVariable/Momentumsave/RestoreV2_18*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable
q
save/RestoreV2_19/tensor_namesConst*
valueBB
Variable_1*
_output_shapes
:*
dtype0
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_19	RestoreV2save/Const_1save/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
¤
save/Assign_19Assign
Variable_1save/RestoreV2_19*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable_1
z
save/RestoreV2_20/tensor_namesConst*(
valueBBVariable_1/Momentum*
_output_shapes
:*
dtype0
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_20	RestoreV2save/Const_1save/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
­
save/Assign_20AssignVariable_1/Momentumsave/RestoreV2_20*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable_1
q
save/RestoreV2_21/tensor_namesConst*
valueBB
Variable_2*
_output_shapes
:*
dtype0
k
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_21	RestoreV2save/Const_1save/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
°
save/Assign_21Assign
Variable_2save/RestoreV2_21*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
z
save/RestoreV2_22/tensor_namesConst*(
valueBBVariable_2/Momentum*
_output_shapes
:*
dtype0
k
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_22	RestoreV2save/Const_1save/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
š
save/Assign_22AssignVariable_2/Momentumsave/RestoreV2_22*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*
_class
loc:@Variable_2
q
save/RestoreV2_23/tensor_namesConst*
valueBB
Variable_3*
_output_shapes
:*
dtype0
k
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_23	RestoreV2save/Const_1save/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
¤
save/Assign_23Assign
Variable_3save/RestoreV2_23*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
z
save/RestoreV2_24/tensor_namesConst*(
valueBBVariable_3/Momentum*
_output_shapes
:*
dtype0
k
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_24	RestoreV2save/Const_1save/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
­
save/Assign_24AssignVariable_3/Momentumsave/RestoreV2_24*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@Variable_3
q
save/RestoreV2_25/tensor_namesConst*
valueBB
Variable_4*
_output_shapes
:*
dtype0
k
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_25	RestoreV2save/Const_1save/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
Ş
save/Assign_25Assign
Variable_4save/RestoreV2_25*
T0* 
_output_shapes
:
Ŕ*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
z
save/RestoreV2_26/tensor_namesConst*(
valueBBVariable_4/Momentum*
_output_shapes
:*
dtype0
k
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_26	RestoreV2save/Const_1save/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
ł
save/Assign_26AssignVariable_4/Momentumsave/RestoreV2_26*
T0* 
_output_shapes
:
Ŕ*
use_locking(*
validate_shape(*
_class
loc:@Variable_4
q
save/RestoreV2_27/tensor_namesConst*
valueBB
Variable_5*
_output_shapes
:*
dtype0
k
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_27	RestoreV2save/Const_1save/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
Ľ
save/Assign_27Assign
Variable_5save/RestoreV2_27*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
z
save/RestoreV2_28/tensor_namesConst*(
valueBBVariable_5/Momentum*
_output_shapes
:*
dtype0
k
"save/RestoreV2_28/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_28	RestoreV2save/Const_1save/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
Ž
save/Assign_28AssignVariable_5/Momentumsave/RestoreV2_28*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*
_class
loc:@Variable_5
q
save/RestoreV2_29/tensor_namesConst*
valueBB
Variable_6*
_output_shapes
:*
dtype0
k
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_29	RestoreV2save/Const_1save/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
Š
save/Assign_29Assign
Variable_6save/RestoreV2_29*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
z
save/RestoreV2_30/tensor_namesConst*(
valueBBVariable_6/Momentum*
_output_shapes
:*
dtype0
k
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_30	RestoreV2save/Const_1save/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
˛
save/Assign_30AssignVariable_6/Momentumsave/RestoreV2_30*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*
_class
loc:@Variable_6
q
save/RestoreV2_31/tensor_namesConst*
valueBB
Variable_7*
_output_shapes
:*
dtype0
k
"save/RestoreV2_31/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_31	RestoreV2save/Const_1save/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
¤
save/Assign_31Assign
Variable_7save/RestoreV2_31*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
z
save/RestoreV2_32/tensor_namesConst*(
valueBBVariable_7/Momentum*
_output_shapes
:*
dtype0
k
"save/RestoreV2_32/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_32	RestoreV2save/Const_1save/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
­
save/Assign_32AssignVariable_7/Momentumsave/RestoreV2_32*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
loc:@Variable_7
q
save/RestoreV2_33/tensor_namesConst*
valueBB
Variable_8*
_output_shapes
:*
dtype0
k
"save/RestoreV2_33/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_33	RestoreV2save/Const_1save/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
 
save/Assign_33Assign
Variable_8save/RestoreV2_33*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Variable_8
ť
save/restore_shardNoOp^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33
/
save/restore_all_1NoOp^save/restore_shard"@
save/Const_1:0save/Identity:0save/restore_all_1 (5 @F8"%
legacy_init_op

init_all_tables"%
mlscoring_interface_name	
Infer"Ó
	variablesĹÂ
B

Variable:0Variable/AssignVariable/read:02truncated_normal:0
=
Variable_1:0Variable_1/AssignVariable_1/read:02zeros:0
J
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:0
=
Variable_3:0Variable_3/AssignVariable_3/read:02Const:0
J
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:0
?
Variable_5:0Variable_5/AssignVariable_5/read:02	Const_1:0
J
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:0
?
Variable_7:0Variable_7/AssignVariable_7/read:02	Const_2:0
P
Variable_8:0Variable_8/AssignVariable_8/read:02Variable_8/initial_value:0
p
Variable/Momentum:0Variable/Momentum/AssignVariable/Momentum/read:02%Variable/Momentum/Initializer/zeros:0
x
Variable_1/Momentum:0Variable_1/Momentum/AssignVariable_1/Momentum/read:02'Variable_1/Momentum/Initializer/zeros:0
x
Variable_2/Momentum:0Variable_2/Momentum/AssignVariable_2/Momentum/read:02'Variable_2/Momentum/Initializer/zeros:0
x
Variable_3/Momentum:0Variable_3/Momentum/AssignVariable_3/Momentum/read:02'Variable_3/Momentum/Initializer/zeros:0
x
Variable_4/Momentum:0Variable_4/Momentum/AssignVariable_4/Momentum/read:02'Variable_4/Momentum/Initializer/zeros:0
x
Variable_5/Momentum:0Variable_5/Momentum/AssignVariable_5/Momentum/read:02'Variable_5/Momentum/Initializer/zeros:0
x
Variable_6/Momentum:0Variable_6/Momentum/AssignVariable_6/Momentum/read:02'Variable_6/Momentum/Initializer/zeros:0
x
Variable_7/Momentum:0Variable_7/Momentum/AssignVariable_7/Momentum/read:02'Variable_7/Momentum/Initializer/zeros:0"%
mlscoring_Inferoutputs	
outputs"(
 mlscoring_Inferinputsdescription
 "
trainable_variablesýú
B

Variable:0Variable/AssignVariable/read:02truncated_normal:0
=
Variable_1:0Variable_1/AssignVariable_1/read:02zeros:0
J
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:0
=
Variable_3:0Variable_3/AssignVariable_3/read:02Const:0
J
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:0
?
Variable_5:0Variable_5/AssignVariable_5/read:02	Const_1:0
J
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:0
?
Variable_7:0Variable_7/AssignVariable_7/read:02	Const_2:0
P
Variable_8:0Variable_8/AssignVariable_8/read:02Variable_8/initial_value:0")
!mlscoring_Inferoutputsdescription
 "0
mlscoring_Inferoutputstensor

predict_op:0"#
mlscoring_Inferinputs

inputs"
train_op


Momentum"
	summaries


loss:0"0
mlscoring_Inferinputstensor

image_input:0*
Infer
6
inputs,
image_input:0˙˙˙˙˙˙˙˙˙*
outputs
predict_op:0	˙˙˙˙˙˙˙˙˙tensorflow/serving/predict