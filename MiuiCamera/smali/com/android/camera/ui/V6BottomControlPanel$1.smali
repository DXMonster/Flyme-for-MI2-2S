.class Lcom/android/camera/ui/V6BottomControlPanel$1;
.super Ljava/lang/Object;
.source "V6BottomControlPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6BottomControlPanel;->animateOut(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6BottomControlPanel;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6BottomControlPanel;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomControlPanel$1;->this$0:Lcom/android/camera/ui/V6BottomControlPanel;

    iput-object p2, p0, Lcom/android/camera/ui/V6BottomControlPanel$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel$1;->this$0:Lcom/android/camera/ui/V6BottomControlPanel;

    # getter for: Lcom/android/camera/ui/V6BottomControlPanel;->mControlVisible:Z
    invoke-static {v0}, Lcom/android/camera/ui/V6BottomControlPanel;->access$000(Lcom/android/camera/ui/V6BottomControlPanel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel$1;->this$0:Lcom/android/camera/ui/V6BottomControlPanel;

    # getter for: Lcom/android/camera/ui/V6BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/camera/ui/V6BottomControlPanel;->access$100(Lcom/android/camera/ui/V6BottomControlPanel;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel$1;->this$0:Lcom/android/camera/ui/V6BottomControlPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6BottomControlPanel;->setBackgroundVisible(Z)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel$1;->this$0:Lcom/android/camera/ui/V6BottomControlPanel;

    # getter for: Lcom/android/camera/ui/V6BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/camera/ui/V6BottomControlPanel;->access$100(Lcom/android/camera/ui/V6BottomControlPanel;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 96
    return-void
.end method