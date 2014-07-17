.class public Lorg/anddev/andengine/level/LevelParser;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lorg/anddev/andengine/level/util/constants/LevelConstants;


# instance fields
.field private final mDefaultEntityLoader:Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

.field private final mEntityLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/level/LevelParser;->mDefaultEntityLoader:Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

    iput-object p2, p0, Lorg/anddev/andengine/level/LevelParser;->mEntityLoaders:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/level/LevelParser;->mEntityLoaders:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p4}, Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;->onLoadEntity(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/level/LevelParser;->mDefaultEntityLoader:Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/level/LevelParser;->mDefaultEntityLoader:Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

    invoke-interface {v0, p2, p4}, Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;->onLoadEntity(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected tag: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
