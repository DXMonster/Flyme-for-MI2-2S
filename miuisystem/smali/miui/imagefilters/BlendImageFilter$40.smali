.class Lmiui/imagefilters/BlendImageFilter$40;
.super Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/BlendImageFilter;->getCurrentPorterDuffBlender()Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$40;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendAlpha(FF)F
    .locals 2
    .param p1, "Da"    # F
    .param p2, "Sa"    # F

    .prologue
    .line 687
    add-float v0, p2, p1

    mul-float v1, p2, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public blendChannel(FFFF)F
    .locals 2
    .param p1, "Dc"    # F
    .param p2, "Sc"    # F
    .param p3, "Da"    # F
    .param p4, "Sa"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 691
    sub-float v0, v1, p3

    mul-float/2addr v0, p2

    sub-float/2addr v1, p4

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method
