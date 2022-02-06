TRIGGER 1

Trigger para comprobar que una sala no puede tener un número de personas mayor que su capacidad.

CREATE OR REPLACE FUNCTION comprobar_aforo_sala() RETURNS TRIGGER AS $comprobar_aforo_sala$
   BEGIN
      IF (SELECT COUNT(DISTINCT DNI) FROM SALA > Capacidad)  THEN
        RAISE EXCEPTION 'No se puede añadir el cliente a la actividad porque la sala no tiene más capacidad ';
      END IF;
      RETURN NEW;
   END;
$comprobar_numero_generos$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_comprobar_aforo_sala_before_insert BEFORE INSERT ON ACTIVIDAD_HAS_CLIENTE
FOR EACH ROW EXECUTE PROCEDURE comprobar_aforo_sala();

CREATE TRIGGER trigger_comprobar_aforo_sala_before_insert BEFORE UPDATE ON SERIE_PERTENECE_GENERO
FOR EACH ROW EXECUTE PROCEDURE comprobar_aforo_sala();

TRIGGER 2

Trigger para comprobar que una persona no puede ser cliente y staff a la vez

CREATE OR REPLACE FUNCTION comprobar_cliente_staff() RETURNS TRIGGER AS $comprobar_cliente_staff$
   BEGIN
       IF (SELECT DNI FROM CLIENTE  IN (SELECT DNI FROM STAFF)  THEN
        RAISE EXCEPTION 'No puede ser un cliente, ya que esa persona forma parte del staff';
      END IF;
      RETURN NEW;
   END;
$comprobar_cliente_staff$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_comprobar_cliente_staff_before_insert BEFORE INSERT ON CLIENTE
FOR EACH ROW EXECUTE PROCEDURE comprobar_cliente_staff();

CREATE TRIGGER trigger_comprobar_cliente_staff_before_insert BEFORE UPDATE ON CLIENTE FOR EACH ROW EXECUTE PROCEDURE comprobar_cliente_staff();

TRIGGER 3

Trigger para comprobar que una persona no puede ser cliente y staff a la vez
/* Create function 'comprobar_staff_cliente' */

CREATE OR REPLACE FUNCTION comprobar_staff_cliente() RETURNS TRIGGER AS $comprobar_staff_cliente$
   BEGIN
       IF (SELECT DNI FROM STAFF IN (SELECT DNI FROM CLIENTE)  THEN
        RAISE EXCEPTION 'No puede ser un staff, ya que esa persona es un cliente ';
      END IF;
      RETURN NEW;
   END;
$comprobar_staff_cliente $ LANGUAGE plpgsql;

CREATE TRIGGER trigger_comprobar_staff_cliente_before_insert BEFORE INSERT ON STAFF
FOR EACH ROW EXECUTE PROCEDURE comprobar_staff_cliente();

CREATE TRIGGER trigger_comprobar_staff_cliente_before_insert BEFORE UPDATE ON STAFF FOR EACH ROW EXECUTE PROCEDURE comprobar_staff_cliente();

TRIGGER 4

Trigger para comprobar que un monitor no puede inscribirse en la actividad que imparte

CREATE OR REPLACE FUNCTION comprobar_monitor_actividad() RETURNS TRIGGER AS $comprobar_monitor_actividad$
   BEGIN
       IF (SELECT DNI FROM ACTIVIDAD_HAS_CLIENTE IN (SELECT DNI FROM ACTIVIDAD_HAS_MONITOR)  THEN
        RAISE EXCEPTION 'No puede participar en la actividad ya que la imparte ';
      END IF;
      RETURN NEW;
   END;
$comprobar_monitor_actividad $ LANGUAGE plpgsql;

CREATE TRIGGER trigger_comprobar_monitor_actividad_before_insert BEFORE INSERT ON STAFF
FOR EACH ROW EXECUTE PROCEDURE comprobar_monitor_actividad();

CREATE TRIGGER trigger_comprobar_monitor_actividad_before_insert BEFORE UPDATE ON STAFF FOR EACH ROW EXECUTE PROCEDURE comprobar_monitor_actividad();



TRIGGER 5

Trigger para comprobar que un torneo tiene mínimo dos participantes para que se realice.

CREATE OR REPLACE FUNCTION comprobar_participantes_torneo() RETURNS TRIGGER AS $comprobar_participantes_torneo$
   BEGIN
      IF (SELECT COUNT(DISTINCT DNI) FROM TORNEO < 2)  THEN
        RAISE EXCEPTION 'No se puede celebrar el torneo porque hay menos de dos personas ';
      END IF;
      RETURN NEW;
   END;
$comprobar_participantes_torneo$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_comprobar_participantes_torneo_before_insert BEFORE INSERT ON TORNEO_HAS_PERSONA
FOR EACH ROW EXECUTE PROCEDURE comprobar_aforo_sala();

CREATE TRIGGER trigger_comprobar_participantes_torneo_before_insert BEFORE UPDATE ON TORNEO_HAS_PERSONA
FOR EACH ROW EXECUTE PROCEDURE comprobar_aforo_sala();
