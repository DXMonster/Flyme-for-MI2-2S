.class public Lcyanogenmod/app/CustomTile$ExpandedStyle;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedStyle"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/CustomTile$ExpandedStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRID_STYLE:I = 0x0

.field public static final LIST_STYLE:I = 0x1

.field public static final NO_STYLE:I = -0x1


# instance fields
.field private expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

.field private styleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcyanogenmod/app/CustomTile$ExpandedStyle$1;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile$ExpandedStyle$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, -0x1

    iput v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    .line 290
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 299
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 300
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 305
    .local v2, "startPosition":I
    const/4 v3, 0x1

    if-lt v1, v3, :cond_1

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    sget-object v3, Lcyanogenmod/app/CustomTile$ExpandedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcyanogenmod/app/CustomTile$ExpandedItem;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    .line 309
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    .line 312
    :cond_1
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 313
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/CustomTile$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcyanogenmod/app/CustomTile$1;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/app/CustomTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcyanogenmod/app/CustomTile$1;

    .prologue
    .line 272
    invoke-direct {p0}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public getExpandedItems()[Lcyanogenmod/app/CustomTile$ExpandedItem;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    return v0
.end method

.method protected internalSetExpandedItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcyanogenmod/app/CustomTile$ExpandedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcyanogenmod/app/CustomTile$ExpandedItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcyanogenmod/app/CustomTile$ExpandedItem;

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    .line 329
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 330
    return-void
.end method

.method protected internalStyleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 336
    iput p1, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    .line 337
    return-void
.end method

.method public setBuilder(Lcyanogenmod/app/CustomTile$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcyanogenmod/app/CustomTile$Builder;

    .prologue
    .line 319
    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p1, p0}, Lcyanogenmod/app/CustomTile$Builder;->setExpandedStyle(Lcyanogenmod/app/CustomTile$ExpandedStyle;)Lcyanogenmod/app/CustomTile$Builder;

    .line 322
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v2, "b":Ljava/lang/StringBuilder;
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "NEW_LINE":Ljava/lang/String;
    iget-object v6, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    if-eqz v6, :cond_0

    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expandedItems= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    .local v1, "arr$":[Lcyanogenmod/app/CustomTile$ExpandedItem;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v4, v1, v3

    .line 395
    .local v4, "item":Lcyanogenmod/app/CustomTile$ExpandedItem;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     item="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcyanogenmod/app/CustomTile$ExpandedItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "arr$":[Lcyanogenmod/app/CustomTile$ExpandedItem;
    .end local v3    # "i$":I
    .end local v4    # "item":Lcyanogenmod/app/CustomTile$ExpandedItem;
    .end local v5    # "len$":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "styleId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 364
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 369
    .local v1, "sizePosition":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 373
    .local v2, "startPosition":I
    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    if-eqz v3, :cond_0

    .line 374
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 379
    :goto_0
    iget v3, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 383
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 384
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 386
    return-void

    .line 377
    .end local v0    # "parcelableSize":I
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
