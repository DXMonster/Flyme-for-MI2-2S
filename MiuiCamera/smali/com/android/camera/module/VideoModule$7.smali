.class Lcom/android/camera/module/VideoModule$7;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    .prologue
    .line 1971
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 1974
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 1976
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1100(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 1984
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSeekBarIndicator()Lcom/android/camera/ui/V6SeekBarIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBarIndicator;->setVisibility(I)V

    .line 1985
    return-void

    .line 1982
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/camera/ui/V6ModulePicker;->animateIn(Ljava/lang/Runnable;IZ)V

    goto :goto_0
.end method
