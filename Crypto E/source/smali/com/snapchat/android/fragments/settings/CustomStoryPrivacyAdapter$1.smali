.class Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->b(Landroid/view/View;Lcom/snapchat/android/model/Friend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;Lcom/snapchat/android/model/Friend;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$1;->b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    if-eqz p2, :cond_0

    .line 144
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$1;->b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->a(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;)Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;->b(Lcom/snapchat/android/model/Friend;)V

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$1;->b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->a(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;)Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;->c(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0
.end method
