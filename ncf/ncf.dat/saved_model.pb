��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8��

�
Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_11/kernel/v
�
*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

: *
dtype0
�
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_10/kernel/v
�
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

:@ *
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_9/kernel/v
�
)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes
:	�@*
dtype0
�
%Adam/publisher_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*6
shared_name'%Adam/publisher_embedding/embeddings/v
�
9Adam/publisher_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp%Adam/publisher_embedding/embeddings/v*
_output_shapes
:	�@*
dtype0
�
"Adam/author_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*3
shared_name$"Adam/author_embedding/embeddings/v
�
6Adam/author_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp"Adam/author_embedding/embeddings/v*
_output_shapes
:	�@*
dtype0
�
 Adam/book_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*1
shared_name" Adam/book_embedding/embeddings/v
�
4Adam/book_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/book_embedding/embeddings/v*
_output_shapes
:	�@*
dtype0
�
 Adam/user_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@*1
shared_name" Adam/user_embedding/embeddings/v
�
4Adam/user_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/user_embedding/embeddings/v* 
_output_shapes
:
��@*
dtype0
�
Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_11/kernel/m
�
*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

: *
dtype0
�
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_10/kernel/m
�
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes

:@ *
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_9/kernel/m
�
)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes
:	�@*
dtype0
�
%Adam/publisher_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*6
shared_name'%Adam/publisher_embedding/embeddings/m
�
9Adam/publisher_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp%Adam/publisher_embedding/embeddings/m*
_output_shapes
:	�@*
dtype0
�
"Adam/author_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*3
shared_name$"Adam/author_embedding/embeddings/m
�
6Adam/author_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp"Adam/author_embedding/embeddings/m*
_output_shapes
:	�@*
dtype0
�
 Adam/book_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*1
shared_name" Adam/book_embedding/embeddings/m
�
4Adam/book_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/book_embedding/embeddings/m*
_output_shapes
:	�@*
dtype0
�
 Adam/user_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@*1
shared_name" Adam/user_embedding/embeddings/m
�
4Adam/user_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/user_embedding/embeddings/m* 
_output_shapes
:
��@*
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
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

: *
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
: *
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:@ *
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:@*
dtype0
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	�@*
dtype0
�
publisher_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*/
shared_name publisher_embedding/embeddings
�
2publisher_embedding/embeddings/Read/ReadVariableOpReadVariableOppublisher_embedding/embeddings*
_output_shapes
:	�@*
dtype0
�
author_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*,
shared_nameauthor_embedding/embeddings
�
/author_embedding/embeddings/Read/ReadVariableOpReadVariableOpauthor_embedding/embeddings*
_output_shapes
:	�@*
dtype0
�
book_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@**
shared_namebook_embedding/embeddings
�
-book_embedding/embeddings/Read/ReadVariableOpReadVariableOpbook_embedding/embeddings*
_output_shapes
:	�@*
dtype0
�
user_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@**
shared_nameuser_embedding/embeddings
�
-user_embedding/embeddings/Read/ReadVariableOpReadVariableOpuser_embedding/embeddings* 
_output_shapes
:
��@*
dtype0

serving_default_author_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
}
serving_default_book_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
~
serving_default_genre_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
serving_default_publisher_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
#serving_default_user_features_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
}
serving_default_user_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
}
serving_default_year_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_author_inputserving_default_book_inputserving_default_genre_inputserving_default_publisher_input#serving_default_user_features_inputserving_default_user_inputserving_default_year_inputpublisher_embedding/embeddingsauthor_embedding/embeddingsbook_embedding/embeddingsuser_embedding/embeddingsdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *.
f)R'
%__inference_signature_wrapper_2351736

NoOpNoOp
�e
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�d
value�dB�d B�d
�
layer-0
layer-1
layer-2
layer-3
layer_with_weights-0
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-4
layer-16
layer_with_weights-5
layer-17
layer_with_weights-6
layer-18
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
* 
* 
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#
embeddings*
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*
embeddings*
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1
embeddings*
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
8
embeddings*
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses* 
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses* 
* 
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
* 
* 
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias*
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias*
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias*
J
#0
*1
12
83
]4
^5
e6
f7
m8
n9*
J
#0
*1
12
83
]4
^5
e6
f7
m8
n9*
* 
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ttrace_0
utrace_1
vtrace_2
wtrace_3* 
6
xtrace_0
ytrace_1
ztrace_2
{trace_3* 
* 
�
|iter

}beta_1

~beta_2
	decay
�learning_rate#m�*m�1m�8m�]m�^m�em�fm�mm�nm�#v�*v�1v�8v�]v�^v�ev�fv�mv�nv�*

�serving_default* 

#0*

#0*
* 
�
�non_trainable_variables
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

�trace_0* 

�trace_0* 
mg
VARIABLE_VALUEuser_embedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

*0*

*0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
mg
VARIABLE_VALUEbook_embedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

10*

10*
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

�trace_0* 

�trace_0* 
oi
VARIABLE_VALUEauthor_embedding/embeddings:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

80*

80*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
rl
VARIABLE_VALUEpublisher_embedding/embeddings:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

]0
^1*

]0
^1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

e0
f1*

e0
f1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_10/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

m0
n1*

m0
n1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_11/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18*
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
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
��
VARIABLE_VALUE Adam/user_embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/book_embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/author_embedding/embeddings/mVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Adam/publisher_embedding/embeddings/mVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/user_embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/book_embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/author_embedding/embeddings/vVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Adam/publisher_embedding/embeddings/vVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-user_embedding/embeddings/Read/ReadVariableOp-book_embedding/embeddings/Read/ReadVariableOp/author_embedding/embeddings/Read/ReadVariableOp2publisher_embedding/embeddings/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp4Adam/user_embedding/embeddings/m/Read/ReadVariableOp4Adam/book_embedding/embeddings/m/Read/ReadVariableOp6Adam/author_embedding/embeddings/m/Read/ReadVariableOp9Adam/publisher_embedding/embeddings/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp4Adam/user_embedding/embeddings/v/Read/ReadVariableOp4Adam/book_embedding/embeddings/v/Read/ReadVariableOp6Adam/author_embedding/embeddings/v/Read/ReadVariableOp9Adam/publisher_embedding/embeddings/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
GPU2*0J 8� *)
f$R"
 __inference__traced_save_2352269
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameuser_embedding/embeddingsbook_embedding/embeddingsauthor_embedding/embeddingspublisher_embedding/embeddingsdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount Adam/user_embedding/embeddings/m Adam/book_embedding/embeddings/m"Adam/author_embedding/embeddings/m%Adam/publisher_embedding/embeddings/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/dense_10/kernel/mAdam/dense_10/bias/mAdam/dense_11/kernel/mAdam/dense_11/bias/m Adam/user_embedding/embeddings/v Adam/book_embedding/embeddings/v"Adam/author_embedding/embeddings/v%Adam/publisher_embedding/embeddings/vAdam/dense_9/kernel/vAdam/dense_9/bias/vAdam/dense_10/kernel/vAdam/dense_10/bias/vAdam/dense_11/kernel/vAdam/dense_11/bias/v*3
Tin,
*2(*
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
GPU2*0J 8� *,
f'R%
#__inference__traced_restore_2352396۰
�

�
E__inference_dense_10_layer_call_and_return_conditional_losses_2351333

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
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
�
c
G__inference_flatten_18_layer_call_and_return_conditional_losses_2351281

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
H
,__inference_flatten_16_layer_call_fn_2352001

inputs
identity�
PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_2351265`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
P__inference_publisher_embedding_layer_call_and_return_conditional_losses_2351213

inputs+
embedding_lookup_2351207:	�@
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_2351207Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2351207*+
_output_shapes
:���������@*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2351207*+
_output_shapes
:���������@�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
G__inference_flatten_17_layer_call_and_return_conditional_losses_2351273

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
c
G__inference_flatten_16_layer_call_and_return_conditional_losses_2352007

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
/__inference_concatenate_4_layer_call_fn_2352051
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
identity�
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_concatenate_4_layer_call_and_return_conditional_losses_2351303a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������@:���������@:���������:���������@:���������@:���������:���������:Q M
'
_output_shapes
:���������@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:���������@
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������@
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/6
�:
�
D__inference_model_3_layer_call_and_return_conditional_losses_2351697

user_input

book_input
user_features_input
author_input
publisher_input

year_input
genre_input.
publisher_embedding_2351664:	�@+
author_embedding_2351667:	�@)
book_embedding_2351670:	�@*
user_embedding_2351673:
��@"
dense_9_2351681:	�@
dense_9_2351683:@"
dense_10_2351686:@ 
dense_10_2351688: "
dense_11_2351691: 
dense_11_2351693:
identity��(author_embedding/StatefulPartitionedCall�&book_embedding/StatefulPartitionedCall� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�+publisher_embedding/StatefulPartitionedCall�&user_embedding/StatefulPartitionedCall�
+publisher_embedding/StatefulPartitionedCallStatefulPartitionedCallpublisher_inputpublisher_embedding_2351664*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_publisher_embedding_layer_call_and_return_conditional_losses_2351213�
(author_embedding/StatefulPartitionedCallStatefulPartitionedCallauthor_inputauthor_embedding_2351667*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_author_embedding_layer_call_and_return_conditional_losses_2351227�
&book_embedding/StatefulPartitionedCallStatefulPartitionedCall
book_inputbook_embedding_2351670*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_book_embedding_layer_call_and_return_conditional_losses_2351241�
&user_embedding/StatefulPartitionedCallStatefulPartitionedCall
user_inputuser_embedding_2351673*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_user_embedding_layer_call_and_return_conditional_losses_2351255�
flatten_16/PartitionedCallPartitionedCall/user_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_2351265�
flatten_17/PartitionedCallPartitionedCall/book_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_17_layer_call_and_return_conditional_losses_2351273�
flatten_18/PartitionedCallPartitionedCall1author_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_18_layer_call_and_return_conditional_losses_2351281�
flatten_19/PartitionedCallPartitionedCall4publisher_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_2351289�
concatenate_4/PartitionedCallPartitionedCall#flatten_16/PartitionedCall:output:0#flatten_17/PartitionedCall:output:0user_features_input#flatten_18/PartitionedCall:output:0#flatten_19/PartitionedCall:output:0
year_inputgenre_input*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_concatenate_4_layer_call_and_return_conditional_losses_2351303�
dense_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0dense_9_2351681dense_9_2351683*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_2351316�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_2351686dense_10_2351688*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_2351333�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_2351691dense_11_2351693*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_2351350x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^author_embedding/StatefulPartitionedCall'^book_embedding/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall,^publisher_embedding/StatefulPartitionedCall'^user_embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2T
(author_embedding/StatefulPartitionedCall(author_embedding/StatefulPartitionedCall2P
&book_embedding/StatefulPartitionedCall&book_embedding/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2Z
+publisher_embedding/StatefulPartitionedCall+publisher_embedding/StatefulPartitionedCall2P
&user_embedding/StatefulPartitionedCall&user_embedding/StatefulPartitionedCall:S O
'
_output_shapes
:���������
$
_user_specified_name
user_input:SO
'
_output_shapes
:���������
$
_user_specified_name
book_input:\X
'
_output_shapes
:���������
-
_user_specified_nameuser_features_input:UQ
'
_output_shapes
:���������
&
_user_specified_nameauthor_input:XT
'
_output_shapes
:���������
)
_user_specified_namepublisher_input:SO
'
_output_shapes
:���������
$
_user_specified_name
year_input:TP
'
_output_shapes
:���������
%
_user_specified_namegenre_input
�

�
E__inference_dense_10_layer_call_and_return_conditional_losses_2352103

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
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
�
�
)__inference_dense_9_layer_call_fn_2352072

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_2351316o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
J__inference_concatenate_4_layer_call_and_return_conditional_losses_2351303

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������@:���������@:���������:���������@:���������@:���������:���������:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
5__inference_publisher_embedding_layer_call_fn_2351986

inputs
unknown:	�@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_publisher_embedding_layer_call_and_return_conditional_losses_2351213s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
G__inference_flatten_19_layer_call_and_return_conditional_losses_2351289

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
K__inference_book_embedding_layer_call_and_return_conditional_losses_2351241

inputs+
embedding_lookup_2351235:	�@
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_2351235Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2351235*+
_output_shapes
:���������@*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2351235*+
_output_shapes
:���������@�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
H
,__inference_flatten_17_layer_call_fn_2352012

inputs
identity�
PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_17_layer_call_and_return_conditional_losses_2351273`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
0__inference_book_embedding_layer_call_fn_2351952

inputs
unknown:	�@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_book_embedding_layer_call_and_return_conditional_losses_2351241s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_model_3_layer_call_fn_2351613

user_input

book_input
user_features_input
author_input
publisher_input

year_input
genre_input
unknown:	�@
	unknown_0:	�@
	unknown_1:	�@
	unknown_2:
��@
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
user_input
book_inputuser_features_inputauthor_inputpublisher_input
year_inputgenre_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_2351559o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:���������
$
_user_specified_name
user_input:SO
'
_output_shapes
:���������
$
_user_specified_name
book_input:\X
'
_output_shapes
:���������
-
_user_specified_nameuser_features_input:UQ
'
_output_shapes
:���������
&
_user_specified_nameauthor_input:XT
'
_output_shapes
:���������
)
_user_specified_namepublisher_input:SO
'
_output_shapes
:���������
$
_user_specified_name
year_input:TP
'
_output_shapes
:���������
%
_user_specified_namegenre_input
�J
�
D__inference_model_3_layer_call_and_return_conditional_losses_2351863
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6?
,publisher_embedding_embedding_lookup_2351808:	�@<
)author_embedding_embedding_lookup_2351814:	�@:
'book_embedding_embedding_lookup_2351820:	�@;
'user_embedding_embedding_lookup_2351826:
��@9
&dense_9_matmul_readvariableop_resource:	�@5
'dense_9_biasadd_readvariableop_resource:@9
'dense_10_matmul_readvariableop_resource:@ 6
(dense_10_biasadd_readvariableop_resource: 9
'dense_11_matmul_readvariableop_resource: 6
(dense_11_biasadd_readvariableop_resource:
identity��!author_embedding/embedding_lookup�book_embedding/embedding_lookup�dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�dense_11/BiasAdd/ReadVariableOp�dense_11/MatMul/ReadVariableOp�dense_9/BiasAdd/ReadVariableOp�dense_9/MatMul/ReadVariableOp�$publisher_embedding/embedding_lookup�user_embedding/embedding_lookupk
publisher_embedding/CastCastinputs_4*

DstT0*

SrcT0*'
_output_shapes
:����������
$publisher_embedding/embedding_lookupResourceGather,publisher_embedding_embedding_lookup_2351808publisher_embedding/Cast:y:0*
Tindices0*?
_class5
31loc:@publisher_embedding/embedding_lookup/2351808*+
_output_shapes
:���������@*
dtype0�
-publisher_embedding/embedding_lookup/IdentityIdentity-publisher_embedding/embedding_lookup:output:0*
T0*?
_class5
31loc:@publisher_embedding/embedding_lookup/2351808*+
_output_shapes
:���������@�
/publisher_embedding/embedding_lookup/Identity_1Identity6publisher_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@h
author_embedding/CastCastinputs_3*

DstT0*

SrcT0*'
_output_shapes
:����������
!author_embedding/embedding_lookupResourceGather)author_embedding_embedding_lookup_2351814author_embedding/Cast:y:0*
Tindices0*<
_class2
0.loc:@author_embedding/embedding_lookup/2351814*+
_output_shapes
:���������@*
dtype0�
*author_embedding/embedding_lookup/IdentityIdentity*author_embedding/embedding_lookup:output:0*
T0*<
_class2
0.loc:@author_embedding/embedding_lookup/2351814*+
_output_shapes
:���������@�
,author_embedding/embedding_lookup/Identity_1Identity3author_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@f
book_embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:����������
book_embedding/embedding_lookupResourceGather'book_embedding_embedding_lookup_2351820book_embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@book_embedding/embedding_lookup/2351820*+
_output_shapes
:���������@*
dtype0�
(book_embedding/embedding_lookup/IdentityIdentity(book_embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@book_embedding/embedding_lookup/2351820*+
_output_shapes
:���������@�
*book_embedding/embedding_lookup/Identity_1Identity1book_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@f
user_embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
user_embedding/embedding_lookupResourceGather'user_embedding_embedding_lookup_2351826user_embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@user_embedding/embedding_lookup/2351826*+
_output_shapes
:���������@*
dtype0�
(user_embedding/embedding_lookup/IdentityIdentity(user_embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@user_embedding/embedding_lookup/2351826*+
_output_shapes
:���������@�
*user_embedding/embedding_lookup/Identity_1Identity1user_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@a
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
flatten_16/ReshapeReshape3user_embedding/embedding_lookup/Identity_1:output:0flatten_16/Const:output:0*
T0*'
_output_shapes
:���������@a
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
flatten_17/ReshapeReshape3book_embedding/embedding_lookup/Identity_1:output:0flatten_17/Const:output:0*
T0*'
_output_shapes
:���������@a
flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
flatten_18/ReshapeReshape5author_embedding/embedding_lookup/Identity_1:output:0flatten_18/Const:output:0*
T0*'
_output_shapes
:���������@a
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
flatten_19/ReshapeReshape8publisher_embedding/embedding_lookup/Identity_1:output:0flatten_19/Const:output:0*
T0*'
_output_shapes
:���������@[
concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_4/concatConcatV2flatten_16/Reshape:output:0flatten_17/Reshape:output:0inputs_2flatten_18/Reshape:output:0flatten_19/Reshape:output:0inputs_5inputs_6"concatenate_4/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_9/MatMulMatMulconcatenate_4/concat:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_10/MatMulMatMuldense_9/Relu:activations:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_11/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^author_embedding/embedding_lookup ^book_embedding/embedding_lookup ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp%^publisher_embedding/embedding_lookup ^user_embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2F
!author_embedding/embedding_lookup!author_embedding/embedding_lookup2B
book_embedding/embedding_lookupbook_embedding/embedding_lookup2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2L
$publisher_embedding/embedding_lookup$publisher_embedding/embedding_lookup2B
user_embedding/embedding_lookupuser_embedding/embedding_lookup:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/6
�
�
%__inference_signature_wrapper_2351736
author_input

book_input
genre_input
publisher_input
user_features_input

user_input

year_input
unknown:	�@
	unknown_0:	�@
	unknown_1:	�@
	unknown_2:
��@
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
user_input
book_inputuser_features_inputauthor_inputpublisher_input
year_inputgenre_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__wrapped_model_2351184o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:���������
&
_user_specified_nameauthor_input:SO
'
_output_shapes
:���������
$
_user_specified_name
book_input:TP
'
_output_shapes
:���������
%
_user_specified_namegenre_input:XT
'
_output_shapes
:���������
)
_user_specified_namepublisher_input:\X
'
_output_shapes
:���������
-
_user_specified_nameuser_features_input:SO
'
_output_shapes
:���������
$
_user_specified_name
user_input:SO
'
_output_shapes
:���������
$
_user_specified_name
year_input
�	
�
M__inference_author_embedding_layer_call_and_return_conditional_losses_2351227

inputs+
embedding_lookup_2351221:	�@
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_2351221Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2351221*+
_output_shapes
:���������@*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2351221*+
_output_shapes
:���������@�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_9_layer_call_and_return_conditional_losses_2352083

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
2__inference_author_embedding_layer_call_fn_2351969

inputs
unknown:	�@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_author_embedding_layer_call_and_return_conditional_losses_2351227s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
G__inference_flatten_18_layer_call_and_return_conditional_losses_2352029

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
H
,__inference_flatten_19_layer_call_fn_2352034

inputs
identity�
PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_2351289`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�J
�
D__inference_model_3_layer_call_and_return_conditional_losses_2351928
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6?
,publisher_embedding_embedding_lookup_2351873:	�@<
)author_embedding_embedding_lookup_2351879:	�@:
'book_embedding_embedding_lookup_2351885:	�@;
'user_embedding_embedding_lookup_2351891:
��@9
&dense_9_matmul_readvariableop_resource:	�@5
'dense_9_biasadd_readvariableop_resource:@9
'dense_10_matmul_readvariableop_resource:@ 6
(dense_10_biasadd_readvariableop_resource: 9
'dense_11_matmul_readvariableop_resource: 6
(dense_11_biasadd_readvariableop_resource:
identity��!author_embedding/embedding_lookup�book_embedding/embedding_lookup�dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�dense_11/BiasAdd/ReadVariableOp�dense_11/MatMul/ReadVariableOp�dense_9/BiasAdd/ReadVariableOp�dense_9/MatMul/ReadVariableOp�$publisher_embedding/embedding_lookup�user_embedding/embedding_lookupk
publisher_embedding/CastCastinputs_4*

DstT0*

SrcT0*'
_output_shapes
:����������
$publisher_embedding/embedding_lookupResourceGather,publisher_embedding_embedding_lookup_2351873publisher_embedding/Cast:y:0*
Tindices0*?
_class5
31loc:@publisher_embedding/embedding_lookup/2351873*+
_output_shapes
:���������@*
dtype0�
-publisher_embedding/embedding_lookup/IdentityIdentity-publisher_embedding/embedding_lookup:output:0*
T0*?
_class5
31loc:@publisher_embedding/embedding_lookup/2351873*+
_output_shapes
:���������@�
/publisher_embedding/embedding_lookup/Identity_1Identity6publisher_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@h
author_embedding/CastCastinputs_3*

DstT0*

SrcT0*'
_output_shapes
:����������
!author_embedding/embedding_lookupResourceGather)author_embedding_embedding_lookup_2351879author_embedding/Cast:y:0*
Tindices0*<
_class2
0.loc:@author_embedding/embedding_lookup/2351879*+
_output_shapes
:���������@*
dtype0�
*author_embedding/embedding_lookup/IdentityIdentity*author_embedding/embedding_lookup:output:0*
T0*<
_class2
0.loc:@author_embedding/embedding_lookup/2351879*+
_output_shapes
:���������@�
,author_embedding/embedding_lookup/Identity_1Identity3author_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@f
book_embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:����������
book_embedding/embedding_lookupResourceGather'book_embedding_embedding_lookup_2351885book_embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@book_embedding/embedding_lookup/2351885*+
_output_shapes
:���������@*
dtype0�
(book_embedding/embedding_lookup/IdentityIdentity(book_embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@book_embedding/embedding_lookup/2351885*+
_output_shapes
:���������@�
*book_embedding/embedding_lookup/Identity_1Identity1book_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@f
user_embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
user_embedding/embedding_lookupResourceGather'user_embedding_embedding_lookup_2351891user_embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@user_embedding/embedding_lookup/2351891*+
_output_shapes
:���������@*
dtype0�
(user_embedding/embedding_lookup/IdentityIdentity(user_embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@user_embedding/embedding_lookup/2351891*+
_output_shapes
:���������@�
*user_embedding/embedding_lookup/Identity_1Identity1user_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@a
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
flatten_16/ReshapeReshape3user_embedding/embedding_lookup/Identity_1:output:0flatten_16/Const:output:0*
T0*'
_output_shapes
:���������@a
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
flatten_17/ReshapeReshape3book_embedding/embedding_lookup/Identity_1:output:0flatten_17/Const:output:0*
T0*'
_output_shapes
:���������@a
flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
flatten_18/ReshapeReshape5author_embedding/embedding_lookup/Identity_1:output:0flatten_18/Const:output:0*
T0*'
_output_shapes
:���������@a
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
flatten_19/ReshapeReshape8publisher_embedding/embedding_lookup/Identity_1:output:0flatten_19/Const:output:0*
T0*'
_output_shapes
:���������@[
concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_4/concatConcatV2flatten_16/Reshape:output:0flatten_17/Reshape:output:0inputs_2flatten_18/Reshape:output:0flatten_19/Reshape:output:0inputs_5inputs_6"concatenate_4/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_9/MatMulMatMulconcatenate_4/concat:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_10/MatMulMatMuldense_9/Relu:activations:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_11/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^author_embedding/embedding_lookup ^book_embedding/embedding_lookup ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp%^publisher_embedding/embedding_lookup ^user_embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2F
!author_embedding/embedding_lookup!author_embedding/embedding_lookup2B
book_embedding/embedding_lookupbook_embedding/embedding_lookup2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2L
$publisher_embedding/embedding_lookup$publisher_embedding/embedding_lookup2B
user_embedding/embedding_lookupuser_embedding/embedding_lookup:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/6
Ԟ
�
#__inference__traced_restore_2352396
file_prefix>
*assignvariableop_user_embedding_embeddings:
��@?
,assignvariableop_1_book_embedding_embeddings:	�@A
.assignvariableop_2_author_embedding_embeddings:	�@D
1assignvariableop_3_publisher_embedding_embeddings:	�@4
!assignvariableop_4_dense_9_kernel:	�@-
assignvariableop_5_dense_9_bias:@4
"assignvariableop_6_dense_10_kernel:@ .
 assignvariableop_7_dense_10_bias: 4
"assignvariableop_8_dense_11_kernel: .
 assignvariableop_9_dense_11_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: H
4assignvariableop_19_adam_user_embedding_embeddings_m:
��@G
4assignvariableop_20_adam_book_embedding_embeddings_m:	�@I
6assignvariableop_21_adam_author_embedding_embeddings_m:	�@L
9assignvariableop_22_adam_publisher_embedding_embeddings_m:	�@<
)assignvariableop_23_adam_dense_9_kernel_m:	�@5
'assignvariableop_24_adam_dense_9_bias_m:@<
*assignvariableop_25_adam_dense_10_kernel_m:@ 6
(assignvariableop_26_adam_dense_10_bias_m: <
*assignvariableop_27_adam_dense_11_kernel_m: 6
(assignvariableop_28_adam_dense_11_bias_m:H
4assignvariableop_29_adam_user_embedding_embeddings_v:
��@G
4assignvariableop_30_adam_book_embedding_embeddings_v:	�@I
6assignvariableop_31_adam_author_embedding_embeddings_v:	�@L
9assignvariableop_32_adam_publisher_embedding_embeddings_v:	�@<
)assignvariableop_33_adam_dense_9_kernel_v:	�@5
'assignvariableop_34_adam_dense_9_bias_v:@<
*assignvariableop_35_adam_dense_10_kernel_v:@ 6
(assignvariableop_36_adam_dense_10_bias_v: <
*assignvariableop_37_adam_dense_11_kernel_v: 6
(assignvariableop_38_adam_dense_11_bias_v:
identity_40��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp*assignvariableop_user_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp,assignvariableop_1_book_embedding_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp.assignvariableop_2_author_embedding_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp1assignvariableop_3_publisher_embedding_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_9_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_9_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_10_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_10_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_11_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_11_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_user_embedding_embeddings_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_book_embedding_embeddings_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_author_embedding_embeddings_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp9assignvariableop_22_adam_publisher_embedding_embeddings_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_9_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_9_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_10_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_10_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_11_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_11_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_user_embedding_embeddings_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_book_embedding_embeddings_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_author_embedding_embeddings_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp9assignvariableop_32_adam_publisher_embedding_embeddings_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_9_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_9_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_10_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_10_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_11_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_11_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
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
�
�
)__inference_model_3_layer_call_fn_2351798
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
unknown:	�@
	unknown_0:	�@
	unknown_1:	�@
	unknown_2:
��@
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_2351559o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/6
�
�
*__inference_dense_10_layer_call_fn_2352092

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_2351333o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
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
�
c
G__inference_flatten_19_layer_call_and_return_conditional_losses_2352040

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�9
�
D__inference_model_3_layer_call_and_return_conditional_losses_2351357

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6.
publisher_embedding_2351214:	�@+
author_embedding_2351228:	�@)
book_embedding_2351242:	�@*
user_embedding_2351256:
��@"
dense_9_2351317:	�@
dense_9_2351319:@"
dense_10_2351334:@ 
dense_10_2351336: "
dense_11_2351351: 
dense_11_2351353:
identity��(author_embedding/StatefulPartitionedCall�&book_embedding/StatefulPartitionedCall� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�+publisher_embedding/StatefulPartitionedCall�&user_embedding/StatefulPartitionedCall�
+publisher_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_4publisher_embedding_2351214*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_publisher_embedding_layer_call_and_return_conditional_losses_2351213�
(author_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_3author_embedding_2351228*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_author_embedding_layer_call_and_return_conditional_losses_2351227�
&book_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1book_embedding_2351242*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_book_embedding_layer_call_and_return_conditional_losses_2351241�
&user_embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_2351256*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_user_embedding_layer_call_and_return_conditional_losses_2351255�
flatten_16/PartitionedCallPartitionedCall/user_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_2351265�
flatten_17/PartitionedCallPartitionedCall/book_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_17_layer_call_and_return_conditional_losses_2351273�
flatten_18/PartitionedCallPartitionedCall1author_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_18_layer_call_and_return_conditional_losses_2351281�
flatten_19/PartitionedCallPartitionedCall4publisher_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_2351289�
concatenate_4/PartitionedCallPartitionedCall#flatten_16/PartitionedCall:output:0#flatten_17/PartitionedCall:output:0inputs_2#flatten_18/PartitionedCall:output:0#flatten_19/PartitionedCall:output:0inputs_5inputs_6*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_concatenate_4_layer_call_and_return_conditional_losses_2351303�
dense_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0dense_9_2351317dense_9_2351319*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_2351316�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_2351334dense_10_2351336*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_2351333�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_2351351dense_11_2351353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_2351350x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^author_embedding/StatefulPartitionedCall'^book_embedding/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall,^publisher_embedding/StatefulPartitionedCall'^user_embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2T
(author_embedding/StatefulPartitionedCall(author_embedding/StatefulPartitionedCall2P
&book_embedding/StatefulPartitionedCall&book_embedding/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2Z
+publisher_embedding/StatefulPartitionedCall+publisher_embedding/StatefulPartitionedCall2P
&user_embedding/StatefulPartitionedCall&user_embedding/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
E__inference_dense_11_layer_call_and_return_conditional_losses_2352123

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
H
,__inference_flatten_18_layer_call_fn_2352023

inputs
identity�
PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_18_layer_call_and_return_conditional_losses_2351281`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
0__inference_user_embedding_layer_call_fn_2351935

inputs
unknown:
��@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_user_embedding_layer_call_and_return_conditional_losses_2351255s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
K__inference_user_embedding_layer_call_and_return_conditional_losses_2351945

inputs,
embedding_lookup_2351939:
��@
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_2351939Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2351939*+
_output_shapes
:���������@*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2351939*+
_output_shapes
:���������@�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�:
�
D__inference_model_3_layer_call_and_return_conditional_losses_2351655

user_input

book_input
user_features_input
author_input
publisher_input

year_input
genre_input.
publisher_embedding_2351622:	�@+
author_embedding_2351625:	�@)
book_embedding_2351628:	�@*
user_embedding_2351631:
��@"
dense_9_2351639:	�@
dense_9_2351641:@"
dense_10_2351644:@ 
dense_10_2351646: "
dense_11_2351649: 
dense_11_2351651:
identity��(author_embedding/StatefulPartitionedCall�&book_embedding/StatefulPartitionedCall� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�+publisher_embedding/StatefulPartitionedCall�&user_embedding/StatefulPartitionedCall�
+publisher_embedding/StatefulPartitionedCallStatefulPartitionedCallpublisher_inputpublisher_embedding_2351622*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_publisher_embedding_layer_call_and_return_conditional_losses_2351213�
(author_embedding/StatefulPartitionedCallStatefulPartitionedCallauthor_inputauthor_embedding_2351625*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_author_embedding_layer_call_and_return_conditional_losses_2351227�
&book_embedding/StatefulPartitionedCallStatefulPartitionedCall
book_inputbook_embedding_2351628*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_book_embedding_layer_call_and_return_conditional_losses_2351241�
&user_embedding/StatefulPartitionedCallStatefulPartitionedCall
user_inputuser_embedding_2351631*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_user_embedding_layer_call_and_return_conditional_losses_2351255�
flatten_16/PartitionedCallPartitionedCall/user_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_2351265�
flatten_17/PartitionedCallPartitionedCall/book_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_17_layer_call_and_return_conditional_losses_2351273�
flatten_18/PartitionedCallPartitionedCall1author_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_18_layer_call_and_return_conditional_losses_2351281�
flatten_19/PartitionedCallPartitionedCall4publisher_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_2351289�
concatenate_4/PartitionedCallPartitionedCall#flatten_16/PartitionedCall:output:0#flatten_17/PartitionedCall:output:0user_features_input#flatten_18/PartitionedCall:output:0#flatten_19/PartitionedCall:output:0
year_inputgenre_input*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_concatenate_4_layer_call_and_return_conditional_losses_2351303�
dense_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0dense_9_2351639dense_9_2351641*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_2351316�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_2351644dense_10_2351646*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_2351333�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_2351649dense_11_2351651*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_2351350x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^author_embedding/StatefulPartitionedCall'^book_embedding/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall,^publisher_embedding/StatefulPartitionedCall'^user_embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2T
(author_embedding/StatefulPartitionedCall(author_embedding/StatefulPartitionedCall2P
&book_embedding/StatefulPartitionedCall&book_embedding/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2Z
+publisher_embedding/StatefulPartitionedCall+publisher_embedding/StatefulPartitionedCall2P
&user_embedding/StatefulPartitionedCall&user_embedding/StatefulPartitionedCall:S O
'
_output_shapes
:���������
$
_user_specified_name
user_input:SO
'
_output_shapes
:���������
$
_user_specified_name
book_input:\X
'
_output_shapes
:���������
-
_user_specified_nameuser_features_input:UQ
'
_output_shapes
:���������
&
_user_specified_nameauthor_input:XT
'
_output_shapes
:���������
)
_user_specified_namepublisher_input:SO
'
_output_shapes
:���������
$
_user_specified_name
year_input:TP
'
_output_shapes
:���������
%
_user_specified_namegenre_input
�T
�	
"__inference__wrapped_model_2351184

user_input

book_input
user_features_input
author_input
publisher_input

year_input
genre_inputG
4model_3_publisher_embedding_embedding_lookup_2351129:	�@D
1model_3_author_embedding_embedding_lookup_2351135:	�@B
/model_3_book_embedding_embedding_lookup_2351141:	�@C
/model_3_user_embedding_embedding_lookup_2351147:
��@A
.model_3_dense_9_matmul_readvariableop_resource:	�@=
/model_3_dense_9_biasadd_readvariableop_resource:@A
/model_3_dense_10_matmul_readvariableop_resource:@ >
0model_3_dense_10_biasadd_readvariableop_resource: A
/model_3_dense_11_matmul_readvariableop_resource: >
0model_3_dense_11_biasadd_readvariableop_resource:
identity��)model_3/author_embedding/embedding_lookup�'model_3/book_embedding/embedding_lookup�'model_3/dense_10/BiasAdd/ReadVariableOp�&model_3/dense_10/MatMul/ReadVariableOp�'model_3/dense_11/BiasAdd/ReadVariableOp�&model_3/dense_11/MatMul/ReadVariableOp�&model_3/dense_9/BiasAdd/ReadVariableOp�%model_3/dense_9/MatMul/ReadVariableOp�,model_3/publisher_embedding/embedding_lookup�'model_3/user_embedding/embedding_lookupz
 model_3/publisher_embedding/CastCastpublisher_input*

DstT0*

SrcT0*'
_output_shapes
:����������
,model_3/publisher_embedding/embedding_lookupResourceGather4model_3_publisher_embedding_embedding_lookup_2351129$model_3/publisher_embedding/Cast:y:0*
Tindices0*G
_class=
;9loc:@model_3/publisher_embedding/embedding_lookup/2351129*+
_output_shapes
:���������@*
dtype0�
5model_3/publisher_embedding/embedding_lookup/IdentityIdentity5model_3/publisher_embedding/embedding_lookup:output:0*
T0*G
_class=
;9loc:@model_3/publisher_embedding/embedding_lookup/2351129*+
_output_shapes
:���������@�
7model_3/publisher_embedding/embedding_lookup/Identity_1Identity>model_3/publisher_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@t
model_3/author_embedding/CastCastauthor_input*

DstT0*

SrcT0*'
_output_shapes
:����������
)model_3/author_embedding/embedding_lookupResourceGather1model_3_author_embedding_embedding_lookup_2351135!model_3/author_embedding/Cast:y:0*
Tindices0*D
_class:
86loc:@model_3/author_embedding/embedding_lookup/2351135*+
_output_shapes
:���������@*
dtype0�
2model_3/author_embedding/embedding_lookup/IdentityIdentity2model_3/author_embedding/embedding_lookup:output:0*
T0*D
_class:
86loc:@model_3/author_embedding/embedding_lookup/2351135*+
_output_shapes
:���������@�
4model_3/author_embedding/embedding_lookup/Identity_1Identity;model_3/author_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@p
model_3/book_embedding/CastCast
book_input*

DstT0*

SrcT0*'
_output_shapes
:����������
'model_3/book_embedding/embedding_lookupResourceGather/model_3_book_embedding_embedding_lookup_2351141model_3/book_embedding/Cast:y:0*
Tindices0*B
_class8
64loc:@model_3/book_embedding/embedding_lookup/2351141*+
_output_shapes
:���������@*
dtype0�
0model_3/book_embedding/embedding_lookup/IdentityIdentity0model_3/book_embedding/embedding_lookup:output:0*
T0*B
_class8
64loc:@model_3/book_embedding/embedding_lookup/2351141*+
_output_shapes
:���������@�
2model_3/book_embedding/embedding_lookup/Identity_1Identity9model_3/book_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@p
model_3/user_embedding/CastCast
user_input*

DstT0*

SrcT0*'
_output_shapes
:����������
'model_3/user_embedding/embedding_lookupResourceGather/model_3_user_embedding_embedding_lookup_2351147model_3/user_embedding/Cast:y:0*
Tindices0*B
_class8
64loc:@model_3/user_embedding/embedding_lookup/2351147*+
_output_shapes
:���������@*
dtype0�
0model_3/user_embedding/embedding_lookup/IdentityIdentity0model_3/user_embedding/embedding_lookup:output:0*
T0*B
_class8
64loc:@model_3/user_embedding/embedding_lookup/2351147*+
_output_shapes
:���������@�
2model_3/user_embedding/embedding_lookup/Identity_1Identity9model_3/user_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@i
model_3/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
model_3/flatten_16/ReshapeReshape;model_3/user_embedding/embedding_lookup/Identity_1:output:0!model_3/flatten_16/Const:output:0*
T0*'
_output_shapes
:���������@i
model_3/flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
model_3/flatten_17/ReshapeReshape;model_3/book_embedding/embedding_lookup/Identity_1:output:0!model_3/flatten_17/Const:output:0*
T0*'
_output_shapes
:���������@i
model_3/flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
model_3/flatten_18/ReshapeReshape=model_3/author_embedding/embedding_lookup/Identity_1:output:0!model_3/flatten_18/Const:output:0*
T0*'
_output_shapes
:���������@i
model_3/flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
model_3/flatten_19/ReshapeReshape@model_3/publisher_embedding/embedding_lookup/Identity_1:output:0!model_3/flatten_19/Const:output:0*
T0*'
_output_shapes
:���������@c
!model_3/concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_3/concatenate_4/concatConcatV2#model_3/flatten_16/Reshape:output:0#model_3/flatten_17/Reshape:output:0user_features_input#model_3/flatten_18/Reshape:output:0#model_3/flatten_19/Reshape:output:0
year_inputgenre_input*model_3/concatenate_4/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
%model_3/dense_9/MatMul/ReadVariableOpReadVariableOp.model_3_dense_9_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
model_3/dense_9/MatMulMatMul%model_3/concatenate_4/concat:output:0-model_3/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
&model_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_3/dense_9/BiasAddBiasAdd model_3/dense_9/MatMul:product:0.model_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@p
model_3/dense_9/ReluRelu model_3/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
&model_3/dense_10/MatMul/ReadVariableOpReadVariableOp/model_3_dense_10_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model_3/dense_10/MatMulMatMul"model_3/dense_9/Relu:activations:0.model_3/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'model_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_3/dense_10/BiasAddBiasAdd!model_3/dense_10/MatMul:product:0/model_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
model_3/dense_10/ReluRelu!model_3/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
&model_3/dense_11/MatMul/ReadVariableOpReadVariableOp/model_3_dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_3/dense_11/MatMulMatMul#model_3/dense_10/Relu:activations:0.model_3/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'model_3/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_3/dense_11/BiasAddBiasAdd!model_3/dense_11/MatMul:product:0/model_3/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
model_3/dense_11/SigmoidSigmoid!model_3/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:���������k
IdentityIdentitymodel_3/dense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp*^model_3/author_embedding/embedding_lookup(^model_3/book_embedding/embedding_lookup(^model_3/dense_10/BiasAdd/ReadVariableOp'^model_3/dense_10/MatMul/ReadVariableOp(^model_3/dense_11/BiasAdd/ReadVariableOp'^model_3/dense_11/MatMul/ReadVariableOp'^model_3/dense_9/BiasAdd/ReadVariableOp&^model_3/dense_9/MatMul/ReadVariableOp-^model_3/publisher_embedding/embedding_lookup(^model_3/user_embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2V
)model_3/author_embedding/embedding_lookup)model_3/author_embedding/embedding_lookup2R
'model_3/book_embedding/embedding_lookup'model_3/book_embedding/embedding_lookup2R
'model_3/dense_10/BiasAdd/ReadVariableOp'model_3/dense_10/BiasAdd/ReadVariableOp2P
&model_3/dense_10/MatMul/ReadVariableOp&model_3/dense_10/MatMul/ReadVariableOp2R
'model_3/dense_11/BiasAdd/ReadVariableOp'model_3/dense_11/BiasAdd/ReadVariableOp2P
&model_3/dense_11/MatMul/ReadVariableOp&model_3/dense_11/MatMul/ReadVariableOp2P
&model_3/dense_9/BiasAdd/ReadVariableOp&model_3/dense_9/BiasAdd/ReadVariableOp2N
%model_3/dense_9/MatMul/ReadVariableOp%model_3/dense_9/MatMul/ReadVariableOp2\
,model_3/publisher_embedding/embedding_lookup,model_3/publisher_embedding/embedding_lookup2R
'model_3/user_embedding/embedding_lookup'model_3/user_embedding/embedding_lookup:S O
'
_output_shapes
:���������
$
_user_specified_name
user_input:SO
'
_output_shapes
:���������
$
_user_specified_name
book_input:\X
'
_output_shapes
:���������
-
_user_specified_nameuser_features_input:UQ
'
_output_shapes
:���������
&
_user_specified_nameauthor_input:XT
'
_output_shapes
:���������
)
_user_specified_namepublisher_input:SO
'
_output_shapes
:���������
$
_user_specified_name
year_input:TP
'
_output_shapes
:���������
%
_user_specified_namegenre_input
�

�
D__inference_dense_9_layer_call_and_return_conditional_losses_2351316

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_11_layer_call_and_return_conditional_losses_2351350

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�9
�
D__inference_model_3_layer_call_and_return_conditional_losses_2351559

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6.
publisher_embedding_2351526:	�@+
author_embedding_2351529:	�@)
book_embedding_2351532:	�@*
user_embedding_2351535:
��@"
dense_9_2351543:	�@
dense_9_2351545:@"
dense_10_2351548:@ 
dense_10_2351550: "
dense_11_2351553: 
dense_11_2351555:
identity��(author_embedding/StatefulPartitionedCall�&book_embedding/StatefulPartitionedCall� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�+publisher_embedding/StatefulPartitionedCall�&user_embedding/StatefulPartitionedCall�
+publisher_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_4publisher_embedding_2351526*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_publisher_embedding_layer_call_and_return_conditional_losses_2351213�
(author_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_3author_embedding_2351529*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_author_embedding_layer_call_and_return_conditional_losses_2351227�
&book_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1book_embedding_2351532*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_book_embedding_layer_call_and_return_conditional_losses_2351241�
&user_embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_2351535*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_user_embedding_layer_call_and_return_conditional_losses_2351255�
flatten_16/PartitionedCallPartitionedCall/user_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_2351265�
flatten_17/PartitionedCallPartitionedCall/book_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_17_layer_call_and_return_conditional_losses_2351273�
flatten_18/PartitionedCallPartitionedCall1author_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_18_layer_call_and_return_conditional_losses_2351281�
flatten_19/PartitionedCallPartitionedCall4publisher_embedding/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_2351289�
concatenate_4/PartitionedCallPartitionedCall#flatten_16/PartitionedCall:output:0#flatten_17/PartitionedCall:output:0inputs_2#flatten_18/PartitionedCall:output:0#flatten_19/PartitionedCall:output:0inputs_5inputs_6*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_concatenate_4_layer_call_and_return_conditional_losses_2351303�
dense_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0dense_9_2351543dense_9_2351545*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_2351316�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_2351548dense_10_2351550*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_2351333�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_2351553dense_11_2351555*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_2351350x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^author_embedding/StatefulPartitionedCall'^book_embedding/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall,^publisher_embedding/StatefulPartitionedCall'^user_embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2T
(author_embedding/StatefulPartitionedCall(author_embedding/StatefulPartitionedCall2P
&book_embedding/StatefulPartitionedCall&book_embedding/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2Z
+publisher_embedding/StatefulPartitionedCall+publisher_embedding/StatefulPartitionedCall2P
&user_embedding/StatefulPartitionedCall&user_embedding/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
G__inference_flatten_16_layer_call_and_return_conditional_losses_2351265

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
P__inference_publisher_embedding_layer_call_and_return_conditional_losses_2351996

inputs+
embedding_lookup_2351990:	�@
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_2351990Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2351990*+
_output_shapes
:���������@*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2351990*+
_output_shapes
:���������@�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
M__inference_author_embedding_layer_call_and_return_conditional_losses_2351979

inputs+
embedding_lookup_2351973:	�@
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_2351973Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2351973*+
_output_shapes
:���������@*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2351973*+
_output_shapes
:���������@�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_dense_11_layer_call_fn_2352112

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_2351350o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
�
K__inference_book_embedding_layer_call_and_return_conditional_losses_2351962

inputs+
embedding_lookup_2351956:	�@
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_2351956Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2351956*+
_output_shapes
:���������@*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2351956*+
_output_shapes
:���������@�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_model_3_layer_call_fn_2351767
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
unknown:	�@
	unknown_0:	�@
	unknown_1:	�@
	unknown_2:
��@
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_2351357o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/6
�

�
J__inference_concatenate_4_layer_call_and_return_conditional_losses_2352063
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������@:���������@:���������:���������@:���������@:���������:���������:Q M
'
_output_shapes
:���������@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:���������@
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������@
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/6
�
�
)__inference_model_3_layer_call_fn_2351380

user_input

book_input
user_features_input
author_input
publisher_input

year_input
genre_input
unknown:	�@
	unknown_0:	�@
	unknown_1:	�@
	unknown_2:
��@
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
user_input
book_inputuser_features_inputauthor_inputpublisher_input
year_inputgenre_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_2351357o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:���������
$
_user_specified_name
user_input:SO
'
_output_shapes
:���������
$
_user_specified_name
book_input:\X
'
_output_shapes
:���������
-
_user_specified_nameuser_features_input:UQ
'
_output_shapes
:���������
&
_user_specified_nameauthor_input:XT
'
_output_shapes
:���������
)
_user_specified_namepublisher_input:SO
'
_output_shapes
:���������
$
_user_specified_name
year_input:TP
'
_output_shapes
:���������
%
_user_specified_namegenre_input
�
c
G__inference_flatten_17_layer_call_and_return_conditional_losses_2352018

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
K__inference_user_embedding_layer_call_and_return_conditional_losses_2351255

inputs,
embedding_lookup_2351249:
��@
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_2351249Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2351249*+
_output_shapes
:���������@*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2351249*+
_output_shapes
:���������@�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������@w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�S
�
 __inference__traced_save_2352269
file_prefix8
4savev2_user_embedding_embeddings_read_readvariableop8
4savev2_book_embedding_embeddings_read_readvariableop:
6savev2_author_embedding_embeddings_read_readvariableop=
9savev2_publisher_embedding_embeddings_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop?
;savev2_adam_user_embedding_embeddings_m_read_readvariableop?
;savev2_adam_book_embedding_embeddings_m_read_readvariableopA
=savev2_adam_author_embedding_embeddings_m_read_readvariableopD
@savev2_adam_publisher_embedding_embeddings_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop?
;savev2_adam_user_embedding_embeddings_v_read_readvariableop?
;savev2_adam_book_embedding_embeddings_v_read_readvariableopA
=savev2_adam_author_embedding_embeddings_v_read_readvariableopD
@savev2_adam_publisher_embedding_embeddings_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_user_embedding_embeddings_read_readvariableop4savev2_book_embedding_embeddings_read_readvariableop6savev2_author_embedding_embeddings_read_readvariableop9savev2_publisher_embedding_embeddings_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop;savev2_adam_user_embedding_embeddings_m_read_readvariableop;savev2_adam_book_embedding_embeddings_m_read_readvariableop=savev2_adam_author_embedding_embeddings_m_read_readvariableop@savev2_adam_publisher_embedding_embeddings_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop;savev2_adam_user_embedding_embeddings_v_read_readvariableop;savev2_adam_book_embedding_embeddings_v_read_readvariableop=savev2_adam_author_embedding_embeddings_v_read_readvariableop@savev2_adam_publisher_embedding_embeddings_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :
��@:	�@:	�@:	�@:	�@:@:@ : : :: : : : : : : : : :
��@:	�@:	�@:	�@:	�@:@:@ : : ::
��@:	�@:	�@:	�@:	�@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
��@:%!

_output_shapes
:	�@:%!

_output_shapes
:	�@:%!

_output_shapes
:	�@:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$	 

_output_shapes

: : 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
��@:%!

_output_shapes
:	�@:%!

_output_shapes
:	�@:%!

_output_shapes
:	�@:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::&"
 
_output_shapes
:
��@:%!

_output_shapes
:	�@:% !

_output_shapes
:	�@:%!!

_output_shapes
:	�@:%"!

_output_shapes
:	�@: #

_output_shapes
:@:$$ 

_output_shapes

:@ : %

_output_shapes
: :$& 

_output_shapes

: : '

_output_shapes
::(

_output_shapes
: "�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
author_input5
serving_default_author_input:0���������
A

book_input3
serving_default_book_input:0���������
C
genre_input4
serving_default_genre_input:0���������
K
publisher_input8
!serving_default_publisher_input:0���������
S
user_features_input<
%serving_default_user_features_input:0���������
A

user_input3
serving_default_user_input:0���������
A

year_input3
serving_default_year_input:0���������<
dense_110
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer-2
layer-3
layer_with_weights-0
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-4
layer-16
layer_with_weights-5
layer-17
layer_with_weights-6
layer-18
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#
embeddings"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*
embeddings"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1
embeddings"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
8
embeddings"
_tf_keras_layer
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias"
_tf_keras_layer
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias"
_tf_keras_layer
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias"
_tf_keras_layer
f
#0
*1
12
83
]4
^5
e6
f7
m8
n9"
trackable_list_wrapper
f
#0
*1
12
83
]4
^5
e6
f7
m8
n9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ttrace_0
utrace_1
vtrace_2
wtrace_32�
)__inference_model_3_layer_call_fn_2351380
)__inference_model_3_layer_call_fn_2351767
)__inference_model_3_layer_call_fn_2351798
)__inference_model_3_layer_call_fn_2351613�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zttrace_0zutrace_1zvtrace_2zwtrace_3
�
xtrace_0
ytrace_1
ztrace_2
{trace_32�
D__inference_model_3_layer_call_and_return_conditional_losses_2351863
D__inference_model_3_layer_call_and_return_conditional_losses_2351928
D__inference_model_3_layer_call_and_return_conditional_losses_2351655
D__inference_model_3_layer_call_and_return_conditional_losses_2351697�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zxtrace_0zytrace_1zztrace_2z{trace_3
�B�
"__inference__wrapped_model_2351184
user_input
book_inputuser_features_inputauthor_inputpublisher_input
year_inputgenre_input"�
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
�
|iter

}beta_1

~beta_2
	decay
�learning_rate#m�*m�1m�8m�]m�^m�em�fm�mm�nm�#v�*v�1v�8v�]v�^v�ev�fv�mv�nv�"
	optimizer
-
�serving_default"
signature_map
'
#0"
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
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
�
�trace_02�
0__inference_user_embedding_layer_call_fn_2351935�
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
 z�trace_0
�
�trace_02�
K__inference_user_embedding_layer_call_and_return_conditional_losses_2351945�
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
 z�trace_0
-:+
��@2user_embedding/embeddings
'
*0"
trackable_list_wrapper
'
*0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_book_embedding_layer_call_fn_2351952�
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
 z�trace_0
�
�trace_02�
K__inference_book_embedding_layer_call_and_return_conditional_losses_2351962�
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
 z�trace_0
,:*	�@2book_embedding/embeddings
'
10"
trackable_list_wrapper
'
10"
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
�
�trace_02�
2__inference_author_embedding_layer_call_fn_2351969�
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
 z�trace_0
�
�trace_02�
M__inference_author_embedding_layer_call_and_return_conditional_losses_2351979�
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
 z�trace_0
.:,	�@2author_embedding/embeddings
'
80"
trackable_list_wrapper
'
80"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_publisher_embedding_layer_call_fn_2351986�
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
 z�trace_0
�
�trace_02�
P__inference_publisher_embedding_layer_call_and_return_conditional_losses_2351996�
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
 z�trace_0
1:/	�@2publisher_embedding/embeddings
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
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_flatten_16_layer_call_fn_2352001�
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
 z�trace_0
�
�trace_02�
G__inference_flatten_16_layer_call_and_return_conditional_losses_2352007�
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
 z�trace_0
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
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_flatten_17_layer_call_fn_2352012�
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
 z�trace_0
�
�trace_02�
G__inference_flatten_17_layer_call_and_return_conditional_losses_2352018�
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
 z�trace_0
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
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_flatten_18_layer_call_fn_2352023�
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
 z�trace_0
�
�trace_02�
G__inference_flatten_18_layer_call_and_return_conditional_losses_2352029�
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
 z�trace_0
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
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_flatten_19_layer_call_fn_2352034�
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
 z�trace_0
�
�trace_02�
G__inference_flatten_19_layer_call_and_return_conditional_losses_2352040�
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
 z�trace_0
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
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_concatenate_4_layer_call_fn_2352051�
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
 z�trace_0
�
�trace_02�
J__inference_concatenate_4_layer_call_and_return_conditional_losses_2352063�
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
 z�trace_0
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_9_layer_call_fn_2352072�
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
 z�trace_0
�
�trace_02�
D__inference_dense_9_layer_call_and_return_conditional_losses_2352083�
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
 z�trace_0
!:	�@2dense_9/kernel
:@2dense_9/bias
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_10_layer_call_fn_2352092�
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
 z�trace_0
�
�trace_02�
E__inference_dense_10_layer_call_and_return_conditional_losses_2352103�
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
 z�trace_0
!:@ 2dense_10/kernel
: 2dense_10/bias
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_11_layer_call_fn_2352112�
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
 z�trace_0
�
�trace_02�
E__inference_dense_11_layer_call_and_return_conditional_losses_2352123�
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
 z�trace_0
!: 2dense_11/kernel
:2dense_11/bias
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_model_3_layer_call_fn_2351380
user_input
book_inputuser_features_inputauthor_inputpublisher_input
year_inputgenre_input"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_3_layer_call_fn_2351767inputs/0inputs/1inputs/2inputs/3inputs/4inputs/5inputs/6"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_3_layer_call_fn_2351798inputs/0inputs/1inputs/2inputs/3inputs/4inputs/5inputs/6"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_3_layer_call_fn_2351613
user_input
book_inputuser_features_inputauthor_inputpublisher_input
year_inputgenre_input"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_3_layer_call_and_return_conditional_losses_2351863inputs/0inputs/1inputs/2inputs/3inputs/4inputs/5inputs/6"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_3_layer_call_and_return_conditional_losses_2351928inputs/0inputs/1inputs/2inputs/3inputs/4inputs/5inputs/6"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_3_layer_call_and_return_conditional_losses_2351655
user_input
book_inputuser_features_inputauthor_inputpublisher_input
year_inputgenre_input"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_3_layer_call_and_return_conditional_losses_2351697
user_input
book_inputuser_features_inputauthor_inputpublisher_input
year_inputgenre_input"�
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
�B�
%__inference_signature_wrapper_2351736author_input
book_inputgenre_inputpublisher_inputuser_features_input
user_input
year_input"�
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
�B�
0__inference_user_embedding_layer_call_fn_2351935inputs"�
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
�B�
K__inference_user_embedding_layer_call_and_return_conditional_losses_2351945inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_book_embedding_layer_call_fn_2351952inputs"�
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
�B�
K__inference_book_embedding_layer_call_and_return_conditional_losses_2351962inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_author_embedding_layer_call_fn_2351969inputs"�
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
�B�
M__inference_author_embedding_layer_call_and_return_conditional_losses_2351979inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_publisher_embedding_layer_call_fn_2351986inputs"�
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
�B�
P__inference_publisher_embedding_layer_call_and_return_conditional_losses_2351996inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_flatten_16_layer_call_fn_2352001inputs"�
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
�B�
G__inference_flatten_16_layer_call_and_return_conditional_losses_2352007inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_flatten_17_layer_call_fn_2352012inputs"�
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
�B�
G__inference_flatten_17_layer_call_and_return_conditional_losses_2352018inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_flatten_18_layer_call_fn_2352023inputs"�
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
�B�
G__inference_flatten_18_layer_call_and_return_conditional_losses_2352029inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_flatten_19_layer_call_fn_2352034inputs"�
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
�B�
G__inference_flatten_19_layer_call_and_return_conditional_losses_2352040inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_concatenate_4_layer_call_fn_2352051inputs/0inputs/1inputs/2inputs/3inputs/4inputs/5inputs/6"�
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
�B�
J__inference_concatenate_4_layer_call_and_return_conditional_losses_2352063inputs/0inputs/1inputs/2inputs/3inputs/4inputs/5inputs/6"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_9_layer_call_fn_2352072inputs"�
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
�B�
D__inference_dense_9_layer_call_and_return_conditional_losses_2352083inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_10_layer_call_fn_2352092inputs"�
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
�B�
E__inference_dense_10_layer_call_and_return_conditional_losses_2352103inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_11_layer_call_fn_2352112inputs"�
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
�B�
E__inference_dense_11_layer_call_and_return_conditional_losses_2352123inputs"�
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
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
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
2:0
��@2 Adam/user_embedding/embeddings/m
1:/	�@2 Adam/book_embedding/embeddings/m
3:1	�@2"Adam/author_embedding/embeddings/m
6:4	�@2%Adam/publisher_embedding/embeddings/m
&:$	�@2Adam/dense_9/kernel/m
:@2Adam/dense_9/bias/m
&:$@ 2Adam/dense_10/kernel/m
 : 2Adam/dense_10/bias/m
&:$ 2Adam/dense_11/kernel/m
 :2Adam/dense_11/bias/m
2:0
��@2 Adam/user_embedding/embeddings/v
1:/	�@2 Adam/book_embedding/embeddings/v
3:1	�@2"Adam/author_embedding/embeddings/v
6:4	�@2%Adam/publisher_embedding/embeddings/v
&:$	�@2Adam/dense_9/kernel/v
:@2Adam/dense_9/bias/v
&:$@ 2Adam/dense_10/kernel/v
 : 2Adam/dense_10/bias/v
&:$ 2Adam/dense_11/kernel/v
 :2Adam/dense_11/bias/v�
"__inference__wrapped_model_2351184�
81*#]^efmn���
���
���
$�!

user_input���������
$�!

book_input���������
-�*
user_features_input���������
&�#
author_input���������
)�&
publisher_input���������
$�!

year_input���������
%�"
genre_input���������
� "3�0
.
dense_11"�
dense_11����������
M__inference_author_embedding_layer_call_and_return_conditional_losses_2351979_1/�,
%�"
 �
inputs���������
� ")�&
�
0���������@
� �
2__inference_author_embedding_layer_call_fn_2351969R1/�,
%�"
 �
inputs���������
� "����������@�
K__inference_book_embedding_layer_call_and_return_conditional_losses_2351962_*/�,
%�"
 �
inputs���������
� ")�&
�
0���������@
� �
0__inference_book_embedding_layer_call_fn_2351952R*/�,
%�"
 �
inputs���������
� "����������@�
J__inference_concatenate_4_layer_call_and_return_conditional_losses_2352063����
���
���
"�
inputs/0���������@
"�
inputs/1���������@
"�
inputs/2���������
"�
inputs/3���������@
"�
inputs/4���������@
"�
inputs/5���������
"�
inputs/6���������
� "&�#
�
0����������
� �
/__inference_concatenate_4_layer_call_fn_2352051����
���
���
"�
inputs/0���������@
"�
inputs/1���������@
"�
inputs/2���������
"�
inputs/3���������@
"�
inputs/4���������@
"�
inputs/5���������
"�
inputs/6���������
� "������������
E__inference_dense_10_layer_call_and_return_conditional_losses_2352103\ef/�,
%�"
 �
inputs���������@
� "%�"
�
0��������� 
� }
*__inference_dense_10_layer_call_fn_2352092Oef/�,
%�"
 �
inputs���������@
� "���������� �
E__inference_dense_11_layer_call_and_return_conditional_losses_2352123\mn/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� }
*__inference_dense_11_layer_call_fn_2352112Omn/�,
%�"
 �
inputs��������� 
� "�����������
D__inference_dense_9_layer_call_and_return_conditional_losses_2352083]]^0�-
&�#
!�
inputs����������
� "%�"
�
0���������@
� }
)__inference_dense_9_layer_call_fn_2352072P]^0�-
&�#
!�
inputs����������
� "����������@�
G__inference_flatten_16_layer_call_and_return_conditional_losses_2352007\3�0
)�&
$�!
inputs���������@
� "%�"
�
0���������@
� 
,__inference_flatten_16_layer_call_fn_2352001O3�0
)�&
$�!
inputs���������@
� "����������@�
G__inference_flatten_17_layer_call_and_return_conditional_losses_2352018\3�0
)�&
$�!
inputs���������@
� "%�"
�
0���������@
� 
,__inference_flatten_17_layer_call_fn_2352012O3�0
)�&
$�!
inputs���������@
� "����������@�
G__inference_flatten_18_layer_call_and_return_conditional_losses_2352029\3�0
)�&
$�!
inputs���������@
� "%�"
�
0���������@
� 
,__inference_flatten_18_layer_call_fn_2352023O3�0
)�&
$�!
inputs���������@
� "����������@�
G__inference_flatten_19_layer_call_and_return_conditional_losses_2352040\3�0
)�&
$�!
inputs���������@
� "%�"
�
0���������@
� 
,__inference_flatten_19_layer_call_fn_2352034O3�0
)�&
$�!
inputs���������@
� "����������@�
D__inference_model_3_layer_call_and_return_conditional_losses_2351655�
81*#]^efmn���
���
���
$�!

user_input���������
$�!

book_input���������
-�*
user_features_input���������
&�#
author_input���������
)�&
publisher_input���������
$�!

year_input���������
%�"
genre_input���������
p 

 
� "%�"
�
0���������
� �
D__inference_model_3_layer_call_and_return_conditional_losses_2351697�
81*#]^efmn���
���
���
$�!

user_input���������
$�!

book_input���������
-�*
user_features_input���������
&�#
author_input���������
)�&
publisher_input���������
$�!

year_input���������
%�"
genre_input���������
p

 
� "%�"
�
0���������
� �
D__inference_model_3_layer_call_and_return_conditional_losses_2351863�
81*#]^efmn���
���
���
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
"�
inputs/3���������
"�
inputs/4���������
"�
inputs/5���������
"�
inputs/6���������
p 

 
� "%�"
�
0���������
� �
D__inference_model_3_layer_call_and_return_conditional_losses_2351928�
81*#]^efmn���
���
���
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
"�
inputs/3���������
"�
inputs/4���������
"�
inputs/5���������
"�
inputs/6���������
p

 
� "%�"
�
0���������
� �
)__inference_model_3_layer_call_fn_2351380�
81*#]^efmn���
���
���
$�!

user_input���������
$�!

book_input���������
-�*
user_features_input���������
&�#
author_input���������
)�&
publisher_input���������
$�!

year_input���������
%�"
genre_input���������
p 

 
� "�����������
)__inference_model_3_layer_call_fn_2351613�
81*#]^efmn���
���
���
$�!

user_input���������
$�!

book_input���������
-�*
user_features_input���������
&�#
author_input���������
)�&
publisher_input���������
$�!

year_input���������
%�"
genre_input���������
p

 
� "�����������
)__inference_model_3_layer_call_fn_2351767�
81*#]^efmn���
���
���
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
"�
inputs/3���������
"�
inputs/4���������
"�
inputs/5���������
"�
inputs/6���������
p 

 
� "�����������
)__inference_model_3_layer_call_fn_2351798�
81*#]^efmn���
���
���
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
"�
inputs/3���������
"�
inputs/4���������
"�
inputs/5���������
"�
inputs/6���������
p

 
� "�����������
P__inference_publisher_embedding_layer_call_and_return_conditional_losses_2351996_8/�,
%�"
 �
inputs���������
� ")�&
�
0���������@
� �
5__inference_publisher_embedding_layer_call_fn_2351986R8/�,
%�"
 �
inputs���������
� "����������@�
%__inference_signature_wrapper_2351736�
81*#]^efmn���
� 
���
6
author_input&�#
author_input���������
2

book_input$�!

book_input���������
4
genre_input%�"
genre_input���������
<
publisher_input)�&
publisher_input���������
D
user_features_input-�*
user_features_input���������
2

user_input$�!

user_input���������
2

year_input$�!

year_input���������"3�0
.
dense_11"�
dense_11����������
K__inference_user_embedding_layer_call_and_return_conditional_losses_2351945_#/�,
%�"
 �
inputs���������
� ")�&
�
0���������@
� �
0__inference_user_embedding_layer_call_fn_2351935R#/�,
%�"
 �
inputs���������
� "����������@