.class Lmiui/maml/data/ContentProviderBinder$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 1

    .prologue
    .line 595
    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    .line 596
    # getter for: Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lmiui/maml/data/ContentProviderBinder;->access$200(Lmiui/maml/data/ContentProviderBinder;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 597
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 606
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    invoke-virtual {v0}, Lmiui/maml/data/ContentProviderBinder;->onContentChanged()V

    .line 607
    return-void
.end method
