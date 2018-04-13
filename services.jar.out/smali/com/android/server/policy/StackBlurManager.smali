.class public Lcom/android/server/policy/StackBlurManager;
.super Ljava/lang/Object;
.source "StackBlurManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alpha:Z

.field private currentPixels:[I

.field private height:I

.field private image:Landroid/graphics/Bitmap;

.field private originalPixels:[I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/server/policy/StackBlurManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/StackBlurManager;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/android/server/policy/StackBlurManager;->width:I

    .line 55
    iput v0, p0, Lcom/android/server/policy/StackBlurManager;->height:I

    .line 61
    iput-boolean v2, p0, Lcom/android/server/policy/StackBlurManager;->alpha:Z

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/StackBlurManager;->width:I

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/StackBlurManager;->height:I

    .line 73
    iput-object p1, p0, Lcom/android/server/policy/StackBlurManager;->image:Landroid/graphics/Bitmap;

    .line 74
    iget v0, p0, Lcom/android/server/policy/StackBlurManager;->width:I

    iget v1, p0, Lcom/android/server/policy/StackBlurManager;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/policy/StackBlurManager;->originalPixels:[I

    .line 76
    iget-object v1, p0, Lcom/android/server/policy/StackBlurManager;->originalPixels:[I

    iget v3, p0, Lcom/android/server/policy/StackBlurManager;->width:I

    iget v6, p0, Lcom/android/server/policy/StackBlurManager;->width:I

    iget v7, p0, Lcom/android/server/policy/StackBlurManager;->height:I

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 70
    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/server/policy/StackBlurManager;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public process(I)V
    .locals 39
    .param p1, "radius"    # I

    .prologue
    .line 85
    const/16 v35, 0x1

    move/from16 v0, p1

    move/from16 v1, v35

    if-ge v0, v1, :cond_0

    .line 86
    const/16 p1, 0x1

    .line 89
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/StackBlurManager;->originalPixels:[I

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [I

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/StackBlurManager;->currentPixels:[I

    .line 90
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->width:I

    move/from16 v35, v0

    add-int/lit8 v29, v35, -0x1

    .line 91
    .local v29, "wm":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->height:I

    move/from16 v35, v0

    add-int/lit8 v14, v35, -0x1

    .line 92
    .local v14, "hm":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->width:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->height:I

    move/from16 v36, v0

    mul-int v28, v35, v36

    .line 93
    .local v28, "wh":I
    add-int v35, p1, p1

    add-int/lit8 v6, v35, 0x1

    .line 95
    .local v6, "div":I
    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 96
    .local v17, "r":[I
    move/from16 v0, v28

    new-array v10, v0, [I

    .line 97
    .local v10, "g":[I
    move/from16 v0, v28

    new-array v2, v0, [I

    .line 99
    .local v2, "b":[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->width:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->height:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 101
    .local v27, "vmin":[I
    add-int/lit8 v35, v6, 0x1

    shr-int/lit8 v7, v35, 0x1

    .line 102
    .local v7, "divsum":I
    mul-int/2addr v7, v7

    .line 103
    mul-int/lit16 v0, v7, 0x100

    move/from16 v35, v0

    move/from16 v0, v35

    new-array v8, v0, [I

    .line 104
    .local v8, "dv":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    mul-int/lit16 v0, v7, 0x100

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v15, v0, :cond_1

    .line 105
    div-int v35, v15, v7

    aput v35, v8, v15

    .line 104
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const/16 v32, 0x0

    .local v32, "yi":I
    const/16 v34, 0x0

    .line 110
    .local v34, "yw":I
    sget-object v35, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput v6, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x1

    aput v37, v36, v38

    invoke-static/range {v35 .. v36}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [[I

    .line 115
    .local v24, "stack":[[I
    add-int/lit8 v18, p1, 0x1

    .line 119
    .local v18, "r1":I
    const/16 v31, 0x0

    .local v31, "y":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->height:I

    move/from16 v35, v0

    move/from16 v0, v31

    move/from16 v1, v35

    if-ge v0, v1, :cond_8

    .line 120
    const/4 v5, 0x0

    .local v5, "bsum":I
    const/4 v13, 0x0

    .local v13, "gsum":I
    const/16 v22, 0x0

    .local v22, "rsum":I
    const/4 v4, 0x0

    .local v4, "boutsum":I
    const/4 v12, 0x0

    .local v12, "goutsum":I
    const/16 v21, 0x0

    .local v21, "routsum":I
    const/4 v3, 0x0

    .local v3, "binsum":I
    const/4 v11, 0x0

    .local v11, "ginsum":I
    const/16 v20, 0x0

    .line 121
    .local v20, "rinsum":I
    move/from16 v0, p1

    neg-int v15, v0

    :goto_2
    move/from16 v0, p1

    if-gt v15, v0, :cond_3

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/StackBlurManager;->currentPixels:[I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v0, v29

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v36

    add-int v36, v36, v32

    aget v16, v35, v36

    .line 123
    .local v16, "p":I
    add-int v35, v15, p1

    aget-object v23, v24, v35

    .line 124
    .local v23, "sir":[I
    const/high16 v35, 0xff0000

    and-int v35, v35, v16

    shr-int/lit8 v35, v35, 0x10

    const/16 v36, 0x0

    aput v35, v23, v36

    .line 125
    const v35, 0xff00

    and-int v35, v35, v16

    shr-int/lit8 v35, v35, 0x8

    const/16 v36, 0x1

    aput v35, v23, v36

    .line 126
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v35, v0

    const/16 v36, 0x2

    aput v35, v23, v36

    .line 127
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v35

    sub-int v19, v18, v35

    .line 128
    .local v19, "rbs":I
    const/16 v35, 0x0

    aget v35, v23, v35

    mul-int v35, v35, v19

    add-int v22, v22, v35

    .line 129
    const/16 v35, 0x1

    aget v35, v23, v35

    mul-int v35, v35, v19

    add-int v13, v13, v35

    .line 130
    const/16 v35, 0x2

    aget v35, v23, v35

    mul-int v35, v35, v19

    add-int v5, v5, v35

    .line 131
    if-lez v15, :cond_2

    .line 132
    const/16 v35, 0x0

    aget v35, v23, v35

    add-int v20, v20, v35

    .line 133
    const/16 v35, 0x1

    aget v35, v23, v35

    add-int v11, v11, v35

    .line 134
    const/16 v35, 0x2

    aget v35, v23, v35

    add-int v3, v3, v35

    .line 121
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 136
    :cond_2
    const/16 v35, 0x0

    aget v35, v23, v35

    add-int v21, v21, v35

    .line 137
    const/16 v35, 0x1

    aget v35, v23, v35

    add-int v12, v12, v35

    .line 138
    const/16 v35, 0x2

    aget v35, v23, v35

    add-int v4, v4, v35

    goto :goto_3

    .line 141
    .end local v16    # "p":I
    .end local v19    # "rbs":I
    .end local v23    # "sir":[I
    :cond_3
    move/from16 v25, p1

    .line 143
    .local v25, "stackpointer":I
    const/16 v30, 0x0

    .local v30, "x":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->width:I

    move/from16 v35, v0

    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_7

    .line 145
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/StackBlurManager;->alpha:Z

    move/from16 v35, v0

    if-nez v35, :cond_4

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/StackBlurManager;->originalPixels:[I

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->height:I

    move/from16 v36, v0

    mul-int v36, v36, v30

    add-int v36, v36, v31

    aget v35, v35, v36

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->alpha(I)I

    move-result v35

    const/16 v36, 0xff

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_6

    const/16 v35, 0x1

    :goto_5
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/StackBlurManager;->alpha:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_4
    aget v35, v8, v22

    aput v35, v17, v32

    .line 154
    aget v35, v8, v13

    aput v35, v10, v32

    .line 155
    aget v35, v8, v5

    aput v35, v2, v32

    .line 157
    sub-int v22, v22, v21

    .line 158
    sub-int/2addr v13, v12

    .line 159
    sub-int/2addr v5, v4

    .line 161
    sub-int v35, v25, p1

    add-int v26, v35, v6

    .line 162
    .local v26, "stackstart":I
    rem-int v35, v26, v6

    aget-object v23, v24, v35

    .line 164
    .restart local v23    # "sir":[I
    const/16 v35, 0x0

    aget v35, v23, v35

    sub-int v21, v21, v35

    .line 165
    const/16 v35, 0x1

    aget v35, v23, v35

    sub-int v12, v12, v35

    .line 166
    const/16 v35, 0x2

    aget v35, v23, v35

    sub-int v4, v4, v35

    .line 168
    if-nez v31, :cond_5

    .line 169
    add-int v35, v30, p1

    add-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v35

    aput v35, v27, v30

    .line 171
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/StackBlurManager;->currentPixels:[I

    move-object/from16 v35, v0

    aget v36, v27, v30

    add-int v36, v36, v34

    aget v16, v35, v36

    .line 173
    .restart local v16    # "p":I
    const/high16 v35, 0xff0000

    and-int v35, v35, v16

    shr-int/lit8 v35, v35, 0x10

    const/16 v36, 0x0

    aput v35, v23, v36

    .line 174
    const v35, 0xff00

    and-int v35, v35, v16

    shr-int/lit8 v35, v35, 0x8

    const/16 v36, 0x1

    aput v35, v23, v36

    .line 175
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v35, v0

    const/16 v36, 0x2

    aput v35, v23, v36

    .line 177
    const/16 v35, 0x0

    aget v35, v23, v35

    add-int v20, v20, v35

    .line 178
    const/16 v35, 0x1

    aget v35, v23, v35

    add-int v11, v11, v35

    .line 179
    const/16 v35, 0x2

    aget v35, v23, v35

    add-int v3, v3, v35

    .line 181
    add-int v22, v22, v20

    .line 182
    add-int/2addr v13, v11

    .line 183
    add-int/2addr v5, v3

    .line 185
    add-int/lit8 v35, v25, 0x1

    rem-int v25, v35, v6

    .line 186
    rem-int v35, v25, v6

    aget-object v23, v24, v35

    .line 188
    const/16 v35, 0x0

    aget v35, v23, v35

    add-int v21, v21, v35

    .line 189
    const/16 v35, 0x1

    aget v35, v23, v35

    add-int v12, v12, v35

    .line 190
    const/16 v35, 0x2

    aget v35, v23, v35

    add-int v4, v4, v35

    .line 192
    const/16 v35, 0x0

    aget v35, v23, v35

    sub-int v20, v20, v35

    .line 193
    const/16 v35, 0x1

    aget v35, v23, v35

    sub-int v11, v11, v35

    .line 194
    const/16 v35, 0x2

    aget v35, v23, v35

    sub-int v3, v3, v35

    .line 196
    add-int/lit8 v32, v32, 0x1

    .line 143
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_4

    .line 146
    .end local v16    # "p":I
    .end local v23    # "sir":[I
    .end local v26    # "stackstart":I
    :cond_6
    const/16 v35, 0x0

    goto/16 :goto_5

    .line 148
    :catch_0
    move-exception v9

    .line 149
    .local v9, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v35, Lcom/android/server/policy/StackBlurManager;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "process(), ArrayIndexOutOfBoundsException : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 198
    .end local v9    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->width:I

    move/from16 v35, v0

    add-int v34, v34, v35

    .line 119
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 201
    .end local v3    # "binsum":I
    .end local v4    # "boutsum":I
    .end local v5    # "bsum":I
    .end local v11    # "ginsum":I
    .end local v12    # "goutsum":I
    .end local v13    # "gsum":I
    .end local v20    # "rinsum":I
    .end local v21    # "routsum":I
    .end local v22    # "rsum":I
    .end local v25    # "stackpointer":I
    .end local v30    # "x":I
    :cond_8
    const/16 v30, 0x0

    .restart local v30    # "x":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->width:I

    move/from16 v35, v0

    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_f

    .line 202
    const/4 v5, 0x0

    .restart local v5    # "bsum":I
    const/4 v13, 0x0

    .restart local v13    # "gsum":I
    const/16 v22, 0x0

    .restart local v22    # "rsum":I
    const/4 v4, 0x0

    .restart local v4    # "boutsum":I
    const/4 v12, 0x0

    .restart local v12    # "goutsum":I
    const/16 v21, 0x0

    .restart local v21    # "routsum":I
    const/4 v3, 0x0

    .restart local v3    # "binsum":I
    const/4 v11, 0x0

    .restart local v11    # "ginsum":I
    const/16 v20, 0x0

    .line 203
    .restart local v20    # "rinsum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->width:I

    move/from16 v36, v0

    mul-int v33, v35, v36

    .line 204
    .local v33, "yp":I
    move/from16 v0, p1

    neg-int v15, v0

    :goto_7
    move/from16 v0, p1

    if-gt v15, v0, :cond_b

    .line 205
    const/16 v35, 0x0

    move/from16 v0, v35

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    add-int v32, v35, v30

    .line 207
    add-int v35, v15, p1

    aget-object v23, v24, v35

    .line 209
    .restart local v23    # "sir":[I
    aget v35, v17, v32

    const/16 v36, 0x0

    aput v35, v23, v36

    .line 210
    aget v35, v10, v32

    const/16 v36, 0x1

    aput v35, v23, v36

    .line 211
    aget v35, v2, v32

    const/16 v36, 0x2

    aput v35, v23, v36

    .line 213
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v35

    sub-int v19, v18, v35

    .line 215
    .restart local v19    # "rbs":I
    aget v35, v17, v32

    mul-int v35, v35, v19

    add-int v22, v22, v35

    .line 216
    aget v35, v10, v32

    mul-int v35, v35, v19

    add-int v13, v13, v35

    .line 217
    aget v35, v2, v32

    mul-int v35, v35, v19

    add-int v5, v5, v35

    .line 219
    if-lez v15, :cond_a

    .line 220
    const/16 v35, 0x0

    aget v35, v23, v35

    add-int v20, v20, v35

    .line 221
    const/16 v35, 0x1

    aget v35, v23, v35

    add-int v11, v11, v35

    .line 222
    const/16 v35, 0x2

    aget v35, v23, v35

    add-int v3, v3, v35

    .line 229
    :goto_8
    if-ge v15, v14, :cond_9

    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->width:I

    move/from16 v35, v0

    add-int v33, v33, v35

    .line 204
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 224
    :cond_a
    const/16 v35, 0x0

    aget v35, v23, v35

    add-int v21, v21, v35

    .line 225
    const/16 v35, 0x1

    aget v35, v23, v35

    add-int v12, v12, v35

    .line 226
    const/16 v35, 0x2

    aget v35, v23, v35

    add-int v4, v4, v35

    goto :goto_8

    .line 233
    .end local v19    # "rbs":I
    .end local v23    # "sir":[I
    :cond_b
    move/from16 v32, v30

    .line 234
    move/from16 v25, p1

    .line 235
    .restart local v25    # "stackpointer":I
    const/16 v31, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->height:I

    move/from16 v35, v0

    move/from16 v0, v31

    move/from16 v1, v35

    if-ge v0, v1, :cond_e

    .line 237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/StackBlurManager;->alpha:Z

    move/from16 v35, v0

    if-eqz v35, :cond_d

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/StackBlurManager;->currentPixels:[I

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/StackBlurManager;->currentPixels:[I

    move-object/from16 v36, v0

    aget v36, v36, v32

    const/high16 v37, -0x1000000

    and-int v36, v36, v37

    aget v37, v8, v22

    shl-int/lit8 v37, v37, 0x10

    or-int v36, v36, v37

    aget v37, v8, v13

    shl-int/lit8 v37, v37, 0x8

    or-int v36, v36, v37

    .line 239
    aget v37, v8, v5

    .line 238
    or-int v36, v36, v37

    aput v36, v35, v32

    .line 243
    :goto_a
    sub-int v22, v22, v21

    .line 244
    sub-int/2addr v13, v12

    .line 245
    sub-int/2addr v5, v4

    .line 247
    sub-int v35, v25, p1

    add-int v26, v35, v6

    .line 248
    .restart local v26    # "stackstart":I
    rem-int v35, v26, v6

    aget-object v23, v24, v35

    .line 250
    .restart local v23    # "sir":[I
    const/16 v35, 0x0

    aget v35, v23, v35

    sub-int v21, v21, v35

    .line 251
    const/16 v35, 0x1

    aget v35, v23, v35

    sub-int v12, v12, v35

    .line 252
    const/16 v35, 0x2

    aget v35, v23, v35

    sub-int v4, v4, v35

    .line 254
    if-nez v30, :cond_c

    .line 255
    add-int v35, v31, v18

    move/from16 v0, v35

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->width:I

    move/from16 v36, v0

    mul-int v35, v35, v36

    aput v35, v27, v31

    .line 257
    :cond_c
    aget v35, v27, v31

    add-int v16, v30, v35

    .line 259
    .restart local v16    # "p":I
    aget v35, v17, v16

    const/16 v36, 0x0

    aput v35, v23, v36

    .line 260
    aget v35, v10, v16

    const/16 v36, 0x1

    aput v35, v23, v36

    .line 261
    aget v35, v2, v16

    const/16 v36, 0x2

    aput v35, v23, v36

    .line 263
    const/16 v35, 0x0

    aget v35, v23, v35

    add-int v20, v20, v35

    .line 264
    const/16 v35, 0x1

    aget v35, v23, v35

    add-int v11, v11, v35

    .line 265
    const/16 v35, 0x2

    aget v35, v23, v35

    add-int v3, v3, v35

    .line 267
    add-int v22, v22, v20

    .line 268
    add-int/2addr v13, v11

    .line 269
    add-int/2addr v5, v3

    .line 271
    add-int/lit8 v35, v25, 0x1

    rem-int v25, v35, v6

    .line 272
    aget-object v23, v24, v25

    .line 274
    const/16 v35, 0x0

    aget v35, v23, v35

    add-int v21, v21, v35

    .line 275
    const/16 v35, 0x1

    aget v35, v23, v35

    add-int v12, v12, v35

    .line 276
    const/16 v35, 0x2

    aget v35, v23, v35

    add-int v4, v4, v35

    .line 278
    const/16 v35, 0x0

    aget v35, v23, v35

    sub-int v20, v20, v35

    .line 279
    const/16 v35, 0x1

    aget v35, v23, v35

    sub-int v11, v11, v35

    .line 280
    const/16 v35, 0x2

    aget v35, v23, v35

    sub-int v3, v3, v35

    .line 282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/StackBlurManager;->width:I

    move/from16 v35, v0

    add-int v32, v32, v35

    .line 235
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_9

    .line 241
    .end local v16    # "p":I
    .end local v23    # "sir":[I
    .end local v26    # "stackstart":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/StackBlurManager;->currentPixels:[I

    move-object/from16 v35, v0

    aget v36, v8, v22

    shl-int/lit8 v36, v36, 0x10

    const/high16 v37, -0x1000000

    or-int v36, v36, v37

    aget v37, v8, v13

    shl-int/lit8 v37, v37, 0x8

    or-int v36, v36, v37

    aget v37, v8, v5

    or-int v36, v36, v37

    aput v36, v35, v32

    goto/16 :goto_a

    .line 201
    :cond_e
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_6

    .line 84
    .end local v3    # "binsum":I
    .end local v4    # "boutsum":I
    .end local v5    # "bsum":I
    .end local v11    # "ginsum":I
    .end local v12    # "goutsum":I
    .end local v13    # "gsum":I
    .end local v20    # "rinsum":I
    .end local v21    # "routsum":I
    .end local v22    # "rsum":I
    .end local v25    # "stackpointer":I
    .end local v33    # "yp":I
    :cond_f
    return-void
.end method

.method public returnBlurredImage()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 294
    iget-object v1, p0, Lcom/android/server/policy/StackBlurManager;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/policy/StackBlurManager;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    .local v0, "newBmp":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 297
    .local v8, "c":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/server/policy/StackBlurManager;->image:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v8, v1, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 298
    iget-object v1, p0, Lcom/android/server/policy/StackBlurManager;->currentPixels:[I

    iget v3, p0, Lcom/android/server/policy/StackBlurManager;->width:I

    iget v6, p0, Lcom/android/server/policy/StackBlurManager;->width:I

    iget v7, p0, Lcom/android/server/policy/StackBlurManager;->height:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 299
    return-object v0
.end method

.method public saveIntoFile(Ljava/lang/String;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 309
    iget-object v1, p0, Lcom/android/server/policy/StackBlurManager;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/policy/StackBlurManager;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 310
    .local v0, "newBmp":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 311
    .local v8, "c":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/server/policy/StackBlurManager;->image:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v8, v1, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 313
    iget-object v1, p0, Lcom/android/server/policy/StackBlurManager;->currentPixels:[I

    iget v3, p0, Lcom/android/server/policy/StackBlurManager;->width:I

    iget v6, p0, Lcom/android/server/policy/StackBlurManager;->width:I

    iget v7, p0, Lcom/android/server/policy/StackBlurManager;->height:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 316
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 317
    .local v10, "out":Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v10    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v9

    .line 319
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
