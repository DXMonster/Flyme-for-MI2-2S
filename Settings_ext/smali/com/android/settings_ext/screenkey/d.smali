.class public Lcom/android/settings_ext/screenkey/d;
.super Landroid/preference/Preference;
.source "ScreenKeySettings.java"


# instance fields
.field final synthetic aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/screenkey/ScreenKeySettings;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings_ext/screenkey/d;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    .line 50
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    const v0, 0x7f040109

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/screenkey/d;->setLayoutResource(I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 57
    iget-object v1, p0, Lcom/android/settings_ext/screenkey/d;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    const v0, 0x7f100296

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SortableListView;

    invoke-static {v1, v0}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->a(Lcom/android/settings_ext/screenkey/ScreenKeySettings;Landroid/widget/SortableListView;)Landroid/widget/SortableListView;

    .line 58
    iget-object v0, p0, Lcom/android/settings_ext/screenkey/d;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v0}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->a(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Landroid/widget/SortableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/screenkey/d;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setOnOrderChangedListener(Landroid/widget/SortableListView$OnOrderChangedListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings_ext/screenkey/d;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v0}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->a(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Landroid/widget/SortableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SortableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/android/settings_ext/screenkey/d;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v1}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->b(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Lcom/android/settings_ext/screenkey/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ext/screenkey/c;->getCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/settings_ext/screenkey/d;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v2}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->b(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Lcom/android/settings_ext/screenkey/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ext/screenkey/c;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/settings_ext/screenkey/d;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v3}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->a(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Landroid/widget/SortableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SortableListView;->getDividerHeight()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    iget-object v1, p0, Lcom/android/settings_ext/screenkey/d;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v1}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->a(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Landroid/widget/SortableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SortableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings_ext/screenkey/d;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v0}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->a(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Landroid/widget/SortableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/screenkey/d;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v1}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->b(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Lcom/android/settings_ext/screenkey/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    return-void
.end method