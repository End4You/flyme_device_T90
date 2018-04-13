.class public Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
.super Landroid/text/format/Time;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/BearerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStamp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    .locals 11
    .param p0, "data"    # [B

    .prologue
    const/16 v10, 0x3b

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 238
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 240
    .local v5, "ts":Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v6

    .line 241
    .local v6, "year":I
    const/16 v7, 0x63

    if-gt v6, v7, :cond_0

    if-gez v6, :cond_1

    :cond_0
    return-object v8

    .line 242
    :cond_1
    const/16 v7, 0x60

    if-lt v6, v7, :cond_3

    add-int/lit16 v7, v6, 0x76c

    :goto_0
    iput v7, v5, Landroid/text/format/Time;->year:I

    .line 243
    aget-byte v7, p0, v9

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v3

    .line 244
    .local v3, "month":I
    if-lt v3, v9, :cond_2

    const/16 v7, 0xc

    if-le v3, v7, :cond_4

    :cond_2
    return-object v8

    .line 242
    .end local v3    # "month":I
    :cond_3
    add-int/lit16 v7, v6, 0x7d0

    goto :goto_0

    .line 245
    .restart local v3    # "month":I
    :cond_4
    add-int/lit8 v7, v3, -0x1

    iput v7, v5, Landroid/text/format/Time;->month:I

    .line 246
    const/4 v7, 0x2

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v0

    .line 247
    .local v0, "day":I
    if-lt v0, v9, :cond_5

    const/16 v7, 0x1f

    if-le v0, v7, :cond_6

    :cond_5
    return-object v8

    .line 248
    :cond_6
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 249
    const/4 v7, 0x3

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v1

    .line 250
    .local v1, "hour":I
    if-ltz v1, :cond_7

    const/16 v7, 0x17

    if-le v1, v7, :cond_8

    :cond_7
    return-object v8

    .line 251
    :cond_8
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 252
    const/4 v7, 0x4

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v2

    .line 253
    .local v2, "minute":I
    if-ltz v2, :cond_9

    if-le v2, v10, :cond_a

    :cond_9
    return-object v8

    .line 254
    :cond_a
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 255
    const/4 v7, 0x5

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v4

    .line 256
    .local v4, "second":I
    if-ltz v4, :cond_b

    if-le v4, v10, :cond_c

    :cond_b
    return-object v8

    .line 257
    :cond_c
    iput v4, v5, Landroid/text/format/Time;->second:I

    .line 258
    return-object v5
.end method

.method public static toByteArray(Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;)[B
    .locals 5
    .param p0, "ts"    # Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .prologue
    const/4 v4, 0x6

    .line 264
    new-array v1, v4, [B

    .line 266
    .local v1, "tArr":[B
    iget v2, p0, Landroid/text/format/Time;->year:I

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_0

    iget v2, p0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x7d0

    :goto_0
    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 267
    iget v2, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 268
    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 269
    iget v2, p0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 270
    iget v2, p0, Landroid/text/format/Time;->minute:I

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    .line 271
    iget v2, p0, Landroid/text/format/Time;->second:I

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    .line 274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 275
    aget-byte v2, v1, v0

    rem-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    .line 276
    aget-byte v3, v1, v0

    div-int/lit8 v3, v3, 0xa

    rem-int/lit8 v3, v3, 0xa

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    .line 275
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "i":I
    :cond_0
    iget v2, p0, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x76c

    goto :goto_0

    .line 279
    .restart local v0    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "TimeStamp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string/jumbo v1, "{ year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    const-string/jumbo v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/format/Time;->month:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    const-string/jumbo v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v1, ", hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    const-string/jumbo v1, ", minute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/format/Time;->minute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    const-string/jumbo v1, ", second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/format/Time;->second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
