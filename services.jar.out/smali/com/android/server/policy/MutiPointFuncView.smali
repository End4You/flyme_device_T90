.class Lcom/android/server/policy/MutiPointFuncView;
.super Landroid/view/View;
.source "MutiPointFuncView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MutiPointFuncView$PointerState;
    }
.end annotation


# instance fields
.field private abondonThisTime:Z

.field public mContext:Landroid/content/Context;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mMaxNumPointers:I

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/MutiPointFuncView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private startTrackFunc:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MutiPointFuncView;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MutiPointFuncView;->mPointers:Ljava/util/ArrayList;

    .line 44
    iput-boolean v1, p0, Lcom/android/server/policy/MutiPointFuncView;->startTrackFunc:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/server/policy/MutiPointFuncView;->abondonThisTime:Z

    .line 51
    iput-object p1, p0, Lcom/android/server/policy/MutiPointFuncView;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MutiPointFuncView;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MutiPointFuncView;->mPointers:Ljava/util/ArrayList;

    .line 44
    iput-boolean v1, p0, Lcom/android/server/policy/MutiPointFuncView;->startTrackFunc:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/server/policy/MutiPointFuncView;->abondonThisTime:Z

    .line 56
    iput-object p1, p0, Lcom/android/server/policy/MutiPointFuncView;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/server/policy/MutiPointFuncView;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 54
    return-void
.end method

.method private takeScreenshot()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/android/server/policy/MutiPointFuncView$1;

    const-string/jumbo v1, "screenshot:"

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/MutiPointFuncView$1;-><init>(Lcom/android/server/policy/MutiPointFuncView;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/policy/MutiPointFuncView$1;->start()V

    .line 179
    return-void
.end method


# virtual methods
.method public check3PointFuncTrack(Lcom/android/server/policy/MutiPointFuncView$PointerState;)V
    .locals 3
    .param p1, "ps"    # Lcom/android/server/policy/MutiPointFuncView$PointerState;

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-boolean v0, p0, Lcom/android/server/policy/MutiPointFuncView;->startTrackFunc:Z

    if-eqz v0, :cond_0

    .line 137
    iget v0, p1, Lcom/android/server/policy/MutiPointFuncView$PointerState;->endY:F

    iget v1, p1, Lcom/android/server/policy/MutiPointFuncView$PointerState;->startY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43160000    # 150.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MutiPointFuncView;->abondonThisTime:Z

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/server/policy/MutiPointFuncView;->stop3PointFuncTrack(Landroid/view/MotionEvent;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget v0, p0, Lcom/android/server/policy/MutiPointFuncView;->mCurNumPointers:I

    if-nez v0, :cond_0

    .line 142
    const-string/jumbo v0, "twfx-3"

    const-string/jumbo v1, "---------detect func start !!!---------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/server/policy/MutiPointFuncView;->startFunc()V

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/server/policy/MutiPointFuncView;->stop3PointFuncTrack(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public on3PointGestureDetected()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public on3PointGestureStopped()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 156
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 162
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v11, 0xff00

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 64
    .local v1, "action":I
    iget-object v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 65
    .local v0, "NP":I
    if-eqz v1, :cond_0

    .line 66
    and-int/lit16 v5, v1, 0xff

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 67
    :cond_0
    and-int v5, v1, v11

    shr-int/lit8 v3, v5, 0x8

    .line 69
    .local v3, "index":I
    if-nez v1, :cond_1

    .line 70
    iget-object v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 71
    iput-boolean v9, p0, Lcom/android/server/policy/MutiPointFuncView;->mCurDown:Z

    .line 72
    iput v8, p0, Lcom/android/server/policy/MutiPointFuncView;->mCurNumPointers:I

    .line 73
    iput v8, p0, Lcom/android/server/policy/MutiPointFuncView;->mMaxNumPointers:I

    .line 74
    const/4 v0, 0x0

    .line 75
    iput-boolean v8, p0, Lcom/android/server/policy/MutiPointFuncView;->abondonThisTime:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/server/policy/MutiPointFuncView;->on3PointGestureStopped()V

    .line 78
    :cond_1
    iget v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mCurNumPointers:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mCurNumPointers:I

    .line 79
    iget v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mMaxNumPointers:I

    iget v6, p0, Lcom/android/server/policy/MutiPointFuncView;->mCurNumPointers:I

    if-ge v5, v6, :cond_2

    .line 80
    iget v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mCurNumPointers:I

    iput v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mMaxNumPointers:I

    .line 82
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 83
    .local v2, "id":I
    :goto_0
    if-gt v0, v2, :cond_3

    .line 84
    new-instance v4, Lcom/android/server/policy/MutiPointFuncView$PointerState;

    invoke-direct {v4}, Lcom/android/server/policy/MutiPointFuncView$PointerState;-><init>()V

    .line 85
    .local v4, "ps":Lcom/android/server/policy/MutiPointFuncView$PointerState;
    iget-object v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v4    # "ps":Lcom/android/server/policy/MutiPointFuncView$PointerState;
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/MutiPointFuncView$PointerState;

    .line 89
    .restart local v4    # "ps":Lcom/android/server/policy/MutiPointFuncView$PointerState;
    iput-boolean v9, v4, Lcom/android/server/policy/MutiPointFuncView$PointerState;->mPsCurDown:Z

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Lcom/android/server/policy/MutiPointFuncView$PointerState;->startX:F

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Lcom/android/server/policy/MutiPointFuncView$PointerState;->startY:F

    .line 93
    const-string/jumbo v5, "twfx-3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " PointerId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mCurNumPointers = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/policy/MutiPointFuncView;->mCurNumPointers:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v2    # "id":I
    .end local v3    # "index":I
    .end local v4    # "ps":Lcom/android/server/policy/MutiPointFuncView$PointerState;
    :cond_4
    iget v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mMaxNumPointers:I

    if-ne v5, v10, :cond_5

    iget-boolean v5, p0, Lcom/android/server/policy/MutiPointFuncView;->abondonThisTime:Z

    if-eqz v5, :cond_9

    .line 99
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/policy/MutiPointFuncView;->stop3PointFuncTrack(Landroid/view/MotionEvent;)V

    .line 102
    :goto_1
    if-eq v1, v9, :cond_6

    .line 103
    if-ne v1, v10, :cond_a

    .line 105
    :cond_6
    :goto_2
    and-int v5, v1, v11

    shr-int/lit8 v3, v5, 0x8

    .line 108
    .restart local v3    # "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 109
    .restart local v2    # "id":I
    iget-object v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/MutiPointFuncView$PointerState;

    .line 110
    .restart local v4    # "ps":Lcom/android/server/policy/MutiPointFuncView$PointerState;
    iput-boolean v8, v4, Lcom/android/server/policy/MutiPointFuncView$PointerState;->mPsCurDown:Z

    .line 112
    if-eq v1, v9, :cond_7

    .line 113
    if-ne v1, v10, :cond_b

    .line 114
    :cond_7
    iput-boolean v8, p0, Lcom/android/server/policy/MutiPointFuncView;->mCurDown:Z

    .line 115
    iput v8, p0, Lcom/android/server/policy/MutiPointFuncView;->mCurNumPointers:I

    .line 120
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Lcom/android/server/policy/MutiPointFuncView$PointerState;->endX:F

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Lcom/android/server/policy/MutiPointFuncView$PointerState;->endY:F

    .line 123
    invoke-virtual {p0, v4}, Lcom/android/server/policy/MutiPointFuncView;->check3PointFuncTrack(Lcom/android/server/policy/MutiPointFuncView$PointerState;)V

    .line 61
    .end local v2    # "id":I
    .end local v3    # "index":I
    .end local v4    # "ps":Lcom/android/server/policy/MutiPointFuncView$PointerState;
    :cond_8
    return-void

    .line 97
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/policy/MutiPointFuncView;->start3PointFuncTrack(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 104
    :cond_a
    and-int/lit16 v5, v1, 0xff

    const/4 v6, 0x6

    if-ne v5, v6, :cond_8

    goto :goto_2

    .line 117
    .restart local v2    # "id":I
    .restart local v3    # "index":I
    .restart local v4    # "ps":Lcom/android/server/policy/MutiPointFuncView$PointerState;
    :cond_b
    iget v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mCurNumPointers:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/policy/MutiPointFuncView;->mCurNumPointers:I

    goto :goto_3
.end method

.method public start3PointFuncTrack(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MutiPointFuncView;->startTrackFunc:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/server/policy/MutiPointFuncView;->on3PointGestureDetected()V

    .line 127
    return-void
.end method

.method public startFunc()V
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "twfx-3"

    const-string/jumbo v1, "Parent startFunc!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public stop3PointFuncTrack(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MutiPointFuncView;->startTrackFunc:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/server/policy/MutiPointFuncView;->on3PointGestureStopped()V

    .line 131
    return-void
.end method
