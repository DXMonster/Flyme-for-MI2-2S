.class final Lmiui/yellowpage/MiPubUtils$1;
.super Ljava/lang/Object;
.source "MiPubUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/yellowpage/MiPubUtils;->getLocalYellowPages(Landroid/content/Context;Ljava/util/Set;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$miIds:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lmiui/yellowpage/MiPubUtils$1;->val$miIds:Ljava/util/Set;

    iput-object p2, p0, Lmiui/yellowpage/MiPubUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 255
    iget-object v2, p0, Lmiui/yellowpage/MiPubUtils$1;->val$miIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    .local v1, "miId":Ljava/lang/String;
    iget-object v2, p0, Lmiui/yellowpage/MiPubUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lmiui/yellowpage/MiPubUtils;->getCloudYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v2

    if-nez v2, :cond_0

    .line 257
    const-string v2, "MipubUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No yellowpage matched miid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v1    # "miId":Ljava/lang/String;
    :cond_1
    return-void
.end method
