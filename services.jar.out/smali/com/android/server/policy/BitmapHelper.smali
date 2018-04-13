.class public final Lcom/android/server/policy/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/server/policy/BitmapHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 206
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError and try to gc"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/android/server/policy/BitmapHelper;->handleOutOfMemory()V

    .line 210
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 211
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 212
    .local v2, "oom2":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createAlphaBitmap(III)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "alpha"    # I

    .prologue
    const/4 v3, 0x0

    .line 236
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v2}, Lcom/android/server/policy/BitmapHelper;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 237
    .local v1, "newbmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 238
    .local v0, "cv":Landroid/graphics/Canvas;
    invoke-static {p2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 239
    return-object v1
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 82
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError and try to gc"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/android/server/policy/BitmapHelper;->handleOutOfMemory()V

    .line 86
    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 87
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 88
    .local v2, "oom2":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 30
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 31
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError and try to gc"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lcom/android/server/policy/BitmapHelper;->handleOutOfMemory()V

    .line 34
    :try_start_1
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 35
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 36
    .local v2, "oom2":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 47
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError and try to gc"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lcom/android/server/policy/BitmapHelper;->handleOutOfMemory()V

    .line 51
    :try_start_1
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 52
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 53
    .local v2, "oom2":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "m"    # Landroid/graphics/Matrix;
    .param p6, "filter"    # Z

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static/range {p0 .. p6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 65
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError and try to gc"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/android/server/policy/BitmapHelper;->handleOutOfMemory()V

    .line 69
    :try_start_1
    invoke-static/range {p0 .. p6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 70
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 71
    .local v2, "oom2":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "lenght"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    array-length v3, p0

    invoke-static {p0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 99
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError and try to gc"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/android/server/policy/BitmapHelper;->handleOutOfMemory()V

    .line 103
    :try_start_1
    array-length v3, p0

    invoke-static {p0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 105
    .local v2, "oom2":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object v3, p1

    .line 160
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    if-nez p1, :cond_0

    .line 161
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 163
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 164
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 166
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :try_start_2
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 177
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 167
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    :goto_1
    sget-object v5, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "OutOfMemoryError and try to gc"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lcom/android/server/policy/BitmapHelper;->handleOutOfMemory()V

    .line 171
    :try_start_3
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 172
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 173
    .local v2, "oom2":Ljava/lang/OutOfMemoryError;
    sget-object v5, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "OutOfMemoryError again"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    .end local v1    # "oom":Ljava/lang/OutOfMemoryError;
    .end local v2    # "oom2":Ljava/lang/OutOfMemoryError;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v1

    .restart local v1    # "oom":Ljava/lang/OutOfMemoryError;
    move-object v3, v4

    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_1
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 137
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError and try to gc"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/android/server/policy/BitmapHelper;->handleOutOfMemory()V

    .line 141
    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 142
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 143
    .local v2, "oom2":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/policy/BitmapHelper;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 120
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError and try to gc"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/android/server/policy/BitmapHelper;->handleOutOfMemory()V

    .line 124
    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 125
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 126
    .local v2, "oom2":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static handleOutOfMemory()V
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleOutOfMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 219
    return-void
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 279
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 280
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 281
    const/4 p0, 0x0

    .local p0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static scaledBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 182
    const/4 v2, 0x1

    .line 181
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/policy/BitmapHelper;->scaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static scaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "filter"    # Z

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 189
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError and try to gc"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/android/server/policy/BitmapHelper;->handleOutOfMemory()V

    .line 193
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 194
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 195
    .local v2, "oom2":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/server/policy/BitmapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "OutOfMemoryError again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toConformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "background"    # Landroid/graphics/Bitmap;
    .param p1, "foreground"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 252
    if-nez p0, :cond_0

    .line 253
    return-object v6

    .line 256
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 257
    .local v1, "bgWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 260
    .local v0, "bgHeight":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 261
    .local v3, "newbmp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 263
    .local v2, "cv":Landroid/graphics/Canvas;
    invoke-virtual {v2, p0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 265
    invoke-virtual {v2, p1, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    const/16 v4, 0x1f

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 269
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 271
    return-object v3
.end method
