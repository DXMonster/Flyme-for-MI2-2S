.class final Lcom/google/common/collect/P;
.super Lcom/google/common/collect/O;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic aAY:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3753
    iput-object p1, p0, Lcom/google/common/collect/P;->aAY:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/O;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3757
    invoke-virtual {p0}, Lcom/google/common/collect/P;->xP()Lcom/google/common/collect/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ak;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method