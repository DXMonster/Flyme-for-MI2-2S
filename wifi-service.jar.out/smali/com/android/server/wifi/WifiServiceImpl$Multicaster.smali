.class Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
.super Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Multicaster"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 6
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 1703
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;-><init>(Lcom/android/server/wifi/WifiServiceImpl;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 1704
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 1707
    const-string v1, "WifiService"

    const-string v2, "Multicaster binderDied"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 1709
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1710
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1711
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mMode:I

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V
    invoke-static {v1, v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$1800(Lcom/android/server/wifi/WifiServiceImpl;II)V

    .line 1713
    :cond_0
    monitor-exit v2

    .line 1714
    return-void

    .line 1713
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 1721
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multicaster{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
