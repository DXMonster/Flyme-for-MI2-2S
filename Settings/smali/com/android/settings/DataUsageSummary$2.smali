.class Lcom/android/settings_ext/DataUsageSummary$2;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ext/DataUsageSummary;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/settings_ext/DataUsageSummary$2;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 456
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/DataUsageSummary$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 461
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 462
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$2;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    # getter for: Lcom/android/settings_ext/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->access$000(Lcom/android/settings_ext/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 464
    :catch_0
    move-exception v0

    goto :goto_0

    .line 463
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 456
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/DataUsageSummary$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$2;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings_ext/DataUsageSummary;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$2;->this$0:Lcom/android/settings_ext/DataUsageSummary;

    # invokes: Lcom/android/settings_ext/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->access$100(Lcom/android/settings_ext/DataUsageSummary;)V

    .line 474
    :cond_0
    return-void
.end method