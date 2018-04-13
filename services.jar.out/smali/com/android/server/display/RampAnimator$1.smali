.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    .prologue
    .line 144
    .local p1, "this$0":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 147
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get1(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v2

    .line 148
    .local v2, "frameTimeNanos":J
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get3(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v8

    sub-long v8, v2, v8

    long-to-float v7, v8

    .line 149
    const v8, 0x3089705f    # 1.0E-9f

    .line 148
    mul-float v6, v7, v8

    .line 150
    .local v6, "timeDelta":F
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7, v2, v3}, Lcom/android/server/display/RampAnimator;->-set3(Lcom/android/server/display/RampAnimator;J)J

    .line 156
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v5

    .line 157
    .local v5, "scale":F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-nez v7, :cond_2

    .line 159
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->-set0(Lcom/android/server/display/RampAnimator;F)F

    .line 181
    :goto_0
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    .line 182
    .local v4, "oldCurrentValue":I
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->-set2(Lcom/android/server/display/RampAnimator;I)I

    .line 184
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-eq v4, v7, :cond_0

    .line 185
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get6(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get5(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 188
    :cond_0
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 189
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-wrap0(Lcom/android/server/display/RampAnimator;)V

    .line 146
    :cond_1
    :goto_1
    return-void

    .line 162
    .end local v4    # "oldCurrentValue":I
    :cond_2
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get7(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    div-float v0, v7, v5

    .line 165
    .local v0, "amount":F
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    const/16 v8, 0x64

    if-gt v7, v8, :cond_3

    .line 166
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->amoledSupport()Z

    move-result v1

    .line 167
    .local v1, "isAmoled":Z
    if-eqz v1, :cond_3

    .line 168
    const/high16 v0, 0x3f800000    # 1.0f

    .line 175
    .end local v1    # "isAmoled":Z
    :cond_3
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get2(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-le v7, v8, :cond_4

    .line 176
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    move-result v8

    add-float/2addr v8, v0

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->-set0(Lcom/android/server/display/RampAnimator;F)F

    goto/16 :goto_0

    .line 178
    :cond_4
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-get0(Lcom/android/server/display/RampAnimator;)F

    move-result v8

    sub-float/2addr v8, v0

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->-get8(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->-set0(Lcom/android/server/display/RampAnimator;F)F

    goto/16 :goto_0

    .line 191
    .end local v0    # "amount":F
    .restart local v4    # "oldCurrentValue":I
    :cond_5
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->-set1(Lcom/android/server/display/RampAnimator;Z)Z

    .line 192
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get4(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 193
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-get4(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    goto :goto_1
.end method
