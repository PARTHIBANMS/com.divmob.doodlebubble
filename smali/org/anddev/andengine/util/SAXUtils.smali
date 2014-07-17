.class public Lorg/anddev/andengine/util/SAXUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;B)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;D)V
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;F)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x22

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;S)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public static getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No value found for attribute: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :cond_0
    return p2
.end method

.method public static getBooleanAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lorg/anddev/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getByteAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;B)B
    .locals 1

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p2

    :cond_0
    return p2
.end method

.method public static getByteAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)B
    .locals 1

    invoke-static {p0, p1}, Lorg/anddev/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public static getDoubleAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;D)D
    .locals 1

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public static getDoubleAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)D
    .locals 2

    invoke-static {p0, p1}, Lorg/anddev/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFloatAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;F)F
    .locals 1

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    :cond_0
    return p2
.end method

.method public static getFloatAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)F
    .locals 1

    invoke-static {p0, p1}, Lorg/anddev/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I
    .locals 1

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :cond_0
    return p2
.end method

.method public static getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lorg/anddev/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLongAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;J)J
    .locals 1

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public static getLongAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)J
    .locals 2

    invoke-static {p0, p1}, Lorg/anddev/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getShortAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;S)S
    .locals 1

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p2

    :cond_0
    return p2
.end method

.method public static getShortAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)S
    .locals 1

    invoke-static {p0, p1}, Lorg/anddev/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method
