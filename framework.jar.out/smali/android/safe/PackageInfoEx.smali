.class public Landroid/safe/PackageInfoEx;
.super Ljava/lang/Object;
.source "PackageInfoEx.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safe/PackageInfoEx$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/safe/PackageInfoEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:J

.field public pkgName:Ljava/lang/String;

.field public prebuild:Z

.field public shield:I

.field public trusted:Z

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/safe/PackageInfoEx$1;

    invoke-direct {v0}, Landroid/safe/PackageInfoEx$1;-><init>()V

    .line 51
    sput-object v0, Landroid/safe/PackageInfoEx;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Landroid/safe/PackageInfoEx;->uid:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/safe/PackageInfoEx;->pkgName:Ljava/lang/String;

    .line 19
    iput v1, p0, Landroid/safe/PackageInfoEx;->shield:I

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/safe/PackageInfoEx;->action:J

    .line 21
    iput-boolean v2, p0, Landroid/safe/PackageInfoEx;->prebuild:Z

    .line 22
    iput-boolean v2, p0, Landroid/safe/PackageInfoEx;->trusted:Z

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/safe/PackageInfoEx;->uid:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safe/PackageInfoEx;->pkgName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/safe/PackageInfoEx;->shield:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/safe/PackageInfoEx;->action:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/safe/PackageInfoEx;->prebuild:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/safe/PackageInfoEx;->trusted:Z

    .line 61
    return-void

    :cond_0
    move v0, v2

    .line 66
    goto :goto_0

    :cond_1
    move v1, v2

    .line 67
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/safe/PackageInfoEx;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/safe/PackageInfoEx;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Landroid/safe/PackageInfoEx;->uid:I

    .line 27
    iput-object p1, p0, Landroid/safe/PackageInfoEx;->pkgName:Ljava/lang/String;

    .line 28
    iput v0, p0, Landroid/safe/PackageInfoEx;->shield:I

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/safe/PackageInfoEx;->action:J

    .line 30
    iput-boolean v2, p0, Landroid/safe/PackageInfoEx;->prebuild:Z

    .line 31
    iput-boolean v2, p0, Landroid/safe/PackageInfoEx;->trusted:Z

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    iget v0, p0, Landroid/safe/PackageInfoEx;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Landroid/safe/PackageInfoEx;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget v0, p0, Landroid/safe/PackageInfoEx;->shield:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-wide v4, p0, Landroid/safe/PackageInfoEx;->action:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-boolean v0, p0, Landroid/safe/PackageInfoEx;->prebuild:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-boolean v0, p0, Landroid/safe/PackageInfoEx;->trusted:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    return-void

    :cond_0
    move v0, v2

    .line 47
    goto :goto_0

    :cond_1
    move v1, v2

    .line 48
    goto :goto_1
.end method
