.class final Landroid/safe/AutoRunPkgInfo$1;
.super Ljava/lang/Object;
.source "AutoRunPkgInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safe/AutoRunPkgInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/safe/AutoRunPkgInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/safe/AutoRunPkgInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 40
    new-instance v0, Landroid/safe/AutoRunPkgInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/safe/AutoRunPkgInfo;-><init>(Landroid/os/Parcel;Landroid/safe/AutoRunPkgInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/safe/AutoRunPkgInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safe/AutoRunPkgInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/safe/AutoRunPkgInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 43
    new-array v0, p1, [Landroid/safe/AutoRunPkgInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Landroid/safe/AutoRunPkgInfo$1;->newArray(I)[Landroid/safe/AutoRunPkgInfo;

    move-result-object v0

    return-object v0
.end method
