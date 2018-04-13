.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field lastTime:J

.field oldChargeMAh:I

.field oldHealth:I

.field oldLevel:I

.field oldPlug:I

.field oldState:I

.field oldState2:I

.field oldStatus:I

.field oldTemp:I

.field oldVolt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 4730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4731
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 4732
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 4733
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 4734
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 4735
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 4736
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 4737
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 4738
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 4739
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 4740
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    .line 4730
    return-void
.end method

.method private printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .prologue
    .line 5070
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5071
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 5072
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5073
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 5074
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5075
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 5069
    return-void
.end method

.method private printStepCpuUidDetails(Ljava/io/PrintWriter;III)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .prologue
    .line 5061
    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5062
    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5063
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 5064
    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5065
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 5066
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5060
    return-void
.end method


# virtual methods
.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "baseTime"    # J
    .param p5, "checkin"    # Z
    .param p6, "verbose"    # Z

    .prologue
    .line 4755
    if-nez p5, :cond_1

    .line 4756
    const-string/jumbo v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4757
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v0, v0, p3

    const/16 v2, 0x13

    invoke-static {v0, v1, p1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 4758
    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4759
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4760
    const-string/jumbo v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4771
    :goto_0
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 4772
    if-eqz p5, :cond_0

    .line 4773
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4775
    :cond_0
    const-string/jumbo v0, "START"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4776
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    .line 4754
    :goto_1
    return-void

    .line 4762
    :cond_1
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4763
    const-string/jumbo v0, "h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4764
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 4765
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v0, v0, p3

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4769
    :goto_2
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    goto :goto_0

    .line 4767
    :cond_2
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_2

    .line 4777
    :cond_3
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    .line 4778
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 4779
    :cond_4
    if-eqz p5, :cond_5

    .line 4780
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4782
    :cond_5
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 4783
    const-string/jumbo v0, "RESET:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4784
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    .line 4786
    :cond_6
    const-string/jumbo v0, "TIME:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4787
    if-eqz p5, :cond_7

    .line 4788
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_1

    .line 4790
    :cond_7
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4791
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    .line 4792
    iget-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 4791
    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4794
    :cond_8
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 4795
    if-eqz p5, :cond_9

    .line 4796
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4798
    :cond_9
    const-string/jumbo v0, "SHUTDOWN"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4799
    :cond_a
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 4800
    if-eqz p5, :cond_b

    .line 4801
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4803
    :cond_b
    const-string/jumbo v0, "*OVERFLOW*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4805
    :cond_c
    if-nez p5, :cond_25

    .line 4806
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1e

    const-string/jumbo v0, "00"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4808
    :cond_d
    :goto_3
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4809
    if-eqz p6, :cond_f

    .line 4810
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4811
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ltz v0, :cond_e

    .line 4812
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1f

    const-string/jumbo v0, "0000000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4819
    :cond_e
    :goto_4
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4827
    :cond_f
    :goto_5
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eq v0, v1, :cond_10

    .line 4828
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 4829
    if-eqz p5, :cond_26

    const-string/jumbo v0, ",Bs="

    :goto_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4830
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v0, :pswitch_data_0

    .line 4847
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4851
    :cond_10
    :goto_7
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v0, v1, :cond_11

    .line 4852
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 4853
    if-eqz p5, :cond_2c

    const-string/jumbo v0, ",Bh="

    :goto_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4854
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v0, :pswitch_data_1

    .line 4877
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4881
    :cond_11
    :goto_9
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v0, v1, :cond_12

    .line 4882
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 4883
    if-eqz p5, :cond_34

    const-string/jumbo v0, ",Bp="

    :goto_a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4884
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    packed-switch v0, :pswitch_data_2

    .line 4898
    :pswitch_0
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4902
    :cond_12
    :goto_b
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v0, v1, :cond_13

    .line 4903
    iget-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 4904
    if-eqz p5, :cond_39

    const-string/jumbo v0, ",Bt="

    :goto_c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4905
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4907
    :cond_13
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v0, v1, :cond_14

    .line 4908
    iget-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 4909
    if-eqz p5, :cond_3a

    const-string/jumbo v0, ",Bv="

    :goto_d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4910
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4912
    :cond_14
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    div-int/lit16 v6, v0, 0x3e8

    .line 4913
    .local v6, "chargeMAh":I
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v0, v6, :cond_15

    .line 4914
    iput v6, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 4915
    if-eqz p5, :cond_3b

    const-string/jumbo v0, ",Bcc="

    :goto_e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4916
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4918
    :cond_15
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 4919
    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    if-eqz p5, :cond_3c

    const/4 v5, 0x0

    :goto_f
    move-object v0, p1

    .line 4918
    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 4920
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 4921
    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    if-eqz p5, :cond_3d

    const/4 v5, 0x0

    .line 4920
    :goto_10
    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 4922
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_16

    .line 4923
    if-eqz p5, :cond_3e

    .line 4924
    const-string/jumbo v0, ",wr="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4925
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4934
    :cond_16
    :goto_11
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v0, :cond_18

    .line 4935
    if-eqz p5, :cond_3f

    const-string/jumbo v0, ","

    :goto_12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4936
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_40

    .line 4937
    const-string/jumbo v0, "+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4941
    :cond_17
    :goto_13
    if-eqz p5, :cond_41

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    .line 4943
    .local v7, "eventNames":[Ljava/lang/String;
    :goto_14
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v1, -0xc001

    and-int v8, v0, v1

    .line 4945
    .local v8, "idx":I
    if-ltz v8, :cond_42

    array-length v0, v7

    if-ge v8, v0, :cond_42

    .line 4946
    aget-object v0, v7, v8

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4951
    :goto_15
    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4952
    if-eqz p5, :cond_44

    .line 4953
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4961
    .end local v7    # "eventNames":[Ljava/lang/String;
    .end local v8    # "idx":I
    :cond_18
    :goto_16
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4962
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v0, :cond_1d

    .line 4963
    if-nez p5, :cond_45

    .line 4964
    const-string/jumbo v0, "                 Details: cpu="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4965
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4966
    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4967
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4968
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4969
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v0, :cond_1b

    .line 4970
    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4971
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 4972
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 4971
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    .line 4973
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v0, :cond_19

    .line 4974
    const-string/jumbo v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4975
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 4976
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 4975
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    .line 4978
    :cond_19
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v0, :cond_1a

    .line 4979
    const-string/jumbo v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4980
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 4981
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 4980
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    .line 4983
    :cond_1a
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4985
    :cond_1b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4986
    const-string/jumbo v0, "                          /proc/stat="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4987
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4988
    const-string/jumbo v0, " usr, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4989
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4990
    const-string/jumbo v0, " sys, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4991
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4992
    const-string/jumbo v0, " io, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4993
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4994
    const-string/jumbo v0, " irq, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4995
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4996
    const-string/jumbo v0, " sirq, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4997
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4998
    const-string/jumbo v0, " idle"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4999
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v0, v1

    .line 5000
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 4999
    add-int/2addr v0, v1

    .line 5000
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 4999
    add-int/2addr v0, v1

    .line 5001
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 4999
    add-int v12, v0, v1

    .line 5002
    .local v12, "totalRun":I
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int v11, v12, v0

    .line 5003
    .local v11, "total":I
    if-lez v11, :cond_1c

    .line 5004
    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5005
    int-to-float v0, v12

    int-to-float v1, v11

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v9, v0, v1

    .line 5006
    .local v9, "perc":F
    const-string/jumbo v0, "%.1f%%"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5007
    const-string/jumbo v0, " of "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5008
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5009
    .local v10, "sb":Ljava/lang/StringBuilder;
    mul-int/lit8 v0, v11, 0xa

    int-to-long v0, v0

    invoke-static {v10, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5010
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5011
    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5013
    .end local v9    # "perc":F
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_1c
    const-string/jumbo v0, ", PlatformIdleStat "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5014
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5015
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5055
    .end local v11    # "total":I
    .end local v12    # "totalRun":I
    :cond_1d
    :goto_17
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 5056
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    goto/16 :goto_1

    .line 4807
    .end local v6    # "chargeMAh":I
    :cond_1e
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v1, 0x64

    if-ge v0, v1, :cond_d

    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4813
    :cond_1f
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_20

    const-string/jumbo v0, "000000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4814
    :cond_20
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_21

    const-string/jumbo v0, "00000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4815
    :cond_21
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_22

    const-string/jumbo v0, "0000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4816
    :cond_22
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_23

    const-string/jumbo v0, "000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4817
    :cond_23
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x1000000

    if-ge v0, v1, :cond_24

    const-string/jumbo v0, "00"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4818
    :cond_24
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x10000000

    if-ge v0, v1, :cond_e

    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4822
    :cond_25
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v0, v1, :cond_f

    .line 4823
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 4824
    const-string/jumbo v0, ",Bl="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    goto/16 :goto_5

    .line 4829
    :cond_26
    const-string/jumbo v0, " status="

    goto/16 :goto_6

    .line 4832
    :pswitch_1
    if-eqz p5, :cond_27

    const-string/jumbo v0, "?"

    :goto_18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_27
    const-string/jumbo v0, "unknown"

    goto :goto_18

    .line 4835
    :pswitch_2
    if-eqz p5, :cond_28

    const-string/jumbo v0, "c"

    :goto_19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_28
    const-string/jumbo v0, "charging"

    goto :goto_19

    .line 4838
    :pswitch_3
    if-eqz p5, :cond_29

    const-string/jumbo v0, "d"

    :goto_1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_29
    const-string/jumbo v0, "discharging"

    goto :goto_1a

    .line 4841
    :pswitch_4
    if-eqz p5, :cond_2a

    const-string/jumbo v0, "n"

    :goto_1b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2a
    const-string/jumbo v0, "not-charging"

    goto :goto_1b

    .line 4844
    :pswitch_5
    if-eqz p5, :cond_2b

    const-string/jumbo v0, "f"

    :goto_1c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2b
    const-string/jumbo v0, "full"

    goto :goto_1c

    .line 4853
    :cond_2c
    const-string/jumbo v0, " health="

    goto/16 :goto_8

    .line 4856
    :pswitch_6
    if-eqz p5, :cond_2d

    const-string/jumbo v0, "?"

    :goto_1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2d
    const-string/jumbo v0, "unknown"

    goto :goto_1d

    .line 4859
    :pswitch_7
    if-eqz p5, :cond_2e

    const-string/jumbo v0, "g"

    :goto_1e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2e
    const-string/jumbo v0, "good"

    goto :goto_1e

    .line 4862
    :pswitch_8
    if-eqz p5, :cond_2f

    const-string/jumbo v0, "h"

    :goto_1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2f
    const-string/jumbo v0, "overheat"

    goto :goto_1f

    .line 4865
    :pswitch_9
    if-eqz p5, :cond_30

    const-string/jumbo v0, "d"

    :goto_20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_30
    const-string/jumbo v0, "dead"

    goto :goto_20

    .line 4868
    :pswitch_a
    if-eqz p5, :cond_31

    const-string/jumbo v0, "v"

    :goto_21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_31
    const-string/jumbo v0, "over-voltage"

    goto :goto_21

    .line 4871
    :pswitch_b
    if-eqz p5, :cond_32

    const-string/jumbo v0, "f"

    :goto_22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_32
    const-string/jumbo v0, "failure"

    goto :goto_22

    .line 4874
    :pswitch_c
    if-eqz p5, :cond_33

    const-string/jumbo v0, "c"

    :goto_23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_33
    const-string/jumbo v0, "cold"

    goto :goto_23

    .line 4883
    :cond_34
    const-string/jumbo v0, " plug="

    goto/16 :goto_a

    .line 4886
    :pswitch_d
    if-eqz p5, :cond_35

    const-string/jumbo v0, "n"

    :goto_24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_35
    const-string/jumbo v0, "none"

    goto :goto_24

    .line 4889
    :pswitch_e
    if-eqz p5, :cond_36

    const-string/jumbo v0, "a"

    :goto_25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_36
    const-string/jumbo v0, "ac"

    goto :goto_25

    .line 4892
    :pswitch_f
    if-eqz p5, :cond_37

    const-string/jumbo v0, "u"

    :goto_26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_37
    const-string/jumbo v0, "usb"

    goto :goto_26

    .line 4895
    :pswitch_10
    if-eqz p5, :cond_38

    const-string/jumbo v0, "w"

    :goto_27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_38
    const-string/jumbo v0, "wireless"

    goto :goto_27

    .line 4904
    :cond_39
    const-string/jumbo v0, " temp="

    goto/16 :goto_c

    .line 4909
    :cond_3a
    const-string/jumbo v0, " volt="

    goto/16 :goto_d

    .line 4915
    .restart local v6    # "chargeMAh":I
    :cond_3b
    const-string/jumbo v0, " charge="

    goto/16 :goto_e

    .line 4919
    :cond_3c
    const/4 v5, 0x1

    goto/16 :goto_f

    .line 4921
    :cond_3d
    const/4 v5, 0x1

    goto/16 :goto_10

    .line 4927
    :cond_3e
    const-string/jumbo v0, " wake_reason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4928
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4929
    const-string/jumbo v0, ":\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4930
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4931
    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4935
    :cond_3f
    const-string/jumbo v0, " "

    goto/16 :goto_12

    .line 4938
    :cond_40
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_17

    .line 4939
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 4942
    :cond_41
    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .restart local v7    # "eventNames":[Ljava/lang/String;
    goto/16 :goto_14

    .line 4948
    .restart local v8    # "idx":I
    :cond_42
    if-eqz p5, :cond_43

    const-string/jumbo v0, "Ev"

    :goto_28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4949
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    goto/16 :goto_15

    .line 4948
    :cond_43
    const-string/jumbo v0, "event"

    goto :goto_28

    .line 4955
    :cond_44
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4956
    const-string/jumbo v0, ":\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4957
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4958
    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 5017
    .end local v7    # "eventNames":[Ljava/lang/String;
    .end local v8    # "idx":I
    :cond_45
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5018
    const-string/jumbo v0, "h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ",0,Dcpu="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5019
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5020
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5021
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5022
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v0, :cond_47

    .line 5023
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 5024
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 5023
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    .line 5025
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v0, :cond_46

    .line 5026
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 5027
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 5026
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    .line 5029
    :cond_46
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v0, :cond_47

    .line 5030
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 5031
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 5030
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    .line 5034
    :cond_47
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5035
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5036
    const-string/jumbo v0, "h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ",0,Dpst="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5037
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5038
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5039
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5040
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5041
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5042
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5043
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5044
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5045
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5046
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5047
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5048
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5049
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    if-eqz v0, :cond_48

    .line 5050
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5052
    :cond_48
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_17

    .line 4830
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 4854
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 4884
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 4743
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 4744
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 4745
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 4746
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 4747
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 4748
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 4749
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 4750
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 4742
    return-void
.end method
