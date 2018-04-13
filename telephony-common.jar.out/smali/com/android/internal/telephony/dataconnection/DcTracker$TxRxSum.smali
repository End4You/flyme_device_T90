.class public Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxRxSum"
.end annotation


# instance fields
.field public rxPkts:J

.field public txPkts:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->reset()V

    .line 475
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "txPkts"    # J
    .param p3, "rxPkts"    # J

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-wide p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 481
    iput-wide p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    .line 479
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;)V
    .locals 2
    .param p1, "sum"    # Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iget-wide v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 486
    iget-wide v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    .line 484
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 490
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 491
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    .line 489
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{txSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " rxSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTxRxSum()V
    .locals 2

    .prologue
    .line 500
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 501
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    .line 499
    return-void
.end method
