.class final Lcom/android/settings_ext/widget/q;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cP(I)[Lcom/android/settings_ext/widget/ScreenView$SavedState;
    .locals 1

    .prologue
    .line 1968
    new-array v0, p1, [Lcom/android/settings_ext/widget/ScreenView$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1962
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/widget/q;->p(Landroid/os/Parcel;)Lcom/android/settings_ext/widget/ScreenView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1962
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/widget/q;->cP(I)[Lcom/android/settings_ext/widget/ScreenView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public p(Landroid/os/Parcel;)Lcom/android/settings_ext/widget/ScreenView$SavedState;
    .locals 2

    .prologue
    .line 1964
    new-instance v0, Lcom/android/settings_ext/widget/ScreenView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ext/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcel;Lcom/android/settings_ext/widget/l;)V

    return-object v0
.end method
