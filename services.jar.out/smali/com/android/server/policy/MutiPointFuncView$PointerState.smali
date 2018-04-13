.class public Lcom/android/server/policy/MutiPointFuncView$PointerState;
.super Ljava/lang/Object;
.source "MutiPointFuncView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MutiPointFuncView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field public endX:F

.field public endY:F

.field public mPsCurDown:Z

.field private mTraceCount:I

.field public startX:F

.field public startY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v0, p0, Lcom/android/server/policy/MutiPointFuncView$PointerState;->startX:F

    .line 167
    iput v0, p0, Lcom/android/server/policy/MutiPointFuncView$PointerState;->startY:F

    .line 168
    iput v0, p0, Lcom/android/server/policy/MutiPointFuncView$PointerState;->endX:F

    .line 169
    iput v0, p0, Lcom/android/server/policy/MutiPointFuncView$PointerState;->endY:F

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MutiPointFuncView$PointerState;->mPsCurDown:Z

    .line 164
    return-void
.end method
