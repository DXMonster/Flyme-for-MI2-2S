.class Lcom/android/camera/ui/RotateImageView$1;
.super Ljava/lang/Object;
.source "RotateImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RotateImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/RotateImageView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/RotateImageView;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/camera/ui/RotateImageView$1;->this$0:Lcom/android/camera/ui/RotateImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/RotateImageView$1;->this$0:Lcom/android/camera/ui/RotateImageView;

    # getter for: Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/camera/ui/RotateImageView;->access$000(Lcom/android/camera/ui/RotateImageView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/RotateImageView$1;->this$0:Lcom/android/camera/ui/RotateImageView;

    # getter for: Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/camera/ui/RotateImageView;->access$000(Lcom/android/camera/ui/RotateImageView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/RotateImageView$1;->this$0:Lcom/android/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/android/camera/ui/RotateImageView$1;->this$0:Lcom/android/camera/ui/RotateImageView;

    # getter for: Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/camera/ui/RotateImageView;->access$000(Lcom/android/camera/ui/RotateImageView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    :cond_0
    return-void
.end method
