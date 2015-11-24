.class public Lcom/android/settings_ext/MiuiLocalePicker;
.super Lcom/android/settings_ext/LocalePicker;
.source "MiuiLocalePicker.java"


# instance fields
.field private qc:Ljava/lang/String;

.field private qd:Landroid/widget/ArrayAdapter;

.field private qe:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ext/LocalePicker;-><init>()V

    .line 86
    return-void
.end method

.method private a(Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .locals 6

    .prologue
    .line 78
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 79
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Lcom/android/settings_ext/dK;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040070

    const v4, 0x7f100052

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/dK;-><init>(Lcom/android/settings_ext/MiuiLocalePicker;Landroid/content/Context;IILjava/util/List;)V

    .line 83
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/MiuiLocalePicker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qc:Ljava/lang/String;

    return-object v0
.end method

.method private eL()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 55
    iget-object v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qd:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 58
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    iput-object v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qc:Ljava/lang/String;

    .line 62
    return-void

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings_ext/LocalePicker;->onActivityCreated(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qd:Landroid/widget/ArrayAdapter;

    .line 31
    iget-object v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qd:Landroid/widget/ArrayAdapter;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/MiuiLocalePicker;->a(Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qd:Landroid/widget/ArrayAdapter;

    .line 32
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiLocalePicker;->eL()V

    .line 33
    iget-object v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qd:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/MiuiLocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qe:I

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings_ext/LocalePicker;->onAttach(Landroid/app/Activity;)V

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 44
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qe:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 50
    invoke-super {p0}, Lcom/android/settings_ext/LocalePicker;->onDetach()V

    .line 51
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 66
    invoke-super/range {p0 .. p5}, Lcom/android/settings_ext/LocalePicker;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 67
    iget-object v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qd:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iput-object v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qc:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qd:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/android/settings_ext/MiuiLocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    iget-object v0, p0, Lcom/android/settings_ext/MiuiLocalePicker;->qd:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 75
    :cond_1
    return-void
.end method