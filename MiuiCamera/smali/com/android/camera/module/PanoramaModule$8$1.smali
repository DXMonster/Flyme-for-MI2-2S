.class Lcom/android/camera/module/PanoramaModule$8$1;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/PanoramaModule$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/module/PanoramaModule$8;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/PanoramaModule$8;I)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$8$1;->this$1:Lcom/android/camera/module/PanoramaModule$8;

    iput p2, p0, Lcom/android/camera/module/PanoramaModule$8$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$8$1;->this$1:Lcom/android/camera/module/PanoramaModule$8;

    iget-object v0, v0, Lcom/android/camera/module/PanoramaModule$8;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$2400(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/PanoProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/PanoramaModule$8$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 974
    return-void
.end method
