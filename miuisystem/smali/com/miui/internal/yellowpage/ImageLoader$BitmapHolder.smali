.class Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/yellowpage/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapHolder"
.end annotation


# instance fields
.field mBitmapRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mBytes:[B

.field mState:Lcom/miui/internal/yellowpage/ImageLoader$State;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/yellowpage/ImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader$1;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;-><init>()V

    return-void
.end method
