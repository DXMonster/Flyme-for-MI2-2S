.class Lcom/android/server/display/WifiDisplayController$2;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 318
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 306
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$202(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 307
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;)V

    .line 308
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateScanState()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)V

    .line 310
    :cond_0
    return-void
.end method
