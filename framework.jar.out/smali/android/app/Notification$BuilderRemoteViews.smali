.class Landroid/app/Notification$BuilderRemoteViews;
.super Landroid/widget/RemoteViews;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderRemoteViews"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "layoutId"    # I

    .prologue
    .line 6916
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 6915
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 6912
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 6911
    return-void
.end method


# virtual methods
.method public clone()Landroid/app/Notification$BuilderRemoteViews;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6922
    .local v1, "p":Landroid/os/Parcel;
    invoke-virtual {p0, v1, v2}, Landroid/app/Notification$BuilderRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6923
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6924
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    invoke-direct {v0, v1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 6925
    .local v0, "brv":Landroid/app/Notification$BuilderRemoteViews;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6926
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 6920
    invoke-virtual {p0}, Landroid/app/Notification$BuilderRemoteViews;->clone()Landroid/app/Notification$BuilderRemoteViews;

    move-result-object v0

    return-object v0
.end method
